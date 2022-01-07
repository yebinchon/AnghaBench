
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
typedef int kgid_t ;


 int EINVAL ;
 int current_user_ns () ;
 int get_option_ul (int *,unsigned long*) ;
 int gid_valid (int ) ;
 int make_kgid (int ,unsigned long) ;

__attribute__((used)) static int get_option_gid(substring_t args[], kgid_t *result)
{
 unsigned long value;
 kgid_t gid;
 int rc;

 rc = get_option_ul(args, &value);
 if (rc)
  return rc;

 gid = make_kgid(current_user_ns(), value);
 if (!gid_valid(gid))
  return -EINVAL;

 *result = gid;
 return 0;
}
