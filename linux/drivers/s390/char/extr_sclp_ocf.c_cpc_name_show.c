
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int EBCASC (char*,int) ;
 int OCF_LENGTH_CPC_NAME ;
 int PAGE_SIZE ;
 int sclp_ocf_cpc_name_copy (char*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t cpc_name_show(struct kobject *kobj,
        struct kobj_attribute *attr, char *page)
{
 char name[OCF_LENGTH_CPC_NAME + 1];

 sclp_ocf_cpc_name_copy(name);
 name[OCF_LENGTH_CPC_NAME] = 0;
 EBCASC(name, OCF_LENGTH_CPC_NAME);
 return snprintf(page, PAGE_SIZE, "%s\n", name);
}
