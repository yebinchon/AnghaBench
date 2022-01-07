
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_dp_phy {scalar_t__ base; } ;


 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_dp_phy_write_field(struct cdns_dp_phy *cdns_phy,
        unsigned int offset,
        unsigned char start_bit,
        unsigned char num_bits,
        unsigned int val)
{
 unsigned int read_val;

 read_val = readl(cdns_phy->base + offset);
 writel(((val << start_bit) | (read_val & ~(((1 << num_bits) - 1) <<
  start_bit))), cdns_phy->base + offset);
}
