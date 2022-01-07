
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct aat2870_data {int (* write ) (struct aat2870_data*,int ,int ) ;} ;
struct aat2870_bl_driver_data {scalar_t__ channels; TYPE_2__* pdev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int AAT2870_BL_CH_EN ;
 struct aat2870_data* dev_get_drvdata (int ) ;
 int stub1 (struct aat2870_data*,int ,int ) ;

__attribute__((used)) static inline int aat2870_bl_enable(struct aat2870_bl_driver_data *aat2870_bl)
{
 struct aat2870_data *aat2870
   = dev_get_drvdata(aat2870_bl->pdev->dev.parent);

 return aat2870->write(aat2870, AAT2870_BL_CH_EN,
         (u8)aat2870_bl->channels);
}
