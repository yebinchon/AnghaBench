
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_td {int status; } ;
struct c67x00_hcd {int dummy; } ;


 int EILSEQ ;
 int EPIPE ;
 int ETIMEDOUT ;
 int TD_STATUSMASK_ERR ;
 int TD_STATUSMASK_STALL ;
 int TD_STATUSMASK_TMOUT ;
 int dbg_td (struct c67x00_hcd*,struct c67x00_td*,char*) ;

__attribute__((used)) static int c67x00_td_to_error(struct c67x00_hcd *c67x00, struct c67x00_td *td)
{
 if (td->status & TD_STATUSMASK_ERR) {
  dbg_td(c67x00, td, "ERROR_FLAG");
  return -EILSEQ;
 }
 if (td->status & TD_STATUSMASK_STALL) {

  return -EPIPE;
 }
 if (td->status & TD_STATUSMASK_TMOUT) {
  dbg_td(c67x00, td, "TIMEOUT");
  return -ETIMEDOUT;
 }

 return 0;
}
