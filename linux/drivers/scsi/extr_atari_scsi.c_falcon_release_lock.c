
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_A_TT () ;
 int scsi_falcon_intr ;
 scalar_t__ stdma_is_locked_by (int ) ;
 int stdma_release () ;

__attribute__((used)) static void falcon_release_lock(void)
{
 if (IS_A_TT())
  return;

 if (stdma_is_locked_by(scsi_falcon_intr))
  stdma_release();
}
