
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct regmap {int dummy; } ;


 int BIT (int ) ;
 int HSIO_MCB_S1G_ADDR_CFG ;
 unsigned int HSIO_MCB_S1G_ADDR_CFG_SERDES1G_ADDR (int ) ;
 int MCB_S1G_CFG_TIMEOUT ;
 int regmap_read_poll_timeout (struct regmap*,int ,unsigned int,int,int,int) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int __serdes_write_mcb_s1g(struct regmap *regmap, u8 macro, u32 op)
{
 unsigned int regval;

 regmap_write(regmap, HSIO_MCB_S1G_ADDR_CFG, op |
       HSIO_MCB_S1G_ADDR_CFG_SERDES1G_ADDR(BIT(macro)));

 return regmap_read_poll_timeout(regmap, HSIO_MCB_S1G_ADDR_CFG, regval,
     (regval & op) != op, 100,
     MCB_S1G_CFG_TIMEOUT * 1000);
}
