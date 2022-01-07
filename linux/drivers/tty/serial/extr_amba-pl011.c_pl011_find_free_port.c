
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int **) ;
 int EBUSY ;
 int ** amba_ports ;

__attribute__((used)) static int pl011_find_free_port(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(amba_ports); i++)
  if (amba_ports[i] == ((void*)0))
   return i;

 return -EBUSY;
}
