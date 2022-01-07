
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {int mask; } ;


 unsigned char* nubus_dirptr (struct nubus_dirent const*) ;
 unsigned char nubus_get_rom (unsigned char**,int,int ) ;

unsigned int nubus_get_rsrc_str(char *dest, const struct nubus_dirent *dirent,
    unsigned int len)
{
 char *t = dest;
 unsigned char *p = nubus_dirptr(dirent);

 while (len > 1) {
  unsigned char c = nubus_get_rom(&p, 1, dirent->mask);

  if (!c)
   break;
  *t++ = c;
  len--;
 }
 if (len > 0)
  *t = '\0';
 return t - dest;
}
