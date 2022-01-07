
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rest_size; int* sz_queue; int wpc; } ;
struct TYPE_4__ {TYPE_1__ atx_dbr; } ;


 TYPE_2__ g ;
 size_t norm_pc (int ) ;

__attribute__((used)) static void dbrcnt_enq(int buf_sz)
{
 g.atx_dbr.rest_size -= buf_sz;
 g.atx_dbr.sz_queue[norm_pc(g.atx_dbr.wpc)] = buf_sz;
 g.atx_dbr.wpc++;
}
