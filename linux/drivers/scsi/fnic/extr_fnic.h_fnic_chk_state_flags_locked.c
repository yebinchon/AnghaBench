
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {unsigned long state_flags; } ;



__attribute__((used)) static inline int
fnic_chk_state_flags_locked(struct fnic *fnic, unsigned long st_flags)
{
 return ((fnic->state_flags & st_flags) == st_flags);
}
