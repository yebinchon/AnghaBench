
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_frame {int node; } ;


 int INIT_LIST_HEAD (int *) ;
 int qe_frame_clean (struct qe_frame*) ;

__attribute__((used)) static inline void qe_frame_init(struct qe_frame *frm)
{
 qe_frame_clean(frm);
 INIT_LIST_HEAD(&(frm->node));
}
