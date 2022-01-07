
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcopy_dev_search_info {unsigned char const* dev_wwn; struct se_device* found_dev; } ;
struct se_device {int dummy; } ;
typedef int info ;


 int EINVAL ;
 int memset (struct xcopy_dev_search_info*,int ,int) ;
 int pr_debug_ratelimited (char*) ;
 int target_for_each_device (int ,struct xcopy_dev_search_info*) ;
 int target_xcopy_locate_se_dev_e4_iter ;

__attribute__((used)) static int target_xcopy_locate_se_dev_e4(const unsigned char *dev_wwn,
     struct se_device **found_dev)
{
 struct xcopy_dev_search_info info;
 int ret;

 memset(&info, 0, sizeof(info));
 info.dev_wwn = dev_wwn;

 ret = target_for_each_device(target_xcopy_locate_se_dev_e4_iter, &info);
 if (ret == 1) {
  *found_dev = info.found_dev;
  return 0;
 } else {
  pr_debug_ratelimited("Unable to locate 0xe4 descriptor for EXTENDED_COPY\n");
  return -EINVAL;
 }
}
