
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int PROC_ADDR_R ;
 int XG_SERDES_ADDR ;
 int XG_SERDES_ADDR_RDY ;
 int XG_SERDES_DATA ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
{
 int status;


 status = ql_wait_reg_rdy(qdev, XG_SERDES_ADDR, XG_SERDES_ADDR_RDY, 0);
 if (status)
  goto exit;


 ql_write32(qdev, XG_SERDES_ADDR, reg | PROC_ADDR_R);


 status = ql_wait_reg_rdy(qdev, XG_SERDES_ADDR, XG_SERDES_ADDR_RDY, 0);
 if (status)
  goto exit;


 *data = ql_read32(qdev, XG_SERDES_DATA);
exit:
 return status;
}
