
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_config {int rf_lsflags; int rf_lvblen; } ;
struct TYPE_2__ {int h_version; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {scalar_t__ ls_lvblen; scalar_t__ ls_exflags; } ;


 int DLM_HEADER_MAJOR ;
 int DLM_HEADER_MINOR ;
 int EPROTO ;
 scalar_t__ le32_to_cpu (int ) ;
 int log_error (struct dlm_ls*,char*,scalar_t__,scalar_t__,int,...) ;

__attribute__((used)) static int check_rcom_config(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
 struct rcom_config *rf = (struct rcom_config *) rc->rc_buf;

 if ((rc->rc_header.h_version & 0xFFFF0000) != DLM_HEADER_MAJOR) {
  log_error(ls, "version mismatch: %x nodeid %d: %x",
     DLM_HEADER_MAJOR | DLM_HEADER_MINOR, nodeid,
     rc->rc_header.h_version);
  return -EPROTO;
 }

 if (le32_to_cpu(rf->rf_lvblen) != ls->ls_lvblen ||
     le32_to_cpu(rf->rf_lsflags) != ls->ls_exflags) {
  log_error(ls, "config mismatch: %d,%x nodeid %d: %d,%x",
     ls->ls_lvblen, ls->ls_exflags, nodeid,
     le32_to_cpu(rf->rf_lvblen),
     le32_to_cpu(rf->rf_lsflags));
  return -EPROTO;
 }
 return 0;
}
