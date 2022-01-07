
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rec_len; } ;
typedef TYPE_1__ ext2_dirent ;


 TYPE_1__* ext2_next_entry (TYPE_1__*) ;

__attribute__((used)) static inline unsigned
ext2_validate_entry(char *base, unsigned offset, unsigned mask)
{
 ext2_dirent *de = (ext2_dirent*)(base + offset);
 ext2_dirent *p = (ext2_dirent*)(base + (offset&mask));
 while ((char*)p < (char*)de) {
  if (p->rec_len == 0)
   break;
  p = ext2_next_entry(p);
 }
 return (char *)p - base;
}
