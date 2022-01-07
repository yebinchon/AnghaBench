
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int lancmd_timeout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lcs_card* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
lcs_timeout_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lcs_card *card;

 card = dev_get_drvdata(dev);

 return card ? sprintf(buf, "%u\n", card->lancmd_timeout) : 0;
}
