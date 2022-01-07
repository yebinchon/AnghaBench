
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qoriq_tmu_data {int clk; TYPE_1__* regs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int tmr; } ;


 int TMR_DISABLE ;
 int clk_disable_unprepare (int ) ;
 struct qoriq_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int tmu_write (struct qoriq_tmu_data*,int ,int *) ;

__attribute__((used)) static int qoriq_tmu_remove(struct platform_device *pdev)
{
 struct qoriq_tmu_data *data = platform_get_drvdata(pdev);


 tmu_write(data, TMR_DISABLE, &data->regs->tmr);

 clk_disable_unprepare(data->clk);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
