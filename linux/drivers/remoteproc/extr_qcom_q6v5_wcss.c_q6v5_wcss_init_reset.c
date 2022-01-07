
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5_wcss {void* wcss_q6_reset; struct device* dev; void* wcss_reset; void* wcss_aon_reset; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_reset_control_get (struct device*,char*) ;

__attribute__((used)) static int q6v5_wcss_init_reset(struct q6v5_wcss *wcss)
{
 struct device *dev = wcss->dev;

 wcss->wcss_aon_reset = devm_reset_control_get(dev, "wcss_aon_reset");
 if (IS_ERR(wcss->wcss_aon_reset)) {
  dev_err(wcss->dev, "unable to acquire wcss_aon_reset\n");
  return PTR_ERR(wcss->wcss_aon_reset);
 }

 wcss->wcss_reset = devm_reset_control_get(dev, "wcss_reset");
 if (IS_ERR(wcss->wcss_reset)) {
  dev_err(wcss->dev, "unable to acquire wcss_reset\n");
  return PTR_ERR(wcss->wcss_reset);
 }

 wcss->wcss_q6_reset = devm_reset_control_get(dev, "wcss_q6_reset");
 if (IS_ERR(wcss->wcss_q6_reset)) {
  dev_err(wcss->dev, "unable to acquire wcss_q6_reset\n");
  return PTR_ERR(wcss->wcss_q6_reset);
 }

 return 0;
}
