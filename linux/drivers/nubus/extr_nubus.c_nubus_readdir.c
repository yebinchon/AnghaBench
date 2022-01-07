
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nubus_dirent {int type; int data; int mask; int base; } ;
struct nubus_dir {int done; int mask; int ptr; } ;


 int nubus_get_rom (int *,int,int ) ;

int nubus_readdir(struct nubus_dir *nd, struct nubus_dirent *ent)
{
 u32 resid;

 if (nd->done)
  return -1;


 ent->base = nd->ptr;


 resid = nubus_get_rom(&nd->ptr, 4, nd->mask);


 if ((resid & 0xff000000) == 0xff000000) {

  nd->done = 1;
  return -1;
 }


 ent->type = resid >> 24;

 ent->data = resid & 0xffffff;
 ent->mask = nd->mask;
 return 0;
}
