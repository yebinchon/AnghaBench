
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int flags; } ;


 int QEDF_DBG_STOP_IO ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void qedf_stop_all_io(struct qedf_ctx *qedf)
{
 set_bit(QEDF_DBG_STOP_IO, &qedf->flags);
}
