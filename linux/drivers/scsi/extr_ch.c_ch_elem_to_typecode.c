
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__* firsts; scalar_t__* counts; } ;
typedef TYPE_1__ scsi_changer ;


 int CH_TYPES ;

__attribute__((used)) static int
ch_elem_to_typecode(scsi_changer *ch, u_int elem)
{
 int i;

 for (i = 0; i < CH_TYPES; i++) {
  if (elem >= ch->firsts[i] &&
      elem < ch->firsts[i] +
             ch->counts[i])
   return i+1;
 }
 return 0;
}
