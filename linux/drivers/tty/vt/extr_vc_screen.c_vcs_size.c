
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_rows; int vc_cols; } ;
struct inode {int dummy; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int HEADER_SIZE ;
 int WARN_CONSOLE_UNLOCKED () ;
 scalar_t__ use_attributes (struct inode*) ;
 scalar_t__ use_unicode (struct inode*) ;
 struct vc_data* vcs_vc (struct inode*,int *) ;

__attribute__((used)) static int
vcs_size(struct inode *inode)
{
 int size;
 struct vc_data *vc;

 WARN_CONSOLE_UNLOCKED();

 vc = vcs_vc(inode, ((void*)0));
 if (!vc)
  return -ENXIO;

 size = vc->vc_rows * vc->vc_cols;

 if (use_attributes(inode)) {
  if (use_unicode(inode))
   return -EOPNOTSUPP;
  size = 2*size + HEADER_SIZE;
 } else if (use_unicode(inode))
  size *= 4;
 return size;
}
