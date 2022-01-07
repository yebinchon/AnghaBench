
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dbg_fwsave_len; int dbg_fwsave; scalar_t__ dbg_fwsave_once; } ;


 scalar_t__ BFA_FALSE ;
 int bfa_ioc_debug_fwtrc (struct bfa_ioc_s*,int ,int*) ;

void
bfa_ioc_debug_save_ftrc(struct bfa_ioc_s *ioc)
{
 int tlen;

 if (ioc->dbg_fwsave_once) {
  ioc->dbg_fwsave_once = BFA_FALSE;
  if (ioc->dbg_fwsave_len) {
   tlen = ioc->dbg_fwsave_len;
   bfa_ioc_debug_fwtrc(ioc, ioc->dbg_fwsave, &tlen);
  }
 }
}
