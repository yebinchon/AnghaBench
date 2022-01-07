
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int dev; } ;


 int CLKCTRL ;
 int CLKSTAT ;
 int CTRL ;
 int HL_IRQENABLE_CLR (int) ;
 int HL_IRQENABLE_SET (int) ;
 int HL_IRQSTATUS (int) ;
 int HL_REVISION ;
 int HL_SYSCONFIG ;
 int ISS_PRINT_REGISTER (struct iss_device*,int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void iss_print_status(struct iss_device *iss)
{
 dev_dbg(iss->dev, "-------------ISS HL Register dump-------------\n");

 ISS_PRINT_REGISTER(iss, HL_REVISION);
 ISS_PRINT_REGISTER(iss, HL_SYSCONFIG);
 ISS_PRINT_REGISTER(iss, HL_IRQSTATUS(5));
 ISS_PRINT_REGISTER(iss, HL_IRQENABLE_SET(5));
 ISS_PRINT_REGISTER(iss, HL_IRQENABLE_CLR(5));
 ISS_PRINT_REGISTER(iss, CTRL);
 ISS_PRINT_REGISTER(iss, CLKCTRL);
 ISS_PRINT_REGISTER(iss, CLKSTAT);

 dev_dbg(iss->dev, "-----------------------------------------------\n");
}
