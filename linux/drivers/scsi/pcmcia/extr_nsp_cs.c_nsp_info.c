
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {char const* nspinfo; } ;
typedef TYPE_1__ nsp_hw_data ;



__attribute__((used)) static const char *nsp_info(struct Scsi_Host *shpnt)
{
 nsp_hw_data *data = (nsp_hw_data *)shpnt->hostdata;

 return data->nspinfo;
}
