
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver {int flags; int probe_outstanding; } ;


 int AFS_VLSERVER_FL_PROBING ;
 int atomic_dec_and_test (int *) ;
 int clear_bit_unlock (int ,int *) ;
 int wake_up_bit (int *,int ) ;
 int wake_up_var (int *) ;

__attribute__((used)) static bool afs_vl_probe_done(struct afs_vlserver *server)
{
 if (!atomic_dec_and_test(&server->probe_outstanding))
  return 0;

 wake_up_var(&server->probe_outstanding);
 clear_bit_unlock(AFS_VLSERVER_FL_PROBING, &server->flags);
 wake_up_bit(&server->flags, AFS_VLSERVER_FL_PROBING);
 return 1;
}
