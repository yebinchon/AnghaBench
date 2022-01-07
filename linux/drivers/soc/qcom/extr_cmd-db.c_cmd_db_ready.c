
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EPROBE_DEFER ;
 int * cmd_db_header ;
 int cmd_db_magic_matches (int *) ;

int cmd_db_ready(void)
{
 if (cmd_db_header == ((void*)0))
  return -EPROBE_DEFER;
 else if (!cmd_db_magic_matches(cmd_db_header))
  return -EINVAL;

 return 0;
}
