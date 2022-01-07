
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_compile_info {char* compile_date; } ;
struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_xen_version (int ,struct xen_compile_info*) ;
 int XENVER_compile_info ;
 int kfree (struct xen_compile_info*) ;
 struct xen_compile_info* kmalloc (int,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t compile_date_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 int ret = -ENOMEM;
 struct xen_compile_info *info;

 info = kmalloc(sizeof(struct xen_compile_info), GFP_KERNEL);
 if (info) {
  ret = HYPERVISOR_xen_version(XENVER_compile_info, info);
  if (!ret)
   ret = sprintf(buffer, "%s\n", info->compile_date);
  kfree(info);
 }

 return ret;
}
