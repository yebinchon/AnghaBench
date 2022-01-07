
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_flags; scalar_t__ fl_type; } ;
struct TCP_Server_Info {TYPE_1__* vals; } ;
typedef int __u32 ;
struct TYPE_2__ {int shared_lock_type; int exclusive_lock_type; int unlock_lock_type; int large_lock_type; } ;


 int FL_ACCESS ;
 int FL_CLOSE ;
 int FL_FLOCK ;
 int FL_LEASE ;
 int FL_OFDLCK ;
 int FL_POSIX ;
 int FL_SLEEP ;
 int FYI ;
 scalar_t__ F_EXLCK ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_SHLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int cifs_dbg (int ,char*,...) ;

__attribute__((used)) static void
cifs_read_flock(struct file_lock *flock, __u32 *type, int *lock, int *unlock,
  bool *wait_flag, struct TCP_Server_Info *server)
{
 if (flock->fl_flags & FL_POSIX)
  cifs_dbg(FYI, "Posix\n");
 if (flock->fl_flags & FL_FLOCK)
  cifs_dbg(FYI, "Flock\n");
 if (flock->fl_flags & FL_SLEEP) {
  cifs_dbg(FYI, "Blocking lock\n");
  *wait_flag = 1;
 }
 if (flock->fl_flags & FL_ACCESS)
  cifs_dbg(FYI, "Process suspended by mandatory locking - not implemented yet\n");
 if (flock->fl_flags & FL_LEASE)
  cifs_dbg(FYI, "Lease on file - not implemented yet\n");
 if (flock->fl_flags &
     (~(FL_POSIX | FL_FLOCK | FL_SLEEP |
        FL_ACCESS | FL_LEASE | FL_CLOSE | FL_OFDLCK)))
  cifs_dbg(FYI, "Unknown lock flags 0x%x\n", flock->fl_flags);

 *type = server->vals->large_lock_type;
 if (flock->fl_type == F_WRLCK) {
  cifs_dbg(FYI, "F_WRLCK\n");
  *type |= server->vals->exclusive_lock_type;
  *lock = 1;
 } else if (flock->fl_type == F_UNLCK) {
  cifs_dbg(FYI, "F_UNLCK\n");
  *type |= server->vals->unlock_lock_type;
  *unlock = 1;

 } else if (flock->fl_type == F_RDLCK) {
  cifs_dbg(FYI, "F_RDLCK\n");
  *type |= server->vals->shared_lock_type;
  *lock = 1;
 } else if (flock->fl_type == F_EXLCK) {
  cifs_dbg(FYI, "F_EXLCK\n");
  *type |= server->vals->exclusive_lock_type;
  *lock = 1;
 } else if (flock->fl_type == F_SHLCK) {
  cifs_dbg(FYI, "F_SHLCK\n");
  *type |= server->vals->shared_lock_type;
  *lock = 1;
 } else
  cifs_dbg(FYI, "Unknown type of lock\n");
}
