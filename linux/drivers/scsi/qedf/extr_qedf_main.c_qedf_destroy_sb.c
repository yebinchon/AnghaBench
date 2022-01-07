
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_fastpath {scalar_t__ sb_id; struct qedf_fastpath* sb_info; } ;
struct qedf_ctx {int num_queues; struct qedf_fastpath* fp_array; } ;


 scalar_t__ QEDF_SB_ID_NULL ;
 int kfree (struct qedf_fastpath*) ;
 int qedf_free_sb (struct qedf_ctx*,struct qedf_fastpath*) ;

__attribute__((used)) static void qedf_destroy_sb(struct qedf_ctx *qedf)
{
 int id;
 struct qedf_fastpath *fp = ((void*)0);

 for (id = 0; id < qedf->num_queues; id++) {
  fp = &(qedf->fp_array[id]);
  if (fp->sb_id == QEDF_SB_ID_NULL)
   break;
  qedf_free_sb(qedf, fp->sb_info);
  kfree(fp->sb_info);
 }
 kfree(qedf->fp_array);
}
