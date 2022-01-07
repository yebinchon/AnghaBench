
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipeif_device {int dummy; } ;
struct iss_device {int dev; } ;


 int CADL ;
 int CADU ;
 int CCOLP ;
 int CFG1 ;
 int CFG2 ;
 int CTRL ;
 int HSIZE ;
 int IPIPEIF_PRINT_REGISTER (struct iss_device*,int ) ;
 int IRQENABLE_CLR (int ) ;
 int IRQENABLE_SET (int ) ;
 int IRQSTATUS (int ) ;
 int ISIF_PRINT_REGISTER (struct iss_device*,int ) ;
 int ISP5_PRINT_REGISTER (struct iss_device*,int ) ;
 int LNH ;
 int LNV ;
 int MODESET ;
 int SPH ;
 int SYNCEN ;
 int SYSCONFIG ;
 int VDINT (int ) ;
 int dev_dbg (int ,char*) ;
 struct iss_device* to_iss_device (struct iss_ipipeif_device*) ;

__attribute__((used)) static void ipipeif_print_status(struct iss_ipipeif_device *ipipeif)
{
 struct iss_device *iss = to_iss_device(ipipeif);

 dev_dbg(iss->dev, "-------------IPIPEIF Register dump-------------\n");

 IPIPEIF_PRINT_REGISTER(iss, CFG1);
 IPIPEIF_PRINT_REGISTER(iss, CFG2);

 ISIF_PRINT_REGISTER(iss, SYNCEN);
 ISIF_PRINT_REGISTER(iss, CADU);
 ISIF_PRINT_REGISTER(iss, CADL);
 ISIF_PRINT_REGISTER(iss, MODESET);
 ISIF_PRINT_REGISTER(iss, CCOLP);
 ISIF_PRINT_REGISTER(iss, SPH);
 ISIF_PRINT_REGISTER(iss, LNH);
 ISIF_PRINT_REGISTER(iss, LNV);
 ISIF_PRINT_REGISTER(iss, VDINT(0));
 ISIF_PRINT_REGISTER(iss, HSIZE);

 ISP5_PRINT_REGISTER(iss, SYSCONFIG);
 ISP5_PRINT_REGISTER(iss, CTRL);
 ISP5_PRINT_REGISTER(iss, IRQSTATUS(0));
 ISP5_PRINT_REGISTER(iss, IRQENABLE_SET(0));
 ISP5_PRINT_REGISTER(iss, IRQENABLE_CLR(0));

 dev_dbg(iss->dev, "-----------------------------------------------\n");
}
