
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usblp {char* device_id_string; int minor; TYPE_1__* intf; } ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int USBLP_DEVICE_ID_SIZE ;
 int be16_to_cpu (int ) ;
 int dev_dbg (int *,char*,int ,int,...) ;
 int usblp_get_id (struct usblp*,int ,char*,int) ;

__attribute__((used)) static int usblp_cache_device_id_string(struct usblp *usblp)
{
 int err, length;

 err = usblp_get_id(usblp, 0, usblp->device_id_string, USBLP_DEVICE_ID_SIZE - 1);
 if (err < 0) {
  dev_dbg(&usblp->intf->dev,
   "usblp%d: error = %d reading IEEE-1284 Device ID string\n",
   usblp->minor, err);
  usblp->device_id_string[0] = usblp->device_id_string[1] = '\0';
  return -EIO;
 }




 length = be16_to_cpu(*((__be16 *)usblp->device_id_string));
 if (length < 2)
  length = 2;
 else if (length >= USBLP_DEVICE_ID_SIZE)
  length = USBLP_DEVICE_ID_SIZE - 1;
 usblp->device_id_string[length] = '\0';

 dev_dbg(&usblp->intf->dev, "usblp%d Device ID string [len=%d]=\"%s\"\n",
  usblp->minor, length, &usblp->device_id_string[2]);

 return length;
}
