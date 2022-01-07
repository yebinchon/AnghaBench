
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bfad_s {int plog_buf; } ;
struct bfa_plog_s {int dummy; } ;
struct bfa_bsg_debug_s {int bufsz; int status; } ;


 int BFA_STATUS_EINVAL ;
 int BFA_STATUS_OK ;
 int bfa_trc (struct bfad_s*,int) ;
 int memcpy (void*,int *,int) ;

int
bfad_iocmd_porglog_get(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_debug_s *iocmd = (struct bfa_bsg_debug_s *)cmd;
 void *iocmd_bufptr;

 if (iocmd->bufsz < sizeof(struct bfa_plog_s)) {
  bfa_trc(bfad, sizeof(struct bfa_plog_s));
  iocmd->status = BFA_STATUS_EINVAL;
  goto out;
 }

 iocmd->status = BFA_STATUS_OK;
 iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_debug_s);
 memcpy(iocmd_bufptr, (u8 *) &bfad->plog_buf, sizeof(struct bfa_plog_s));
out:
 return 0;
}
