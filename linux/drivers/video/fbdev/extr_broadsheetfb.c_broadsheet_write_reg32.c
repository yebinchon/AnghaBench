
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_write_reg (struct broadsheetfb_par*,scalar_t__,int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void broadsheet_write_reg32(struct broadsheetfb_par *par, u16 reg,
     u32 data)
{
 broadsheet_write_reg(par, reg, cpu_to_le32(data) & 0xFFFF);
 broadsheet_write_reg(par, reg + 2, (cpu_to_le32(data) >> 16) & 0xFFFF);
}
