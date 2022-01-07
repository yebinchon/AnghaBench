
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int CNA_ETS ;
 int NIC_ETS ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_get_ets_regs(struct ql_adapter *qdev, u32 *buf)
{
 int status = 0;
 int i;

 for (i = 0; i < 8; i++, buf++) {
  ql_write32(qdev, NIC_ETS, i << 29 | 0x08000000);
  *buf = ql_read32(qdev, NIC_ETS);
 }

 for (i = 0; i < 2; i++, buf++) {
  ql_write32(qdev, CNA_ETS, i << 29 | 0x08000000);
  *buf = ql_read32(qdev, CNA_ETS);
 }

 return status;
}
