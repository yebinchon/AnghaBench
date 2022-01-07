
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct expansion_card {int dummy; } ;
struct Scsi_Host {int irq; scalar_t__ hostdata; } ;
struct TYPE_6__ {int issue; int disconnected; } ;
struct TYPE_5__ {int msgs; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ fast; TYPE_2__ queues; TYPE_1__ scsi; } ;
typedef TYPE_3__ AS_Host ;


 scalar_t__ PAGE_REG ;
 struct Scsi_Host* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int ecardm_iounmap (struct expansion_card*,scalar_t__) ;
 int free_irq (int ,TYPE_3__*) ;
 int msgqueue_free (int *) ;
 int queue_free (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void acornscsi_remove(struct expansion_card *ec)
{
 struct Scsi_Host *host = ecard_get_drvdata(ec);
 AS_Host *ashost = (AS_Host *)host->hostdata;

 ecard_set_drvdata(ec, ((void*)0));
 scsi_remove_host(host);




 writeb(0x80, ashost->fast + PAGE_REG);

 free_irq(host->irq, ashost);

 msgqueue_free(&ashost->scsi.msgs);
 queue_free(&ashost->queues.disconnected);
 queue_free(&ashost->queues.issue);
 ecardm_iounmap(ec, ashost->fast);
 ecardm_iounmap(ec, ashost->base);
 scsi_host_put(host);
 ecard_release_resources(ec);
}
