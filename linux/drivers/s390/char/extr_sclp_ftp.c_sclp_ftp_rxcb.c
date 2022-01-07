
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pcx; int length; int fsize; int ldflg; } ;
struct TYPE_4__ {TYPE_1__ ftp; } ;
struct sclp_diag_evbuf {scalar_t__ route; TYPE_2__ mdd; } ;
struct evbuf_header {scalar_t__ type; scalar_t__ length; } ;


 scalar_t__ EVTYP_DIAG_TEST ;
 scalar_t__ SCLP_DIAG_FTP_EVBUF_LEN ;
 scalar_t__ SCLP_DIAG_FTP_ROUTE ;
 scalar_t__ SCLP_DIAG_FTP_XPCX ;
 int complete (int *) ;
 int pr_debug (char*,struct evbuf_header*,int,struct evbuf_header*) ;
 int sclp_ftp_fsize ;
 int sclp_ftp_ldflg ;
 int sclp_ftp_length ;
 int sclp_ftp_rx_complete ;

__attribute__((used)) static void sclp_ftp_rxcb(struct evbuf_header *evbuf)
{
 struct sclp_diag_evbuf *diag = (struct sclp_diag_evbuf *) evbuf;




 if (evbuf->type != EVTYP_DIAG_TEST ||
     diag->route != SCLP_DIAG_FTP_ROUTE ||
     diag->mdd.ftp.pcx != SCLP_DIAG_FTP_XPCX ||
     evbuf->length < SCLP_DIAG_FTP_EVBUF_LEN)
  return;
 sclp_ftp_ldflg = diag->mdd.ftp.ldflg;
 sclp_ftp_fsize = diag->mdd.ftp.fsize;
 sclp_ftp_length = diag->mdd.ftp.length;

 complete(&sclp_ftp_rx_complete);
}
