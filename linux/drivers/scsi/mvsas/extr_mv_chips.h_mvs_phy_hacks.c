
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int CMD_APP_ERR_CONFIG ;
 int CMD_PHY_TIMER ;
 int CMD_SAS_CTL0 ;
 int CMD_SAS_CTL1 ;
 int CMD_WD_TIMER ;
 int mvs_cr32 (struct mvs_info*,int ) ;
 int mvs_cw32 (struct mvs_info*,int ,int) ;

__attribute__((used)) static inline void mvs_phy_hacks(struct mvs_info *mvi)
{
 u32 tmp;

 tmp = mvs_cr32(mvi, CMD_PHY_TIMER);
 tmp &= ~(1 << 9);
 tmp |= (1 << 10);
 mvs_cw32(mvi, CMD_PHY_TIMER, tmp);


 mvs_cw32(mvi, CMD_SAS_CTL1, 0x7f7f);


 tmp = mvs_cr32(mvi, CMD_SAS_CTL0);
 tmp &= ~0xffff;
 tmp |= 0x3fff;
 mvs_cw32(mvi, CMD_SAS_CTL0, tmp);

 mvs_cw32(mvi, CMD_WD_TIMER, 0x7a0000);


 mvs_cw32(mvi, CMD_APP_ERR_CONFIG, 0xffefbf7d);
}
