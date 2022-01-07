
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct qla_hw_data {scalar_t__ nx_pcibase; } ;


 scalar_t__ CRB_INDIRECT_2M ;
 scalar_t__ CRB_WINDOW_2M ;
 int RD_REG_DWORD (scalar_t__) ;
 int WRT_REG_DWORD (scalar_t__,int) ;

__attribute__((used)) static int
qla82xx_md_rw_32(struct qla_hw_data *ha, uint32_t off, u32 data, uint8_t flag)
{
 uint32_t off_value, rval = 0;

 WRT_REG_DWORD(CRB_WINDOW_2M + ha->nx_pcibase, off & 0xFFFF0000);


 RD_REG_DWORD(CRB_WINDOW_2M + ha->nx_pcibase);
 off_value = (off & 0x0000FFFF);

 if (flag)
  WRT_REG_DWORD(off_value + CRB_INDIRECT_2M + ha->nx_pcibase,
         data);
 else
  rval = RD_REG_DWORD(off_value + CRB_INDIRECT_2M +
        ha->nx_pcibase);

 return rval;
}
