
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_scb {int scbidx; int status; } ;
struct orc_host {scalar_t__ base; } ;


 int ORCSCB_POST ;
 scalar_t__ ORC_PQUEUE ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void orc_exec_scb(struct orc_host * host, struct orc_scb * scb)
{
 scb->status = ORCSCB_POST;
 outb(scb->scbidx, host->base + ORC_PQUEUE);
}
