
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {int setup_state; } ;
typedef enum ffs_setup_state { ____Placeholder_ffs_setup_state } ffs_setup_state ;


 int FFS_NO_SETUP ;
 int FFS_SETUP_CANCELLED ;
 int cmpxchg (int *,int ,int ) ;

__attribute__((used)) static inline enum ffs_setup_state
ffs_setup_state_clear_cancelled(struct ffs_data *ffs)
{
 return (enum ffs_setup_state)
  cmpxchg(&ffs->setup_state, FFS_SETUP_CANCELLED, FFS_NO_SETUP);
}
