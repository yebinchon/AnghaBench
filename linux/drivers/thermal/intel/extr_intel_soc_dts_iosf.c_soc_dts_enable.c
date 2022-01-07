
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int BT_MBI_UNIT_PMC ;
 int MBI_REG_READ ;
 int MBI_REG_WRITE ;
 int SOC_DTS_OFFSET_ENABLE ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int iosf_mbi_write (int ,int ,int ,int) ;

__attribute__((used)) static int soc_dts_enable(int id)
{
 u32 out;
 int ret;

 ret = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
       SOC_DTS_OFFSET_ENABLE, &out);
 if (ret)
  return ret;

 if (!(out & BIT(id))) {
  out |= BIT(id);
  ret = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
         SOC_DTS_OFFSET_ENABLE, out);
  if (ret)
   return ret;
 }

 return ret;
}
