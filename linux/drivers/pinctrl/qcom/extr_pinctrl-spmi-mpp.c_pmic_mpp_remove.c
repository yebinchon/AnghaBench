
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_mpp_state {int chip; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 struct pmic_mpp_state* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pmic_mpp_remove(struct platform_device *pdev)
{
 struct pmic_mpp_state *state = platform_get_drvdata(pdev);

 gpiochip_remove(&state->chip);
 return 0;
}
