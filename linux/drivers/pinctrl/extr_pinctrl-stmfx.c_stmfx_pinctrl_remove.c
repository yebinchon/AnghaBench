
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmfx {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int STMFX_FUNC_ALTGPIO_HIGH ;
 int STMFX_FUNC_ALTGPIO_LOW ;
 int STMFX_FUNC_GPIO ;
 struct stmfx* dev_get_drvdata (int ) ;
 int stmfx_function_disable (struct stmfx*,int) ;

__attribute__((used)) static int stmfx_pinctrl_remove(struct platform_device *pdev)
{
 struct stmfx *stmfx = dev_get_drvdata(pdev->dev.parent);

 return stmfx_function_disable(stmfx,
          STMFX_FUNC_GPIO |
          STMFX_FUNC_ALTGPIO_LOW |
          STMFX_FUNC_ALTGPIO_HIGH);
}
