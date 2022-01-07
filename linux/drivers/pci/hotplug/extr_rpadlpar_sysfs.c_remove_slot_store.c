
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int MAX_DRC_NAME_LEN ;
 int dlpar_remove_slot (char*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char*,char) ;

__attribute__((used)) static ssize_t remove_slot_store(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t nbytes)
{
 char drc_name[MAX_DRC_NAME_LEN];
 int rc;
 char *end;

 if (nbytes >= MAX_DRC_NAME_LEN)
  return 0;

 memcpy(drc_name, buf, nbytes);

 end = strchr(drc_name, '\n');
 if (!end)
  end = &drc_name[nbytes];
 *end = '\0';

 rc = dlpar_remove_slot(drc_name);
 if (rc)
  return rc;

 return nbytes;
}
