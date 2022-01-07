
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int dummy; } ;
typedef enum target_prot_op { ____Placeholder_target_prot_op } target_prot_op ;


 int TARGET_PROT_NORMAL ;

__attribute__((used)) static enum target_prot_op iscsit_get_sup_prot_ops(struct iscsi_conn *conn)
{
 return TARGET_PROT_NORMAL;
}
