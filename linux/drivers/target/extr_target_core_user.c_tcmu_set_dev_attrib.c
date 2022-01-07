
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int substring_t ;


 int EINVAL ;
 int match_int (int *,int*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int tcmu_set_dev_attrib(substring_t *arg, u32 *dev_attrib)
{
 int val, ret;

 ret = match_int(arg, &val);
 if (ret < 0) {
  pr_err("match_int() failed for dev attrib. Error %d.\n",
         ret);
  return ret;
 }

 if (val <= 0) {
  pr_err("Invalid dev attrib value %d. Must be greater than zero.\n",
         val);
  return -EINVAL;
 }
 *dev_attrib = val;
 return 0;
}
