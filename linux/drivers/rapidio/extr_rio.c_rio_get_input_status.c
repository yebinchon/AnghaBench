
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_dev {int dummy; } ;


 int EIO ;
 int RIO_DEV_PORT_N_MNT_REQ_CSR (struct rio_dev*,int) ;
 int RIO_DEV_PORT_N_MNT_RSP_CSR (struct rio_dev*,int) ;
 int RIO_MNT_REQ_CMD_IS ;
 int RIO_PORT_N_MNT_RSP_RVAL ;
 int rio_read_config_32 (struct rio_dev*,int ,int*) ;
 int rio_write_config_32 (struct rio_dev*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
rio_get_input_status(struct rio_dev *rdev, int pnum, u32 *lnkresp)
{
 u32 regval;
 int checkcount;

 if (lnkresp) {


  rio_read_config_32(rdev,
   RIO_DEV_PORT_N_MNT_RSP_CSR(rdev, pnum),
   &regval);
  udelay(50);
 }


 rio_write_config_32(rdev,
  RIO_DEV_PORT_N_MNT_REQ_CSR(rdev, pnum),
  RIO_MNT_REQ_CMD_IS);


 if (!lnkresp)
  return 0;

 checkcount = 3;
 while (checkcount--) {
  udelay(50);
  rio_read_config_32(rdev,
   RIO_DEV_PORT_N_MNT_RSP_CSR(rdev, pnum),
   &regval);
  if (regval & RIO_PORT_N_MNT_RSP_RVAL) {
   *lnkresp = regval;
   return 0;
  }
 }

 return -EIO;
}
