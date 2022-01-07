
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ RSTMGR_REG_CHIP_SOFT_RST_OFFSET ;
 scalar_t__ RSTMGR_REG_WR_ACCESS_OFFSET ;
 int RSTMGR_WR_ACCESS_ENABLE ;
 int RSTMGR_WR_PASSWORD ;
 int RSTMGR_WR_PASSWORD_SHIFT ;
 scalar_t__ kona_reset_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int kona_reset_handler(struct notifier_block *this,
    unsigned long mode, void *cmd)
{





 writel((RSTMGR_WR_PASSWORD << RSTMGR_WR_PASSWORD_SHIFT) |
  RSTMGR_WR_ACCESS_ENABLE,
  kona_reset_base + RSTMGR_REG_WR_ACCESS_OFFSET);
 writel(0, kona_reset_base + RSTMGR_REG_CHIP_SOFT_RST_OFFSET);

 return NOTIFY_DONE;
}
