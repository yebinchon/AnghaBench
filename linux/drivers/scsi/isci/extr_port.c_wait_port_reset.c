
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {int state; } ;
struct isci_host {int eventq; } ;


 int IPORT_RESET_PENDING ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void wait_port_reset(struct isci_host *ihost, struct isci_port *iport)
{
 wait_event(ihost->eventq, !test_bit(IPORT_RESET_PENDING, &iport->state));
}
