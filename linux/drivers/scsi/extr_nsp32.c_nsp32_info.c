
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {char const* info_str; } ;
typedef TYPE_1__ nsp32_hw_data ;



__attribute__((used)) static const char *nsp32_info(struct Scsi_Host *shpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)shpnt->hostdata;

 return data->info_str;
}
