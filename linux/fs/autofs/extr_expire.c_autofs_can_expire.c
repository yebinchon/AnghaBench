
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct autofs_info {scalar_t__ last_used; } ;


 unsigned int AUTOFS_EXP_IMMEDIATE ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int jiffies ;
 scalar_t__ time_after (scalar_t__,int ) ;

__attribute__((used)) static inline int autofs_can_expire(struct dentry *dentry,
        unsigned long timeout, unsigned int how)
{
 struct autofs_info *ino = autofs_dentry_ino(dentry);


 if (ino == ((void*)0))
  return 0;

 if (!(how & AUTOFS_EXP_IMMEDIATE)) {

  if (!timeout || time_after(ino->last_used + timeout, jiffies))
   return 0;
 }
 return 1;
}
