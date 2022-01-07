
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct fwtty_peer {int (* workfn ) (struct work_struct*) ;} ;


 int stub1 (struct work_struct*) ;
 struct fwtty_peer* to_peer (struct work_struct*,struct work_struct*) ;

__attribute__((used)) static void fwserial_peer_workfn(struct work_struct *work)
{
 struct fwtty_peer *peer = to_peer(work, work);

 peer->workfn(work);
}
