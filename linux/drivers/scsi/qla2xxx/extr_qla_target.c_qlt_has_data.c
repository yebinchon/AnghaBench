
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_tgt_cmd {scalar_t__ bufflen; } ;



__attribute__((used)) static inline int qlt_has_data(struct qla_tgt_cmd *cmd)
{
 return cmd->bufflen > 0;
}
