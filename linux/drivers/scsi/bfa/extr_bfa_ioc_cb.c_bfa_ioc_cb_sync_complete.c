
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bfa_ioc_s {int dummy; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 scalar_t__ BFI_IOC_DISABLED ;
 scalar_t__ BFI_IOC_FAIL ;
 scalar_t__ BFI_IOC_INITING ;
 scalar_t__ BFI_IOC_MEMTEST ;
 scalar_t__ BFI_IOC_OP ;
 scalar_t__ BFI_IOC_UNINIT ;
 scalar_t__ bfa_ioc_cb_get_alt_ioc_fwstate (struct bfa_ioc_s*) ;
 scalar_t__ bfa_ioc_cb_get_cur_ioc_fwstate (struct bfa_ioc_s*) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_cb_sync_complete(struct bfa_ioc_s *ioc)
{
 u32 fwstate, alt_fwstate;
 fwstate = bfa_ioc_cb_get_cur_ioc_fwstate(ioc);
 if (fwstate == BFI_IOC_UNINIT ||
  fwstate == BFI_IOC_INITING ||
  fwstate == BFI_IOC_DISABLED ||
  fwstate == BFI_IOC_MEMTEST ||
  fwstate == BFI_IOC_OP)
  return BFA_TRUE;
 else {
  alt_fwstate = bfa_ioc_cb_get_alt_ioc_fwstate(ioc);
  if (alt_fwstate == BFI_IOC_FAIL ||
   alt_fwstate == BFI_IOC_DISABLED ||
   alt_fwstate == BFI_IOC_UNINIT ||
   alt_fwstate == BFI_IOC_INITING ||
   alt_fwstate == BFI_IOC_MEMTEST)
   return BFA_TRUE;
  else
   return BFA_FALSE;
 }
}
