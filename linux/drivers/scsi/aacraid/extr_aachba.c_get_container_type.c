
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char**) ;
 char** container_types ;

char * get_container_type(unsigned tindex)
{
 if (tindex >= ARRAY_SIZE(container_types))
  tindex = ARRAY_SIZE(container_types) - 1;
 return container_types[tindex];
}
