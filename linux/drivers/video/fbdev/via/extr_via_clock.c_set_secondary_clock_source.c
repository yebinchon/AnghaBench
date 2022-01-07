
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum via_clksrc { ____Placeholder_via_clksrc } via_clksrc ;


 int VIACR ;
 int set_clock_source_common (int,int) ;
 int via_write_reg_mask (int ,int,int ,int) ;

__attribute__((used)) static void set_secondary_clock_source(enum via_clksrc source, bool use_pll)
{
 u8 data = set_clock_source_common(source, use_pll);
 via_write_reg_mask(VIACR, 0x6C, data, 0x0F);
}
