
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct scb_tailq {int dummy; } ;
struct scb_list {int dummy; } ;
struct scb {int flags; } ;
struct TYPE_3__ {struct scb_tailq free_scbs; struct scb_list* free_scb_lists; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;
struct TYPE_4__ {int tqe; } ;


 int AHD_SET_SCB_COL_IDX (struct scb*,size_t) ;
 struct scb* LIST_FIRST (struct scb_list*) ;
 int LIST_INSERT_AFTER (struct scb*,struct scb*,int ) ;
 int LIST_INSERT_HEAD (struct scb_list*,struct scb*,int ) ;
 int SCB_ON_COL_LIST ;
 int TAILQ_INSERT_TAIL (struct scb_tailq*,struct scb*,int ) ;
 int collision_links ;
 TYPE_2__ links ;

__attribute__((used)) static void
ahd_add_col_list(struct ahd_softc *ahd, struct scb *scb, u_int col_idx)
{
 struct scb_list *free_list;
 struct scb_tailq *free_tailq;
 struct scb *first_scb;

 scb->flags |= SCB_ON_COL_LIST;
 AHD_SET_SCB_COL_IDX(scb, col_idx);
 free_list = &ahd->scb_data.free_scb_lists[col_idx];
 free_tailq = &ahd->scb_data.free_scbs;
 first_scb = LIST_FIRST(free_list);
 if (first_scb != ((void*)0)) {
  LIST_INSERT_AFTER(first_scb, scb, collision_links);
 } else {
  LIST_INSERT_HEAD(free_list, scb, collision_links);
  TAILQ_INSERT_TAIL(free_tailq, scb, links.tqe);
 }
}
