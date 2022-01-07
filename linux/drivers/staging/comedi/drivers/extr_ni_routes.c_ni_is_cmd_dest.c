
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* NI_CMD_DESTS ;

bool ni_is_cmd_dest(int dest)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(NI_CMD_DESTS); ++i)
  if (NI_CMD_DESTS[i] == dest)
   return 1;
 return 0;
}
