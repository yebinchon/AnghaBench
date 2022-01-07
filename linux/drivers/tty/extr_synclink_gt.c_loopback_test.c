
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct tty_struct {int dummy; } ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct TYPE_6__ {int data_rate; int loopback; int mode; } ;
struct slgt_info {int tmp_rbuf_count; int init_error; TYPE_1__ port; TYPE_2__ params; int lock; int tmp_rbuf; } ;
typedef int params ;
typedef TYPE_2__ MGSL_PARAMS ;


 int DiagStatus_DmaFailure ;
 int ENODEV ;
 int MGSL_MODE_ASYNC ;
 int TESTFRAMESIZE ;
 int async_mode (struct slgt_info*) ;
 scalar_t__ loopback_test_rx (struct slgt_info*) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (int ,int ,int) ;
 int msleep_interruptible (int) ;
 int reset_adapter (struct slgt_info*) ;
 int rx_start (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_load (struct slgt_info*,unsigned char*,int) ;

__attribute__((used)) static int loopback_test(struct slgt_info *info)
{


 unsigned long timeout;
 u16 count = 20;
 unsigned char buf[20];
 int rc = -ENODEV;
 unsigned long flags;

 struct tty_struct *oldtty = info->port.tty;
 MGSL_PARAMS params;

 memcpy(&params, &info->params, sizeof(params));

 info->params.mode = MGSL_MODE_ASYNC;
 info->params.data_rate = 921600;
 info->params.loopback = 1;
 info->port.tty = ((void*)0);


 for (count = 0; count < 20; ++count)
  buf[count] = (unsigned char)count;

 info->tmp_rbuf_count = 0;
 memset(info->tmp_rbuf, 0, 20);


 spin_lock_irqsave(&info->lock,flags);
 async_mode(info);
 rx_start(info);
 tx_load(info, buf, count);
 spin_unlock_irqrestore(&info->lock, flags);


 for (timeout = 100; timeout; --timeout) {
  msleep_interruptible(10);
  if (loopback_test_rx(info)) {
   rc = 0;
   break;
  }
 }


 if (!rc && (info->tmp_rbuf_count != count ||
    memcmp(buf, info->tmp_rbuf, count))) {
  rc = -ENODEV;
 }

 spin_lock_irqsave(&info->lock,flags);
 reset_adapter(info);
 spin_unlock_irqrestore(&info->lock,flags);

 memcpy(&info->params, &params, sizeof(info->params));
 info->port.tty = oldtty;

 info->init_error = rc ? DiagStatus_DmaFailure : 0;
 return rc;
}
