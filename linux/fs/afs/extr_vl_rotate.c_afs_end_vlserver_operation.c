
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int abort_code; } ;
struct afs_vl_cursor {int error; TYPE_2__ ac; int server_list; TYPE_1__* cell; } ;
struct afs_net {int dummy; } ;
struct TYPE_3__ {struct afs_net* net; } ;


 int EADDRNOTAVAIL ;
 int ECONNABORTED ;
 int EDESTADDRREQ ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int afs_abort_to_error (int ) ;
 int afs_end_cursor (TYPE_2__*) ;
 int afs_put_vlserverlist (struct afs_net*,int ) ;
 int afs_vl_dump_edestaddrreq (struct afs_vl_cursor*) ;

int afs_end_vlserver_operation(struct afs_vl_cursor *vc)
{
 struct afs_net *net = vc->cell->net;

 if (vc->error == -EDESTADDRREQ ||
     vc->error == -EADDRNOTAVAIL ||
     vc->error == -ENETUNREACH ||
     vc->error == -EHOSTUNREACH)
  afs_vl_dump_edestaddrreq(vc);

 afs_end_cursor(&vc->ac);
 afs_put_vlserverlist(net, vc->server_list);

 if (vc->error == -ECONNABORTED)
  vc->error = afs_abort_to_error(vc->ac.abort_code);

 return vc->error;
}
