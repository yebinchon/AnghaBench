
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resetMemory; scalar_t__ setAllEngOff; scalar_t__ powerMode; scalar_t__ master_clk; scalar_t__ mem_clk; scalar_t__ chip_clk; } ;
struct sm750_dev {int nocrt; scalar_t__ revid; int fb_count; void* dataflow; TYPE_2__* pdev; int pnltype; TYPE_1__ initParm; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ SM750LE_REVISION_ID ;
 int dev_info (int *,char*,char*) ;
 int dev_warn (int *,char*) ;
 char** g_fbmode ;
 int g_hwcursor ;
 int sm750_24TFT ;
 int sm750_doubleTFT ;
 int sm750_dualTFT ;
 void* sm750_dual_normal ;
 void* sm750_dual_swap ;
 void* sm750_simul_pri ;
 void* sm750_simul_sec ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
{
 char *opt;
 int swap;

 swap = 0;

 sm750_dev->initParm.chip_clk = 0;
 sm750_dev->initParm.mem_clk = 0;
 sm750_dev->initParm.master_clk = 0;
 sm750_dev->initParm.powerMode = 0;
 sm750_dev->initParm.setAllEngOff = 0;
 sm750_dev->initParm.resetMemory = 1;


 g_hwcursor = 3;

 if (!src || !*src) {
  dev_warn(&sm750_dev->pdev->dev, "no specific g_option.\n");
  goto NO_PARAM;
 }

 while ((opt = strsep(&src, ":")) != ((void*)0) && *opt != 0) {
  dev_info(&sm750_dev->pdev->dev, "opt=%s\n", opt);
  dev_info(&sm750_dev->pdev->dev, "src=%s\n", src);

  if (!strncmp(opt, "swap", strlen("swap"))) {
   swap = 1;
  } else if (!strncmp(opt, "nocrt", strlen("nocrt"))) {
   sm750_dev->nocrt = 1;
  } else if (!strncmp(opt, "36bit", strlen("36bit"))) {
   sm750_dev->pnltype = sm750_doubleTFT;
  } else if (!strncmp(opt, "18bit", strlen("18bit"))) {
   sm750_dev->pnltype = sm750_dualTFT;
  } else if (!strncmp(opt, "24bit", strlen("24bit"))) {
   sm750_dev->pnltype = sm750_24TFT;
  } else if (!strncmp(opt, "nohwc0", strlen("nohwc0"))) {
   g_hwcursor &= ~0x1;
  } else if (!strncmp(opt, "nohwc1", strlen("nohwc1"))) {
   g_hwcursor &= ~0x2;
  } else if (!strncmp(opt, "nohwc", strlen("nohwc"))) {
   g_hwcursor = 0;
  } else {
   if (!g_fbmode[0]) {
    g_fbmode[0] = opt;
    dev_info(&sm750_dev->pdev->dev,
      "find fbmode0 : %s\n", g_fbmode[0]);
   } else if (!g_fbmode[1]) {
    g_fbmode[1] = opt;
    dev_info(&sm750_dev->pdev->dev,
      "find fbmode1 : %s\n", g_fbmode[1]);
   } else {
    dev_warn(&sm750_dev->pdev->dev, "How many view you wann set?\n");
   }
  }
 }

NO_PARAM:
 if (sm750_dev->revid != SM750LE_REVISION_ID) {
  if (sm750_dev->fb_count > 1) {
   if (swap)
    sm750_dev->dataflow = sm750_dual_swap;
   else
    sm750_dev->dataflow = sm750_dual_normal;
  } else {
   if (swap)
    sm750_dev->dataflow = sm750_simul_sec;
   else
    sm750_dev->dataflow = sm750_simul_pri;
  }
 } else {

  sm750_dev->dataflow = sm750_simul_sec;

  sm750_dev->nocrt = 0;
 }
}
