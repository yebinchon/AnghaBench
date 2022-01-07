
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int said_rebooted; scalar_t__ cm_epoch; int cm_probed; int said_inconsistent; } ;
struct afs_server {scalar_t__ cm_epoch; int probe_lock; TYPE_1__ probe; int uuid; int flags; } ;
struct afs_call {scalar_t__ epoch; } ;


 int AFS_SERVER_FL_HAVE_EPOCH ;
 int AFS_SERVER_FL_PROBING ;
 int _enter (char*) ;
 int pr_notice (char*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int afs_record_cm_probe(struct afs_call *call, struct afs_server *server)
{
 _enter("");

 if (test_bit(AFS_SERVER_FL_HAVE_EPOCH, &server->flags) &&
     !test_bit(AFS_SERVER_FL_PROBING, &server->flags)) {
  if (server->cm_epoch == call->epoch)
   return 0;

  if (!server->probe.said_rebooted) {
   pr_notice("kAFS: FS rebooted %pU\n", &server->uuid);
   server->probe.said_rebooted = 1;
  }
 }

 spin_lock(&server->probe_lock);

 if (!test_bit(AFS_SERVER_FL_HAVE_EPOCH, &server->flags)) {
  server->cm_epoch = call->epoch;
  server->probe.cm_epoch = call->epoch;
  goto out;
 }

 if (server->probe.cm_probed &&
     call->epoch != server->probe.cm_epoch &&
     !server->probe.said_inconsistent) {
  pr_notice("kAFS: FS endpoints inconsistent %pU\n",
     &server->uuid);
  server->probe.said_inconsistent = 1;
 }

 if (!server->probe.cm_probed || call->epoch == server->cm_epoch)
  server->probe.cm_epoch = server->cm_epoch;

out:
 server->probe.cm_probed = 1;
 spin_unlock(&server->probe_lock);
 return 0;
}
