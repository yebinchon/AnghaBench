
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int dummy; } ;
struct imgu_css_pipe {int sp_ddr_ptrs; int ** xmem_isp_stage_ptrs; int ** xmem_sp_stage_ptrs; int ** abi_buffers; } ;
struct imgu_css {struct imgu_css_pipe* pipes; int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int IMGU_ABI_MAX_STAGES ;
 unsigned int IPU3_CSS_PIPE_ID_NUM ;
 unsigned int IPU3_CSS_QUEUES ;
 struct imgu_device* dev_get_drvdata (int ) ;
 int imgu_css_binary_cleanup (struct imgu_css*,unsigned int) ;
 int imgu_dmamap_free (struct imgu_device*,int *) ;

__attribute__((used)) static void imgu_css_pipe_cleanup(struct imgu_css *css, unsigned int pipe)
{
 struct imgu_device *imgu = dev_get_drvdata(css->dev);
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
 unsigned int p, q, i, abi_buf_num;

 imgu_css_binary_cleanup(css, pipe);

 for (q = 0; q < IPU3_CSS_QUEUES; q++) {
  abi_buf_num = ARRAY_SIZE(css_pipe->abi_buffers[q]);
  for (i = 0; i < abi_buf_num; i++)
   imgu_dmamap_free(imgu, &css_pipe->abi_buffers[q][i]);
 }

 for (p = 0; p < IPU3_CSS_PIPE_ID_NUM; p++)
  for (i = 0; i < IMGU_ABI_MAX_STAGES; i++) {
   imgu_dmamap_free(imgu,
      &css_pipe->xmem_sp_stage_ptrs[p][i]);
   imgu_dmamap_free(imgu,
      &css_pipe->xmem_isp_stage_ptrs[p][i]);
  }

 imgu_dmamap_free(imgu, &css_pipe->sp_ddr_ptrs);
}
