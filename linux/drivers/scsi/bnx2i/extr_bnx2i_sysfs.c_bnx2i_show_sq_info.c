
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bnx2i_hba {int max_sqes; } ;
typedef int ssize_t ;


 struct bnx2i_hba* bnx2i_dev_to_hba (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bnx2i_show_sq_info(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct bnx2i_hba *hba = bnx2i_dev_to_hba(dev);

 return sprintf(buf, "0x%x\n", hba->max_sqes);
}
