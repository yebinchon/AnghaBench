
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct brcmstb_reset {scalar_t__ base; } ;


 unsigned int SW_INIT_BANK (unsigned long) ;
 unsigned int SW_INIT_BANK_SIZE ;
 int SW_INIT_BIT (unsigned long) ;
 scalar_t__ SW_INIT_SET ;
 struct brcmstb_reset* to_brcmstb (struct reset_controller_dev*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int brcmstb_reset_assert(struct reset_controller_dev *rcdev,
    unsigned long id)
{
 unsigned int off = SW_INIT_BANK(id) * SW_INIT_BANK_SIZE;
 struct brcmstb_reset *priv = to_brcmstb(rcdev);

 writel_relaxed(SW_INIT_BIT(id), priv->base + off + SW_INIT_SET);

 return 0;
}
