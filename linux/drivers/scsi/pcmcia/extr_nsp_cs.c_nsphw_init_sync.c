
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int SyncOffset; int SyncPeriod; int SyncNegotiation; } ;
typedef TYPE_1__ sync_data ;
struct TYPE_6__ {TYPE_1__* Sync; } ;
typedef TYPE_2__ nsp_hw_data ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SYNC_NOT_YET ;

__attribute__((used)) static void nsphw_init_sync(nsp_hw_data *data)
{
 sync_data tmp_sync = { .SyncNegotiation = SYNC_NOT_YET,
          .SyncPeriod = 0,
          .SyncOffset = 0
 };
 int i;


 for ( i = 0; i < ARRAY_SIZE(data->Sync); i++ ) {
  data->Sync[i] = tmp_sync;
 }
}
