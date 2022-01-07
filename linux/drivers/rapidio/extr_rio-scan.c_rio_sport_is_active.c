
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_dev {int dummy; } ;


 int RIO_DEV_PORT_N_ERR_STS_CSR (struct rio_dev*,int) ;
 int RIO_PORT_N_ERR_STS_PORT_OK ;
 int rio_read_config_32 (struct rio_dev*,int ,int*) ;

__attribute__((used)) static int
rio_sport_is_active(struct rio_dev *rdev, int sp)
{
 u32 result = 0;

 rio_read_config_32(rdev, RIO_DEV_PORT_N_ERR_STS_CSR(rdev, sp),
      &result);

 return result & RIO_PORT_N_ERR_STS_PORT_OK;
}
