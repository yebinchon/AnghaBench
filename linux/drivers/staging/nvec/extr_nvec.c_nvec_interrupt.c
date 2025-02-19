
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct nvec_chip {unsigned int state; unsigned int i2c_addr; int dev; scalar_t__ base; TYPE_2__* rx; TYPE_1__* tx; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {unsigned int* data; int pos; } ;
struct TYPE_4__ {unsigned char* data; int pos; int size; } ;


 unsigned long END_TRANS ;
 unsigned long I2C_SL_IRQ ;
 scalar_t__ I2C_SL_RCVD ;
 scalar_t__ I2C_SL_STATUS ;
 int IRQ_HANDLED ;
 int NVEC_MSG_RX ;
 int NVEC_MSG_SIZE ;
 unsigned long RCVD ;
 unsigned long RNW ;
 int dev_dbg (int ,char*,char*,unsigned int,char*,unsigned char,unsigned int,char*,char*,char*) ;
 int dev_err (int ,char*,...) ;
 int nvec_gpio_set_value (struct nvec_chip*,int) ;
 int nvec_invalid_flags (struct nvec_chip*,unsigned long,int) ;
 TYPE_2__* nvec_msg_alloc (struct nvec_chip*,int ) ;
 int nvec_msg_free (struct nvec_chip*,TYPE_2__*) ;
 int nvec_rx_completed (struct nvec_chip*) ;
 int nvec_tx_completed (struct nvec_chip*) ;
 int nvec_tx_set (struct nvec_chip*) ;
 void* readl (scalar_t__) ;
 int udelay (int) ;
 int unlikely (int) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static irqreturn_t nvec_interrupt(int irq, void *dev)
{
 unsigned long status;
 unsigned int received = 0;
 unsigned char to_send = 0xff;
 const unsigned long irq_mask = I2C_SL_IRQ | END_TRANS | RCVD | RNW;
 struct nvec_chip *nvec = dev;
 unsigned int state = nvec->state;

 status = readl(nvec->base + I2C_SL_STATUS);


 if ((status & irq_mask) == 0 && (status & ~irq_mask) != 0) {
  dev_err(nvec->dev, "unexpected irq mask %lx\n", status);
  return IRQ_HANDLED;
 }
 if ((status & I2C_SL_IRQ) == 0) {
  dev_err(nvec->dev, "Spurious IRQ\n");
  return IRQ_HANDLED;
 }


 if ((status & RNW) == 0) {
  received = readl(nvec->base + I2C_SL_RCVD);
  if (status & RCVD)
   writel(0, nvec->base + I2C_SL_RCVD);
 }

 if (status == (I2C_SL_IRQ | RCVD))
  nvec->state = 0;

 switch (nvec->state) {
 case 0:
  if (status != (I2C_SL_IRQ | RCVD))
   nvec_invalid_flags(nvec, status, 0);
  break;
 case 1:
  if (status != I2C_SL_IRQ) {
   nvec_invalid_flags(nvec, status, 1);
  } else {
   nvec->rx = nvec_msg_alloc(nvec, NVEC_MSG_RX);

   if (unlikely(!nvec->rx)) {
    nvec->state = 0;
    break;
   }
   nvec->rx->data[0] = received;
   nvec->rx->pos = 1;
   nvec->state = 2;
  }
  break;
 case 2:
  if (status == (I2C_SL_IRQ | RNW | RCVD)) {
   udelay(33);
   if (nvec->rx->data[0] != 0x01) {
    dev_err(nvec->dev,
     "Read without prior read command\n");
    nvec->state = 0;
    break;
   }
   nvec_msg_free(nvec, nvec->rx);
   nvec->state = 3;
   nvec_tx_set(nvec);
   to_send = nvec->tx->data[0];
   nvec->tx->pos = 1;
  } else if (status == (I2C_SL_IRQ)) {
   nvec->rx->data[1] = received;
   nvec->rx->pos = 2;
   nvec->state = 4;
  } else {
   nvec_invalid_flags(nvec, status, 1);
  }
  break;
 case 3:
  if (status & END_TRANS) {
   nvec_tx_completed(nvec);
  } else if ((status & RNW) == 0 || (status & RCVD)) {
   nvec_invalid_flags(nvec, status, 1);
  } else if (nvec->tx && nvec->tx->pos < nvec->tx->size) {
   to_send = nvec->tx->data[nvec->tx->pos++];
  } else {
   dev_err(nvec->dev,
    "tx buffer underflow on %p (%u > %u)\n",
    nvec->tx,
    (uint)(nvec->tx ? nvec->tx->pos : 0),
    (uint)(nvec->tx ? nvec->tx->size : 0));
   nvec->state = 0;
  }
  break;
 case 4:
  if ((status & (END_TRANS | RNW)) == END_TRANS)
   nvec_rx_completed(nvec);
  else if (status & (RNW | RCVD))
   nvec_invalid_flags(nvec, status, 1);
  else if (nvec->rx && nvec->rx->pos < NVEC_MSG_SIZE)
   nvec->rx->data[nvec->rx->pos++] = received;
  else
   dev_err(nvec->dev,
    "RX buffer overflow on %p: Trying to write byte %u of %u\n",
    nvec->rx, nvec->rx ? nvec->rx->pos : 0,
    NVEC_MSG_SIZE);
  break;
 default:
  nvec->state = 0;
 }


 if ((status & (RCVD | RNW)) == RCVD) {
  if (received != nvec->i2c_addr)
   dev_err(nvec->dev,
    "received address 0x%02x, expected 0x%02x\n",
    received, nvec->i2c_addr);
  nvec->state = 1;
 }


 if ((status & (RNW | END_TRANS)) == RNW)
  writel(to_send, nvec->base + I2C_SL_RCVD);


 if (status == (I2C_SL_IRQ | RNW | RCVD))
  nvec_gpio_set_value(nvec, 1);

 dev_dbg(nvec->dev,
  "Handled: %s 0x%02x, %s 0x%02x in state %u [%s%s%s]\n",
  (status & RNW) == 0 ? "received" : "R=",
  received,
  (status & (RNW | END_TRANS)) ? "sent" : "S=",
  to_send,
  state,
  status & END_TRANS ? " END_TRANS" : "",
  status & RCVD ? " RCVD" : "",
  status & RNW ? " RNW" : "");







 udelay(100);

 return IRQ_HANDLED;
}
