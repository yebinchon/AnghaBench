
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* counts; } ;
typedef TYPE_1__ scsi_changer ;


 unsigned int CH_TYPES ;

__attribute__((used)) static int
ch_checkrange(scsi_changer *ch, unsigned int type, unsigned int unit)
{
 if (type >= CH_TYPES || unit >= ch->counts[type])
  return -1;
 return 0;
}
