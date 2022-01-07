
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENODEV ;
 int lcdshadow_set (int) ;
 scalar_t__ lcdshadow_state ;
 char* next_cmd (char**) ;
 scalar_t__ strlencmp (char*,char*) ;

__attribute__((used)) static int lcdshadow_write(char *buf)
{
 char *cmd;
 int state = -1;

 if (lcdshadow_state < 0)
  return -ENODEV;

 while ((cmd = next_cmd(&buf))) {
  if (strlencmp(cmd, "0") == 0)
   state = 0;
  else if (strlencmp(cmd, "1") == 0)
   state = 1;
 }

 if (state == -1)
  return -EINVAL;

 return lcdshadow_set(state);
}
