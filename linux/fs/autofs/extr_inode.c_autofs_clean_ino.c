
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_info {int last_used; int gid; int uid; } ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int jiffies ;

void autofs_clean_ino(struct autofs_info *ino)
{
 ino->uid = GLOBAL_ROOT_UID;
 ino->gid = GLOBAL_ROOT_GID;
 ino->last_used = jiffies;
}
