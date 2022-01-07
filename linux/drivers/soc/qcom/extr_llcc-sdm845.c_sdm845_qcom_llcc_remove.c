
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int qcom_llcc_remove (struct platform_device*) ;

__attribute__((used)) static int sdm845_qcom_llcc_remove(struct platform_device *pdev)
{
 return qcom_llcc_remove(pdev);
}
