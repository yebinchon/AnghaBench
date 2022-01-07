
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_build_id {int len; char* buf; } ;
struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int HYPERVISOR_xen_version (int ,struct xen_build_id*) ;
 int XENVER_build_id ;
 int kfree (struct xen_build_id*) ;
 struct xen_build_id* kmalloc (int,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t buildid_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 ssize_t ret;
 struct xen_build_id *buildid;

 ret = HYPERVISOR_xen_version(XENVER_build_id, ((void*)0));
 if (ret < 0) {
  if (ret == -EPERM)
   ret = sprintf(buffer, "<denied>");
  return ret;
 }

 buildid = kmalloc(sizeof(*buildid) + ret, GFP_KERNEL);
 if (!buildid)
  return -ENOMEM;

 buildid->len = ret;
 ret = HYPERVISOR_xen_version(XENVER_build_id, buildid);
 if (ret > 0)
  ret = sprintf(buffer, "%s", buildid->buf);
 kfree(buildid);

 return ret;
}
