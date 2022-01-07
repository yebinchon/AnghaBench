
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline unsigned long cifs_get_time(struct dentry *dentry)
{
 return (unsigned long) dentry->d_fsdata;
}
