
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {unsigned char* base; int mask; int data; } ;


 int nubus_expand32 (int ) ;
 int nubus_move (unsigned char**,int ,int ) ;

unsigned char *nubus_dirptr(const struct nubus_dirent *nd)
{
 unsigned char *p = nd->base;



 nubus_move(&p, nubus_expand32(nd->data), nd->mask);

 return p;
}
