
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
typedef int kuid_t ;


 int EINVAL ;
 int current_user_ns () ;
 int get_option_ul (int *,unsigned long*) ;
 int make_kuid (int ,unsigned long) ;
 int uid_valid (int ) ;

__attribute__((used)) static int get_option_uid(substring_t args[], kuid_t *result)
{
 unsigned long value;
 kuid_t uid;
 int rc;

 rc = get_option_ul(args, &value);
 if (rc)
  return rc;

 uid = make_kuid(current_user_ns(), value);
 if (!uid_valid(uid))
  return -EINVAL;

 *result = uid;
 return 0;
}
