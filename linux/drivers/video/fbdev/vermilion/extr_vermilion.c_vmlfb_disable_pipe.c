
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_par {int dummy; } ;
struct vml_info {int pipe_disabled; struct vml_par* par; } ;


 int VML_DSPCCNTR ;
 int VML_GFX_ENABLE ;
 int VML_MDVO_VDC_I_RCOMP ;
 int VML_PIPEACONF ;
 int VML_RCOMPSTAT ;
 int VML_READ32 (struct vml_par*,int ) ;
 int VML_WRITE32 (struct vml_par*,int ,int) ;
 int vml_wait_vblank (struct vml_info*) ;

__attribute__((used)) static void vmlfb_disable_pipe(struct vml_info *vinfo)
{
 struct vml_par *par = vinfo->par;


 VML_WRITE32(par, VML_RCOMPSTAT, 0);
 while (!(VML_READ32(par, VML_RCOMPSTAT) & VML_MDVO_VDC_I_RCOMP)) ;


 VML_WRITE32(par, VML_DSPCCNTR,
      VML_READ32(par, VML_DSPCCNTR) & ~VML_GFX_ENABLE);
 (void)VML_READ32(par, VML_DSPCCNTR);

 vml_wait_vblank(vinfo);


 VML_WRITE32(par, VML_PIPEACONF, 0);
 (void)VML_READ32(par, VML_PIPEACONF);

 vinfo->pipe_disabled = 1;
}
