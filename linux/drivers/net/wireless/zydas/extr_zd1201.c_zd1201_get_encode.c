
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int * encode_keys; int * encode_keylen; scalar_t__ encode_restricted; scalar_t__ encode_enabled; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int EINVAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 short ZD1201_NUMKEYS ;
 int ZD1201_RID_CNFDEFAULTKEYID ;
 int memcpy (char*,int ,int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig16 (struct zd1201*,int ,short*) ;

__attribute__((used)) static int zd1201_get_encode(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *erq, char *key)
{
 struct zd1201 *zd = netdev_priv(dev);
 short i;
 int err;

 if (zd->encode_enabled)
  erq->flags = IW_ENCODE_ENABLED;
 else
  erq->flags = IW_ENCODE_DISABLED;
 if (zd->encode_restricted)
  erq->flags |= IW_ENCODE_RESTRICTED;
 else
  erq->flags |= IW_ENCODE_OPEN;

 i = (erq->flags & IW_ENCODE_INDEX) -1;
 if (i == -1) {
  err = zd1201_getconfig16(zd, ZD1201_RID_CNFDEFAULTKEYID, &i);
  if (err)
   return err;
 }
 if (i<0 || i>= ZD1201_NUMKEYS)
  return -EINVAL;

 erq->flags |= i+1;

 erq->length = zd->encode_keylen[i];
 memcpy(key, zd->encode_keys[i], erq->length);

 return 0;
}
