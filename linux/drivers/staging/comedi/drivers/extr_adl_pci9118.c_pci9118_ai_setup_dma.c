
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci9118_private {unsigned int ai_n_realscanlen; int ai_flags; scalar_t__ iobase_a; scalar_t__ dma_actbuf; int ai_neverending; struct pci9118_dmabuf* dmabuf; } ;
struct pci9118_dmabuf {unsigned int size; unsigned int use_size; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct pci9118_private* private; } ;
struct comedi_cmd {unsigned long long stop_arg; } ;
struct TYPE_2__ {unsigned int prealloc_bufsz; struct comedi_cmd cmd; } ;


 int AINT_WRITE_COMPL ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 int CMDF_WAKE_EOS ;
 int EN_A2P_TRANSFERS ;
 unsigned int comedi_bytes_per_sample (struct comedi_subdevice*) ;
 int dev_info (int ,char*,unsigned int,...) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci9118_amcc_dma_ena (struct comedi_device*,int) ;
 int pci9118_amcc_setup_dma (struct comedi_device*,int ) ;

__attribute__((used)) static int pci9118_ai_setup_dma(struct comedi_device *dev,
    struct comedi_subdevice *s)
{
 struct pci9118_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 struct pci9118_dmabuf *dmabuf0 = &devpriv->dmabuf[0];
 struct pci9118_dmabuf *dmabuf1 = &devpriv->dmabuf[1];
 unsigned int dmalen0 = dmabuf0->size;
 unsigned int dmalen1 = dmabuf1->size;
 unsigned int scan_bytes = devpriv->ai_n_realscanlen *
      comedi_bytes_per_sample(s);


 if (dmalen0 > s->async->prealloc_bufsz) {

  dmalen0 = s->async->prealloc_bufsz & ~3L;
 }
 if (dmalen1 > s->async->prealloc_bufsz) {

  dmalen1 = s->async->prealloc_bufsz & ~3L;
 }


 if (devpriv->ai_flags & CMDF_WAKE_EOS) {
  if (dmalen0 < scan_bytes) {

   devpriv->ai_flags &= (~CMDF_WAKE_EOS);
   dev_info(dev->class_dev,
     "WAR: DMA0 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\n",
      dmalen0, scan_bytes);
  } else {

   dmalen0 = scan_bytes;
   if (dmalen0 < 4) {
    dev_info(dev->class_dev,
      "ERR: DMA0 buf len bug? (%d<4)\n",
      dmalen0);
    dmalen0 = 4;
   }
  }
 }
 if (devpriv->ai_flags & CMDF_WAKE_EOS) {
  if (dmalen1 < scan_bytes) {

   devpriv->ai_flags &= (~CMDF_WAKE_EOS);
   dev_info(dev->class_dev,
     "WAR: DMA1 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\n",
     dmalen1, scan_bytes);
  } else {

   dmalen1 = scan_bytes;
   if (dmalen1 < 4) {
    dev_info(dev->class_dev,
      "ERR: DMA1 buf len bug? (%d<4)\n",
      dmalen1);
    dmalen1 = 4;
   }
  }
 }


 if (!(devpriv->ai_flags & CMDF_WAKE_EOS)) {
  unsigned int tmp;


  tmp = dmalen0;
  dmalen0 = (dmalen0 / scan_bytes) * scan_bytes;
  dmalen0 &= ~3L;
  if (!dmalen0)
   dmalen0 = tmp;
  tmp = dmalen1;
  dmalen1 = (dmalen1 / scan_bytes) * scan_bytes;
  dmalen1 &= ~3L;
  if (!dmalen1)
   dmalen1 = tmp;




  if (!devpriv->ai_neverending) {
   unsigned long long scanlen;

   scanlen = (unsigned long long)scan_bytes *
      cmd->stop_arg;


   if (dmalen0 > scanlen) {
    dmalen0 = scanlen;
    dmalen0 &= ~3L;
   } else {

    if (dmalen1 > (scanlen - dmalen0)) {
     dmalen1 = scanlen - dmalen0;
     dmalen1 &= ~3L;
    }
   }
  }
 }


 devpriv->dma_actbuf = 0;
 dmabuf0->use_size = dmalen0;
 dmabuf1->use_size = dmalen1;

 pci9118_amcc_dma_ena(dev, 0);
 pci9118_amcc_setup_dma(dev, 0);

 outl(0x00000000 | AINT_WRITE_COMPL,
      devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 pci9118_amcc_dma_ena(dev, 1);
 outl(inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR) | EN_A2P_TRANSFERS,
      devpriv->iobase_a + AMCC_OP_REG_INTCSR);


 return 0;
}
