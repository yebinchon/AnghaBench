
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;
struct bfa_ioc_hwif_s {int ioc_get_alt_fwstate; int ioc_set_alt_fwstate; int ioc_get_fwstate; int ioc_set_fwstate; int ioc_sync_complete; int ioc_sync_ack; int ioc_sync_leave; int ioc_sync_join; int ioc_sync_start; int ioc_ownership_reset; int ioc_notify_fail; int ioc_firmware_unlock; int ioc_firmware_lock; } ;


 int bfa_ioc_ct_firmware_lock ;
 int bfa_ioc_ct_firmware_unlock ;
 int bfa_ioc_ct_get_alt_ioc_fwstate ;
 int bfa_ioc_ct_get_cur_ioc_fwstate ;
 int bfa_ioc_ct_notify_fail ;
 int bfa_ioc_ct_ownership_reset ;
 int bfa_ioc_ct_set_alt_ioc_fwstate ;
 int bfa_ioc_ct_set_cur_ioc_fwstate ;
 int bfa_ioc_ct_sync_ack ;
 int bfa_ioc_ct_sync_complete ;
 int bfa_ioc_ct_sync_join ;
 int bfa_ioc_ct_sync_leave ;
 int bfa_ioc_ct_sync_start ;

__attribute__((used)) static void
bfa_ioc_set_ctx_hwif(struct bfa_ioc_s *ioc, struct bfa_ioc_hwif_s *hwif)
{
 hwif->ioc_firmware_lock = bfa_ioc_ct_firmware_lock;
 hwif->ioc_firmware_unlock = bfa_ioc_ct_firmware_unlock;
 hwif->ioc_notify_fail = bfa_ioc_ct_notify_fail;
 hwif->ioc_ownership_reset = bfa_ioc_ct_ownership_reset;
 hwif->ioc_sync_start = bfa_ioc_ct_sync_start;
 hwif->ioc_sync_join = bfa_ioc_ct_sync_join;
 hwif->ioc_sync_leave = bfa_ioc_ct_sync_leave;
 hwif->ioc_sync_ack = bfa_ioc_ct_sync_ack;
 hwif->ioc_sync_complete = bfa_ioc_ct_sync_complete;
 hwif->ioc_set_fwstate = bfa_ioc_ct_set_cur_ioc_fwstate;
 hwif->ioc_get_fwstate = bfa_ioc_ct_get_cur_ioc_fwstate;
 hwif->ioc_set_alt_fwstate = bfa_ioc_ct_set_alt_ioc_fwstate;
 hwif->ioc_get_alt_fwstate = bfa_ioc_ct_get_alt_ioc_fwstate;
}
