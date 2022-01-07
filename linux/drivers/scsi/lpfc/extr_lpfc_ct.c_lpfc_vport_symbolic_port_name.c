
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct TYPE_2__ {int brd_no; } ;


 int scnprintf (char*,size_t,char*,int ) ;

int
lpfc_vport_symbolic_port_name(struct lpfc_vport *vport, char *symbol,
 size_t size)
{
 int n;






 n = scnprintf(symbol, size, "%d", vport->phba->brd_no);
 return n;
}
