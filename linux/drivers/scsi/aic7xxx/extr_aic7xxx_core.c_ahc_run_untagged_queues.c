
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int * untagged_queues; } ;


 int ahc_run_untagged_queue (struct ahc_softc*,int *) ;

__attribute__((used)) static void
ahc_run_untagged_queues(struct ahc_softc *ahc)
{
 int i;

 for (i = 0; i < 16; i++)
  ahc_run_untagged_queue(ahc, &ahc->untagged_queues[i]);
}
