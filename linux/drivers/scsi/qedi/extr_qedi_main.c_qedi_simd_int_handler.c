
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dbg_ctx; } ;


 int QEDI_WARN (int *,char*,struct qedi_ctx*) ;

__attribute__((used)) static void qedi_simd_int_handler(void *cookie)
{

 struct qedi_ctx *qedi = (struct qedi_ctx *)cookie;

 QEDI_WARN(&qedi->dbg_ctx, "qedi=%p.\n", qedi);
}
