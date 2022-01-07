
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_fastpath {int sb_id; int sb_info; } ;
struct qedi_ctx {int dbg_ctx; struct qedi_fastpath* fp_array; } ;


 int EIO ;
 int MIN_NUM_CPUS_MSIX (struct qedi_ctx*) ;
 int QEDI_ERR (int *,char*) ;
 int qedi_alloc_and_init_sb (struct qedi_ctx*,int ,int ) ;
 int qedi_alloc_fp (struct qedi_ctx*) ;
 int qedi_free_fp (struct qedi_ctx*) ;
 int qedi_free_sb (struct qedi_ctx*) ;
 int qedi_int_fp (struct qedi_ctx*) ;

__attribute__((used)) static int qedi_prepare_fp(struct qedi_ctx *qedi)
{
 struct qedi_fastpath *fp;
 int id, ret = 0;

 ret = qedi_alloc_fp(qedi);
 if (ret)
  goto err;

 qedi_int_fp(qedi);

 for (id = 0; id < MIN_NUM_CPUS_MSIX(qedi); id++) {
  fp = &qedi->fp_array[id];
  ret = qedi_alloc_and_init_sb(qedi, fp->sb_info, fp->sb_id);
  if (ret) {
   QEDI_ERR(&qedi->dbg_ctx,
     "SB allocation and initialization failed.\n");
   ret = -EIO;
   goto err_init;
  }
 }

 return 0;

err_init:
 qedi_free_sb(qedi);
 qedi_free_fp(qedi);
err:
 return ret;
}
