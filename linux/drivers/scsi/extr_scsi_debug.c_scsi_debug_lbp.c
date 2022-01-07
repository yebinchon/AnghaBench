
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sdebug_fake_rw ;
 scalar_t__ sdebug_lbpu ;
 scalar_t__ sdebug_lbpws ;
 scalar_t__ sdebug_lbpws10 ;

__attribute__((used)) static inline bool scsi_debug_lbp(void)
{
 return 0 == sdebug_fake_rw &&
  (sdebug_lbpu || sdebug_lbpws || sdebug_lbpws10);
}
