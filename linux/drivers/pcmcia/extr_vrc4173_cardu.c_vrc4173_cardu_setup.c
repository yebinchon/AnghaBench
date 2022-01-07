
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int noprobe; } ;


 size_t CARDU1 ;
 size_t CARDU2 ;
 TYPE_1__* cardu_sockets ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int vrc4173_cardu_setup(char *options)
{
 if (options == ((void*)0) || *options == '\0')
  return 1;

 if (strncmp(options, "cardu1:", 7) == 0) {
  options += 7;
  if (*options != '\0') {
   if (strncmp(options, "noprobe", 7) == 0) {
    cardu_sockets[CARDU1].noprobe = 1;
    options += 7;
   }

   if (*options != ',')
    return 1;
  } else
   return 1;
 }

 if (strncmp(options, "cardu2:", 7) == 0) {
  options += 7;
  if ((*options != '\0') && (strncmp(options, "noprobe", 7) == 0))
   cardu_sockets[CARDU2].noprobe = 1;
 }

 return 1;
}
