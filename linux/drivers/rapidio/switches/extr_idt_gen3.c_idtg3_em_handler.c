
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rio_dev {int dummy; } ;


 int RIO_DEV_PORT_N_ERR_STS_CSR (struct rio_dev*,int ) ;
 int RIO_PLM_SPx_IMP_SPEC_CTL (int ) ;
 int RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST ;
 int RIO_PORT_N_ERR_STS_INP_ES ;
 int RIO_PORT_N_ERR_STS_OUT_ES ;
 int RIO_PORT_N_ERR_STS_PORT_UNINIT ;
 int msleep (int) ;
 int rio_read_config_32 (struct rio_dev*,int ,int*) ;
 int rio_write_config_32 (struct rio_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
idtg3_em_handler(struct rio_dev *rdev, u8 pnum)
{
 u32 err_status;
 u32 rval;

 rio_read_config_32(rdev,
   RIO_DEV_PORT_N_ERR_STS_CSR(rdev, pnum),
   &err_status);


 if (err_status & RIO_PORT_N_ERR_STS_PORT_UNINIT)
  return 0;





 if (err_status & (RIO_PORT_N_ERR_STS_OUT_ES |
    RIO_PORT_N_ERR_STS_INP_ES)) {
  rio_read_config_32(rdev, RIO_PLM_SPx_IMP_SPEC_CTL(pnum), &rval);
  rio_write_config_32(rdev, RIO_PLM_SPx_IMP_SPEC_CTL(pnum),
        rval | RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST);
  udelay(10);
  rio_write_config_32(rdev, RIO_PLM_SPx_IMP_SPEC_CTL(pnum), rval);
  msleep(500);
 }

 return 0;
}
