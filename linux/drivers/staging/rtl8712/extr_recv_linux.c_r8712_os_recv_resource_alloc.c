
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pkt; int * pkt_newalloc; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct _adapter {int dummy; } ;



void r8712_os_recv_resource_alloc(struct _adapter *padapter,
      union recv_frame *precvframe)
{
 precvframe->u.hdr.pkt_newalloc = ((void*)0);
 precvframe->u.hdr.pkt = ((void*)0);
}
