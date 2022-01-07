
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_tgt_cmd {int conf_compl_supported; TYPE_1__* qpair; } ;
struct TYPE_2__ {scalar_t__ enable_explicit_conf; scalar_t__ enable_class_2; } ;



__attribute__((used)) static inline int qlt_need_explicit_conf(struct qla_tgt_cmd *cmd,
    int sending_sense)
{
 if (cmd->qpair->enable_class_2)
  return 0;

 if (sending_sense)
  return cmd->conf_compl_supported;
 else
  return cmd->qpair->enable_explicit_conf &&
                    cmd->conf_compl_supported;
}
