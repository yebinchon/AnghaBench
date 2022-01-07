
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla27xx_fwdt_template {int template_size; } ;


 scalar_t__ qla27xx_template_checksum (struct qla27xx_fwdt_template*,int ) ;

__attribute__((used)) static inline int
qla27xx_verify_template_checksum(struct qla27xx_fwdt_template *tmp)
{
 return qla27xx_template_checksum(tmp, tmp->template_size) == 0;
}
