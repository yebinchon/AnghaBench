
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slim_val_inf {int num_bytes; int start_offset; int * wbuf; int * rbuf; } ;
struct slim_controller {int dev; } ;


 int EINVAL ;






 int dev_err (int ,char*,int,int) ;

__attribute__((used)) static int slim_val_inf_sanity(struct slim_controller *ctrl,
          struct slim_val_inf *msg, u8 mc)
{
 if (!msg || msg->num_bytes > 16 ||
     (msg->start_offset + msg->num_bytes) > 0xC00)
  goto reterr;
 switch (mc) {
 case 128:
 case 129:
  if (msg->rbuf != ((void*)0))
   return 0;
  break;

 case 133:
 case 132:
  if (msg->wbuf != ((void*)0))
   return 0;
  break;

 case 131:
 case 130:
  if (msg->rbuf != ((void*)0) && msg->wbuf != ((void*)0))
   return 0;
  break;
 }
reterr:
 if (msg)
  dev_err(ctrl->dev, "Sanity check failed:msg:offset:0x%x, mc:%d\n",
   msg->start_offset, mc);
 return -EINVAL;
}
