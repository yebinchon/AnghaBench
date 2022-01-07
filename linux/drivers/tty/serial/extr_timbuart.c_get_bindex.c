
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* baudrates ;

__attribute__((used)) static int get_bindex(int baud)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(baudrates); i++)
  if (baud <= baudrates[i])
   return i;

 return -1;
}
