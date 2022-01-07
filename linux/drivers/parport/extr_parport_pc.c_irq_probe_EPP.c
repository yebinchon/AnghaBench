
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int modes; scalar_t__ irq; } ;


 int ECONTROL (struct parport*) ;
 int ECR_WRITE (struct parport*,unsigned char) ;
 int PARPORT_IRQ_NONE ;
 int PARPORT_MODE_PCECR ;
 int clear_epp_timeout (struct parport*) ;
 int frob_econtrol (struct parport*,int,int) ;
 unsigned char inb (int ) ;
 int parport_pc_frob_control (struct parport*,int,int) ;
 int parport_pc_read_epp (struct parport*) ;
 int parport_pc_write_control (struct parport*,int) ;
 scalar_t__ probe_irq_off (int) ;
 int probe_irq_on () ;
 int udelay (int) ;

__attribute__((used)) static int irq_probe_EPP(struct parport *pb)
{

 return PARPORT_IRQ_NONE;
}
