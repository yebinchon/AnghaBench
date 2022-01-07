
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int dbg_ctx; } ;


 int QEDF_WARN (int *,char*,struct qedf_ctx*) ;

__attribute__((used)) static void qedf_simd_int_handler(void *cookie)
{

 struct qedf_ctx *qedf = (struct qedf_ctx *)cookie;

 QEDF_WARN(&(qedf->dbg_ctx), "qedf=%p.\n", qedf);
}
