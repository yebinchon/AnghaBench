
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_dbg_ctx {int dummy; } ;
typedef int ssize_t ;


 int QEDI_INFO (struct qedi_dbg_ctx*,int ,char*,scalar_t__) ;
 int QEDI_LOG_DEBUGFS ;
 scalar_t__ qedi_do_not_recover ;

__attribute__((used)) static ssize_t
qedi_dbg_do_not_recover_disable(struct qedi_dbg_ctx *qedi_dbg)
{
 if (qedi_do_not_recover)
  qedi_do_not_recover = 0;

 QEDI_INFO(qedi_dbg, QEDI_LOG_DEBUGFS, "do_not_recover=%d\n",
    qedi_do_not_recover);
 return 0;
}
