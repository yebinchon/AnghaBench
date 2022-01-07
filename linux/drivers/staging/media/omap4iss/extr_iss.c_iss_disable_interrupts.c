
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {scalar_t__* regs; } ;


 int ISS_HL_IRQENABLE_CLR (int) ;
 size_t OMAP4_ISS_MEM_ISP_SYS1 ;
 int OMAP4_ISS_MEM_TOP ;
 int iss_reg_write (struct iss_device*,int ,int ,int ) ;
 int omap4iss_isp_disable_interrupts (struct iss_device*) ;

__attribute__((used)) static void iss_disable_interrupts(struct iss_device *iss)
{
 if (iss->regs[OMAP4_ISS_MEM_ISP_SYS1])
  omap4iss_isp_disable_interrupts(iss);

 iss_reg_write(iss, OMAP4_ISS_MEM_TOP, ISS_HL_IRQENABLE_CLR(5), ~0);
}
