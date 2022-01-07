
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int link_state; int dbg_ctx; } ;
struct qed_link_output {scalar_t__ link_up; } ;


 int QEDI_INFO (int *,int ,char*) ;
 int QEDI_LINK_DOWN ;
 int QEDI_LINK_UP ;
 int QEDI_LOG_INFO ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void qedi_link_update(void *dev, struct qed_link_output *link)
{
 struct qedi_ctx *qedi = (struct qedi_ctx *)dev;

 if (link->link_up) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO, "Link Up event.\n");
  atomic_set(&qedi->link_state, QEDI_LINK_UP);
 } else {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
     "Link Down event.\n");
  atomic_set(&qedi->link_state, QEDI_LINK_DOWN);
 }
}
