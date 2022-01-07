
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {scalar_t__ iobase; } ;
struct tb {int dummy; } ;
struct icm {int (* cio_reset ) (struct tb*) ;int upstream_port; } ;


 int ENODEV ;
 scalar_t__ REG_FW_STS ;
 int REG_FW_STS_CIO_RESET_REQ ;
 int REG_FW_STS_ICM_EN_CPU ;
 int REG_FW_STS_ICM_EN_INVERT ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int stub1 (struct tb*) ;
 struct icm* tb_priv (struct tb*) ;

__attribute__((used)) static int icm_firmware_reset(struct tb *tb, struct tb_nhi *nhi)
{
 struct icm *icm = tb_priv(tb);
 u32 val;

 if (!icm->upstream_port)
  return -ENODEV;


 val = ioread32(nhi->iobase + REG_FW_STS);
 val |= REG_FW_STS_CIO_RESET_REQ;
 iowrite32(val, nhi->iobase + REG_FW_STS);


 val = ioread32(nhi->iobase + REG_FW_STS);
 val |= REG_FW_STS_ICM_EN_INVERT;
 val |= REG_FW_STS_ICM_EN_CPU;
 iowrite32(val, nhi->iobase + REG_FW_STS);


 return icm->cio_reset(tb);
}
