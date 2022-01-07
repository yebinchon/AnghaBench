
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_wcnss {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct qcom_wcnss* dev_get_drvdata (int ) ;
 int qcom_wcnss_assign_iris (struct qcom_wcnss*,int *,int) ;

__attribute__((used)) static int qcom_iris_remove(struct platform_device *pdev)
{
 struct qcom_wcnss *wcnss = dev_get_drvdata(pdev->dev.parent);

 qcom_wcnss_assign_iris(wcnss, ((void*)0), 0);

 return 0;
}
