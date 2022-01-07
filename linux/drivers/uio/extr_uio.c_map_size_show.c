
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_mem {int size; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int *) ;

__attribute__((used)) static ssize_t map_size_show(struct uio_mem *mem, char *buf)
{
 return sprintf(buf, "%pa\n", &mem->size);
}
