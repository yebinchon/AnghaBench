
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipe_device {int dummy; } ;
struct iss_device {int dev; } ;


 int GCK_MMR ;
 int IPIPE_PRINT_REGISTER (struct iss_device*,int ) ;
 int SRC_COL ;
 int SRC_EN ;
 int SRC_FMT ;
 int SRC_HPS ;
 int SRC_HSZ ;
 int SRC_MODE ;
 int SRC_VPS ;
 int SRC_VSZ ;
 int YUV_PHS ;
 int dev_dbg (int ,char*) ;
 struct iss_device* to_iss_device (struct iss_ipipe_device*) ;

__attribute__((used)) static void ipipe_print_status(struct iss_ipipe_device *ipipe)
{
 struct iss_device *iss = to_iss_device(ipipe);

 dev_dbg(iss->dev, "-------------IPIPE Register dump-------------\n");

 IPIPE_PRINT_REGISTER(iss, SRC_EN);
 IPIPE_PRINT_REGISTER(iss, SRC_MODE);
 IPIPE_PRINT_REGISTER(iss, SRC_FMT);
 IPIPE_PRINT_REGISTER(iss, SRC_COL);
 IPIPE_PRINT_REGISTER(iss, SRC_VPS);
 IPIPE_PRINT_REGISTER(iss, SRC_VSZ);
 IPIPE_PRINT_REGISTER(iss, SRC_HPS);
 IPIPE_PRINT_REGISTER(iss, SRC_HSZ);
 IPIPE_PRINT_REGISTER(iss, GCK_MMR);
 IPIPE_PRINT_REGISTER(iss, YUV_PHS);

 dev_dbg(iss->dev, "-----------------------------------------------\n");
}
