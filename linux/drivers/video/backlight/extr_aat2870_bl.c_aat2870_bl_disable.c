
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aat2870_data {int (* write ) (struct aat2870_data*,int ,int) ;} ;
struct aat2870_bl_driver_data {TYPE_2__* pdev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int AAT2870_BL_CH_EN ;
 struct aat2870_data* dev_get_drvdata (int ) ;
 int stub1 (struct aat2870_data*,int ,int) ;

__attribute__((used)) static inline int aat2870_bl_disable(struct aat2870_bl_driver_data *aat2870_bl)
{
 struct aat2870_data *aat2870
   = dev_get_drvdata(aat2870_bl->pdev->dev.parent);

 return aat2870->write(aat2870, AAT2870_BL_CH_EN, 0x0);
}
