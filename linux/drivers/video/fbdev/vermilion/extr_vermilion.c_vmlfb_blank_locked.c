
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vml_par {int dummy; } ;
struct vml_info {int cur_blank_mode; int pipe_disabled; struct vml_par* par; } ;


 int EINVAL ;





 int VML_PIPEACONF ;
 int VML_PIPE_FORCE_BORDER ;
 int VML_READ32 (struct vml_par*,int ) ;
 int VML_WRITE32 (struct vml_par*,int ,int) ;
 int vmlfb_disable_pipe (struct vml_info*) ;
 int vmlfb_set_par_locked (struct vml_info*) ;

__attribute__((used)) static int vmlfb_blank_locked(struct vml_info *vinfo)
{
 struct vml_par *par = vinfo->par;
 u32 cur = VML_READ32(par, VML_PIPEACONF);

 switch (vinfo->cur_blank_mode) {
 case 129:
  if (vinfo->pipe_disabled) {
   vmlfb_set_par_locked(vinfo);
  }
  VML_WRITE32(par, VML_PIPEACONF, cur & ~VML_PIPE_FORCE_BORDER);
  (void)VML_READ32(par, VML_PIPEACONF);
  break;
 case 131:
  if (vinfo->pipe_disabled) {
   vmlfb_set_par_locked(vinfo);
  }
  VML_WRITE32(par, VML_PIPEACONF, cur | VML_PIPE_FORCE_BORDER);
  (void)VML_READ32(par, VML_PIPEACONF);
  break;
 case 128:
 case 132:
  if (!vinfo->pipe_disabled) {
   vmlfb_disable_pipe(vinfo);
  }
  break;
 case 130:
  if (!vinfo->pipe_disabled) {
   vmlfb_disable_pipe(vinfo);
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
