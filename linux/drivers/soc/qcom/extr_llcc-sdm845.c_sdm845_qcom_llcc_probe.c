
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int qcom_llcc_probe (struct platform_device*,int ,int ) ;
 int sdm845_data ;

__attribute__((used)) static int sdm845_qcom_llcc_probe(struct platform_device *pdev)
{
 return qcom_llcc_probe(pdev, sdm845_data, ARRAY_SIZE(sdm845_data));
}
