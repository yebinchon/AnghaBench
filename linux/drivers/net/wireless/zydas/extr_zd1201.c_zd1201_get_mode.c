
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd1201 {scalar_t__ monitor; TYPE_1__* usb; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int dev; } ;


 int IW_MODE_ADHOC ;
 int IW_MODE_AUTO ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int IW_MODE_MONITOR ;
 int IW_MODE_REPEAT ;





 int ZD1201_RID_CNFPORTTYPE ;
 int dev_dbg (int *,char*,short) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig16 (struct zd1201*,int ,short*) ;

__attribute__((used)) static int zd1201_get_mode(struct net_device *dev,
    struct iw_request_info *info, __u32 *mode, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short porttype;
 int err;

 err = zd1201_getconfig16(zd, ZD1201_RID_CNFPORTTYPE, &porttype);
 if (err)
  return err;
 switch(porttype) {
  case 130:
   *mode = IW_MODE_ADHOC;
   break;
  case 131:
   *mode = IW_MODE_INFRA;
   break;
  case 128:
   *mode = IW_MODE_REPEAT;
   break;
  case 129:
   *mode = 8;
   break;
  case 132:
   *mode = IW_MODE_MASTER;
   break;
  default:
   dev_dbg(&zd->usb->dev, "Unknown porttype: %d\n",
       porttype);
   *mode = IW_MODE_AUTO;
 }
 if (zd->monitor)
  *mode = IW_MODE_MONITOR;

 return 0;
}
