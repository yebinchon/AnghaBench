
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int dummy; } ;


 int ISP5_IRQENABLE_CLR (int ) ;
 int OMAP4_ISS_MEM_ISP_SYS1 ;
 int iss_reg_write (struct iss_device*,int ,int ,int ) ;

__attribute__((used)) static void omap4iss_isp_disable_interrupts(struct iss_device *iss)
{
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_IRQENABLE_CLR(0), ~0);
}
