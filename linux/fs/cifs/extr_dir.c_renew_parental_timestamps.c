
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 int IS_ROOT (struct dentry*) ;
 int cifs_set_time (struct dentry*,int ) ;
 int jiffies ;

__attribute__((used)) static void
renew_parental_timestamps(struct dentry *direntry)
{


 do {
  cifs_set_time(direntry, jiffies);
  direntry = direntry->d_parent;
 } while (!IS_ROOT(direntry));
}
