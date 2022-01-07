
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_msit_peer {int pidx; TYPE_1__* nm; } ;
struct TYPE_2__ {int ntb; } ;


 int ntb_peer_port_number (int ,int ) ;

__attribute__((used)) static int ntb_msit_dbgfs_port_get(void *data, u64 *port)
{
 struct ntb_msit_peer *peer = data;

 *port = ntb_peer_port_number(peer->nm->ntb, peer->pidx);

 return 0;
}
