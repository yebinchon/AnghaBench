
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct fwtty_peer {scalar_t__ connect_retries; int connect; } ;


 int CONNECT_RETRY_DELAY ;
 int EAGAIN ;
 scalar_t__ MAX_CONNECT_RETRIES ;
 int connect ;
 int fwserial_connect_peer (struct fwtty_peer*) ;
 int schedule_delayed_work (int *,int ) ;
 int to_delayed_work (struct work_struct*) ;
 struct fwtty_peer* to_peer (int ,int ) ;

__attribute__((used)) static void fwserial_auto_connect(struct work_struct *work)
{
 struct fwtty_peer *peer = to_peer(to_delayed_work(work), connect);
 int err;

 err = fwserial_connect_peer(peer);
 if (err == -EAGAIN && ++peer->connect_retries < MAX_CONNECT_RETRIES)
  schedule_delayed_work(&peer->connect, CONNECT_RETRY_DELAY);
}
