
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {scalar_t__ offset; scalar_t__ msgram; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static bool qmp_message_empty(struct qmp *qmp)
{
 return readl(qmp->msgram + qmp->offset) == 0;
}
