
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_audio_arb_data {int clk; int lock; int regs; } ;


 int clk_disable_unprepare (int ) ;
 struct meson_audio_arb_data* platform_get_drvdata (struct platform_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int meson_audio_arb_remove(struct platform_device *pdev)
{
 struct meson_audio_arb_data *arb = platform_get_drvdata(pdev);


 spin_lock(&arb->lock);
 writel(0, arb->regs);
 spin_unlock(&arb->lock);

 clk_disable_unprepare(arb->clk);

 return 0;
}
