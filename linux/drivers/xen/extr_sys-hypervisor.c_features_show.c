
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int XENFEAT_NR_SUBMAPS ;
 int xen_feature_show (int,char*) ;

__attribute__((used)) static ssize_t features_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 ssize_t len;
 int i;

 len = 0;
 for (i = XENFEAT_NR_SUBMAPS-1; i >= 0; i--) {
  int ret = xen_feature_show(i, buffer + len);
  if (ret < 0) {
   if (len == 0)
    len = ret;
   break;
  }
  len += ret;
 }
 if (len > 0)
  buffer[len++] = '\n';

 return len;
}
