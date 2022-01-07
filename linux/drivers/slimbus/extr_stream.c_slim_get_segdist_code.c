
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ratem; int segdist_code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* segdist_codes ;

__attribute__((used)) static int slim_get_segdist_code(int ratem)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(segdist_codes); i++) {
  if (segdist_codes[i].ratem == ratem)
   return segdist_codes[i].segdist_code;
 }

 return -EINVAL;
}
