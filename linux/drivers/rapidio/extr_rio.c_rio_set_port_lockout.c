
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_dev {int dummy; } ;


 int RIO_DEV_PORT_N_CTL_CSR (struct rio_dev*,int ) ;
 int RIO_PORT_N_CTL_LOCKOUT ;
 int rio_read_config_32 (struct rio_dev*,int ,int *) ;
 int rio_write_config_32 (struct rio_dev*,int ,int ) ;

int rio_set_port_lockout(struct rio_dev *rdev, u32 pnum, int lock)
{
 u32 regval;

 rio_read_config_32(rdev,
  RIO_DEV_PORT_N_CTL_CSR(rdev, pnum),
  &regval);
 if (lock)
  regval |= RIO_PORT_N_CTL_LOCKOUT;
 else
  regval &= ~RIO_PORT_N_CTL_LOCKOUT;

 rio_write_config_32(rdev,
  RIO_DEV_PORT_N_CTL_CSR(rdev, pnum),
  regval);
 return 0;
}
