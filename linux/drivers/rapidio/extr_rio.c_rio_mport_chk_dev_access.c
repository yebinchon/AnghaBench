
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int EIO ;
 int RIO_DEV_ID_CAR ;
 int RIO_MAX_CHK_RETRY ;
 int mdelay (int) ;
 scalar_t__ rio_mport_read_config_32 (struct rio_mport*,int ,int ,int ,int *) ;

int
rio_mport_chk_dev_access(struct rio_mport *mport, u16 destid, u8 hopcount)
{
 int i = 0;
 u32 tmp;

 while (rio_mport_read_config_32(mport, destid, hopcount,
     RIO_DEV_ID_CAR, &tmp)) {
  i++;
  if (i == RIO_MAX_CHK_RETRY)
   return -EIO;
  mdelay(1);
 }

 return 0;
}
