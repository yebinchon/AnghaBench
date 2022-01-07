
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qedf_ctx {int flogi_failed; } ;



__attribute__((used)) static u32 qedf_get_login_failures(void *cookie)
{
 struct qedf_ctx *qedf;

 qedf = (struct qedf_ctx *)cookie;
 return qedf->flogi_failed;
}
