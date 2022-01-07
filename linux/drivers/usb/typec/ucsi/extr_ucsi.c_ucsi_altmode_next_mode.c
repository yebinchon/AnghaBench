
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct typec_altmode {scalar_t__ svid; } ;



__attribute__((used)) static u8 ucsi_altmode_next_mode(struct typec_altmode **alt, u16 svid)
{
 u8 mode = 1;
 int i;

 for (i = 0; alt[i]; i++)
  if (alt[i]->svid == svid)
   mode++;

 return mode;
}
