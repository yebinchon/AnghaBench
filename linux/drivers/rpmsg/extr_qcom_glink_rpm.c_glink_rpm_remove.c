
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct platform_device {int dummy; } ;


 struct qcom_glink* platform_get_drvdata (struct platform_device*) ;
 int qcom_glink_native_remove (struct qcom_glink*) ;

__attribute__((used)) static int glink_rpm_remove(struct platform_device *pdev)
{
 struct qcom_glink *glink = platform_get_drvdata(pdev);

 qcom_glink_native_remove(glink);

 return 0;
}
