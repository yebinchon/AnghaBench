
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csi2_device {int available; int wait; void* state; int subclk; int * phy; int regs1; struct iss_device* iss; } ;
struct iss_device {int csiphy2; int csiphy1; struct iss_csi2_device csi2b; struct iss_csi2_device csi2a; } ;


 void* ISS_PIPELINE_STREAM_STOPPED ;
 int OMAP4_ISS_MEM_CSI2_A_REGS1 ;
 int OMAP4_ISS_MEM_CSI2_B_REGS1 ;
 int OMAP4_ISS_SUBCLK_CSI2_A ;
 int OMAP4_ISS_SUBCLK_CSI2_B ;
 int csi2_init_entities (struct iss_csi2_device*,char*) ;
 int init_waitqueue_head (int *) ;

int omap4iss_csi2_init(struct iss_device *iss)
{
 struct iss_csi2_device *csi2a = &iss->csi2a;
 struct iss_csi2_device *csi2b = &iss->csi2b;
 int ret;

 csi2a->iss = iss;
 csi2a->available = 1;
 csi2a->regs1 = OMAP4_ISS_MEM_CSI2_A_REGS1;
 csi2a->phy = &iss->csiphy1;
 csi2a->subclk = OMAP4_ISS_SUBCLK_CSI2_A;
 csi2a->state = ISS_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&csi2a->wait);

 ret = csi2_init_entities(csi2a, "a");
 if (ret < 0)
  return ret;

 csi2b->iss = iss;
 csi2b->available = 1;
 csi2b->regs1 = OMAP4_ISS_MEM_CSI2_B_REGS1;
 csi2b->phy = &iss->csiphy2;
 csi2b->subclk = OMAP4_ISS_SUBCLK_CSI2_B;
 csi2b->state = ISS_PIPELINE_STREAM_STOPPED;
 init_waitqueue_head(&csi2b->wait);

 ret = csi2_init_entities(csi2b, "b");
 if (ret < 0)
  return ret;

 return 0;
}
