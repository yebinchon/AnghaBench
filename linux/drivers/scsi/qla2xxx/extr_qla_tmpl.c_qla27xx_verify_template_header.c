
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla27xx_fwdt_template {int template_type; } ;


 scalar_t__ TEMPLATE_TYPE_FWDUMP ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline int
qla27xx_verify_template_header(struct qla27xx_fwdt_template *tmp)
{
 return le32_to_cpu(tmp->template_type) == TEMPLATE_TYPE_FWDUMP;
}
