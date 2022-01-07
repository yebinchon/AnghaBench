
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_dev_attrib {int pi_prot_verify; int pi_prot_type; scalar_t__ hw_pi_prot_type; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int pr_warn (char*) ;
 int strtobool (char const*,int*) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t pi_prot_verify_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 bool flag;
 int ret;

 ret = strtobool(page, &flag);
 if (ret < 0)
  return ret;

 if (!flag) {
  da->pi_prot_verify = flag;
  return count;
 }
 if (da->hw_pi_prot_type) {
  pr_warn("DIF protection enabled on underlying hardware,"
   " ignoring\n");
  return count;
 }
 if (!da->pi_prot_type) {
  pr_warn("DIF protection not supported by backend, ignoring\n");
  return count;
 }
 da->pi_prot_verify = flag;

 return count;
}
