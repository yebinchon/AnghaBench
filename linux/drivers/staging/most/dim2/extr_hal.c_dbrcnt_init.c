
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int rpc; int wpc; int rest_size; } ;
struct TYPE_4__ {TYPE_1__ atx_dbr; } ;


 int dim2_rpc (int ) ;
 TYPE_2__ g ;

__attribute__((used)) static void dbrcnt_init(u8 ch_addr, u16 dbr_size)
{
 g.atx_dbr.rest_size = dbr_size;
 g.atx_dbr.rpc = dim2_rpc(ch_addr);
 g.atx_dbr.wpc = g.atx_dbr.rpc;
}
