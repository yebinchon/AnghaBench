
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int XGMAC_ADDR ;
 int XGMAC_ADDR_R ;
 int XGMAC_ADDR_RDY ;
 int XGMAC_ADDR_XME ;
 int XGMAC_DATA ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

int ql_read_xgmac_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
{
 int status = 0;

 status = ql_wait_reg_rdy(qdev,
   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 if (status)
  goto exit;

 ql_write32(qdev, XGMAC_ADDR, reg | XGMAC_ADDR_R);

 status = ql_wait_reg_rdy(qdev,
   XGMAC_ADDR, XGMAC_ADDR_RDY, XGMAC_ADDR_XME);
 if (status)
  goto exit;

 *data = ql_read32(qdev, XGMAC_DATA);
exit:
 return status;
}
