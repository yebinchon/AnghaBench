
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bfa_ioc_s {int dummy; } ;


 scalar_t__ bfa_ioc_mbox_cmd_pending (struct bfa_ioc_s*) ;
 int bfa_ioc_send_fwsync (struct bfa_ioc_s*) ;

__attribute__((used)) static void
bfa_ioc_fwsync(struct bfa_ioc_s *ioc)
{
 u32 fwsync_iter = 1000;

 bfa_ioc_send_fwsync(ioc);
 while (bfa_ioc_mbox_cmd_pending(ioc) && fwsync_iter > 0)
  fwsync_iter--;
}
