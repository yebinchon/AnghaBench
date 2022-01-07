
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmid ;
struct hvc_iucv_private {scalar_t__ iucv_state; int lock; scalar_t__ info_path; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int ipuser ;


 int EBCASC (char*,int) ;
 scalar_t__ IUCV_CONNECTED ;
 struct hvc_iucv_private* dev_get_drvdata (struct device*) ;
 int memcpy (char*,scalar_t__,int) ;
 int memset (char*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t hvc_iucv_dev_peer_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct hvc_iucv_private *priv = dev_get_drvdata(dev);
 char vmid[9], ipuser[9];

 memset(vmid, 0, sizeof(vmid));
 memset(ipuser, 0, sizeof(ipuser));

 spin_lock_bh(&priv->lock);
 if (priv->iucv_state == IUCV_CONNECTED) {
  memcpy(vmid, priv->info_path, 8);
  memcpy(ipuser, priv->info_path + 8, 8);
 }
 spin_unlock_bh(&priv->lock);
 EBCASC(ipuser, 8);

 return sprintf(buf, "%s:%s\n", vmid, ipuser);
}
