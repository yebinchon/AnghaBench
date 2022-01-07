
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int XGMAC_ADDR ;
 int XGMAC_ADDR_RDY ;
 int XGMAC_ADDR_XME ;
 int XGMAC_DATA ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

__attribute__((used)) static int ql_write_xgmac_reg(struct ql_adapter *qdev, u32 reg, u32 data)
{
 int status;

 status = ql_wait_reg_rdy(qdev,
   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 if (status)
  return status;

 ql_write32(qdev, XGMAC_DATA, data);

 ql_write32(qdev, XGMAC_ADDR, reg);
 return status;
}
