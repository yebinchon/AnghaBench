
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {int dummy; } ;


 int ENOENT ;
 int UCSI_MAX_ALTMODES ;

__attribute__((used)) static int ucsi_next_altmode(struct typec_altmode **alt)
{
 int i = 0;

 for (i = 0; i < UCSI_MAX_ALTMODES; i++)
  if (!alt[i])
   return i;

 return -ENOENT;
}
