
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicfas408_priv {int qbase; int int_type; } ;


 int REG1 ;
 int outb (int ,int) ;

void qlogicfas408_disable_ints(struct qlogicfas408_priv *priv)
{
 int qbase = priv->qbase;
 int int_type = priv->int_type;

 REG1;
 outb(0, qbase + 0xb);
}
