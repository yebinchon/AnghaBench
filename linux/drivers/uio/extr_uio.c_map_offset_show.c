
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_mem {scalar_t__ offs; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t map_offset_show(struct uio_mem *mem, char *buf)
{
 return sprintf(buf, "0x%llx\n", (unsigned long long)mem->offs);
}
