
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct regulator_dev {TYPE_1__ dev; } ;
struct hi6421_regulator_pdata {int lock; } ;


 struct hi6421_regulator_pdata* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_enable_regmap (struct regulator_dev*) ;

__attribute__((used)) static int hi6421_regulator_enable(struct regulator_dev *rdev)
{
 struct hi6421_regulator_pdata *pdata;

 pdata = dev_get_drvdata(rdev->dev.parent);





 mutex_lock(&pdata->lock);


 regulator_enable_regmap(rdev);

 mutex_unlock(&pdata->lock);
 return 0;
}
