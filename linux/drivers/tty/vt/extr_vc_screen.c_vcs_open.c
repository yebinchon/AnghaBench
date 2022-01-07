
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 unsigned int console (struct inode*) ;
 int console_lock () ;
 int console_unlock () ;
 int use_attributes (struct inode*) ;
 int use_unicode (struct inode*) ;
 int vc_cons_allocated (unsigned int) ;

__attribute__((used)) static int
vcs_open(struct inode *inode, struct file *filp)
{
 unsigned int currcons = console(inode);
 bool attr = use_attributes(inode);
 bool uni_mode = use_unicode(inode);
 int ret = 0;


 if (attr && uni_mode)
  return -EOPNOTSUPP;

 console_lock();
 if(currcons && !vc_cons_allocated(currcons-1))
  ret = -ENXIO;
 console_unlock();
 return ret;
}
