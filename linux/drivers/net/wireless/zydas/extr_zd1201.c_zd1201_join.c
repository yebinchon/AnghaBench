
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd1201 {TYPE_1__* dev; int ap; } ;
typedef int __le16 ;
struct TYPE_2__ {char* dev_addr; int addr_len; } ;


 int IW_ESSID_MAX_SIZE ;
 int ZD1201_CNFAUTHENTICATION_OPENSYSTEM ;
 int ZD1201_CNFAUTHENTICATION_SHAREDKEY ;
 int ZD1201_RID_CNFAUTHENTICATION ;
 int ZD1201_RID_CNFDESIREDSSID ;
 int ZD1201_RID_CNFOWNMACADDR ;
 int ZD1201_RID_CNFOWNSSID ;
 int cpu_to_le16 (int) ;
 int memcpy (char*,char*,int) ;
 int msleep (int) ;
 int zd1201_disable (struct zd1201*) ;
 int zd1201_enable (struct zd1201*) ;
 int zd1201_setconfig (struct zd1201*,int ,char*,int,int) ;
 int zd1201_setconfig16 (struct zd1201*,int ,int) ;

__attribute__((used)) static int zd1201_join(struct zd1201 *zd, char *essid, int essidlen)
{
 int err, val;
 char buf[IW_ESSID_MAX_SIZE+2];

 err = zd1201_disable(zd);
 if (err)
  return err;

 val = ZD1201_CNFAUTHENTICATION_OPENSYSTEM;
 val |= ZD1201_CNFAUTHENTICATION_SHAREDKEY;
 err = zd1201_setconfig16(zd, ZD1201_RID_CNFAUTHENTICATION, val);
 if (err)
  return err;

 *(__le16 *)buf = cpu_to_le16(essidlen);
 memcpy(buf+2, essid, essidlen);
 if (!zd->ap) {
  err = zd1201_setconfig(zd, ZD1201_RID_CNFDESIREDSSID, buf,
      IW_ESSID_MAX_SIZE+2, 1);
  if (err)
   return err;
 } else {
  err = zd1201_setconfig(zd, ZD1201_RID_CNFOWNSSID, buf,
      IW_ESSID_MAX_SIZE+2, 1);
  if (err)
   return err;
 }

 err = zd1201_setconfig(zd, ZD1201_RID_CNFOWNMACADDR,
     zd->dev->dev_addr, zd->dev->addr_len, 1);
 if (err)
  return err;

 err = zd1201_enable(zd);
 if (err)
  return err;

 msleep(100);
 return 0;
}
