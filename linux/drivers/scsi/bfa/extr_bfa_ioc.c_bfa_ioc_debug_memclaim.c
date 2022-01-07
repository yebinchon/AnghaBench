
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dbg_fwsave_len; void* dbg_fwsave; } ;


 int BFA_DBG_FWTRC_LEN ;

void
bfa_ioc_debug_memclaim(struct bfa_ioc_s *ioc, void *dbg_fwsave)
{
 ioc->dbg_fwsave = dbg_fwsave;
 ioc->dbg_fwsave_len = BFA_DBG_FWTRC_LEN;
}
