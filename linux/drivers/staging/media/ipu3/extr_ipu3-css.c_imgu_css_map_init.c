
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int dummy; } ;
struct imgu_css_pipe {int ** abi_buffers; int sp_ddr_ptrs; int ** xmem_isp_stage_ptrs; int ** xmem_sp_stage_ptrs; } ;
struct imgu_css {struct imgu_css_pipe* pipes; int dev; } ;
struct imgu_abi_sp_stage {int dummy; } ;
struct imgu_abi_isp_stage {int dummy; } ;
struct imgu_abi_ddr_address_map {int dummy; } ;
struct imgu_abi_buffer {int dummy; } ;


 int ALIGN (int,int ) ;
 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int IMGU_ABI_ISP_DDR_WORD_BYTES ;
 unsigned int IMGU_ABI_MAX_STAGES ;
 unsigned int IPU3_CSS_PIPE_ID_NUM ;
 unsigned int IPU3_CSS_QUEUES ;
 struct imgu_device* dev_get_drvdata (int ) ;
 int imgu_css_binary_cleanup (struct imgu_css*,unsigned int) ;
 scalar_t__ imgu_css_binary_preallocate (struct imgu_css*,unsigned int) ;
 int imgu_dmamap_alloc (struct imgu_device*,int *,int) ;

__attribute__((used)) static int imgu_css_map_init(struct imgu_css *css, unsigned int pipe)
{
 struct imgu_device *imgu = dev_get_drvdata(css->dev);
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
 unsigned int p, q, i;


 for (p = 0; p < IPU3_CSS_PIPE_ID_NUM; p++)
  for (i = 0; i < IMGU_ABI_MAX_STAGES; i++) {
   if (!imgu_dmamap_alloc(imgu,
            &css_pipe->
            xmem_sp_stage_ptrs[p][i],
            sizeof(struct imgu_abi_sp_stage)))
    return -ENOMEM;
   if (!imgu_dmamap_alloc(imgu,
            &css_pipe->
            xmem_isp_stage_ptrs[p][i],
            sizeof(struct imgu_abi_isp_stage)))
    return -ENOMEM;
  }

 if (!imgu_dmamap_alloc(imgu, &css_pipe->sp_ddr_ptrs,
          ALIGN(sizeof(struct imgu_abi_ddr_address_map),
         IMGU_ABI_ISP_DDR_WORD_BYTES)))
  return -ENOMEM;

 for (q = 0; q < IPU3_CSS_QUEUES; q++) {
  unsigned int abi_buf_num = ARRAY_SIZE(css_pipe->abi_buffers[q]);

  for (i = 0; i < abi_buf_num; i++)
   if (!imgu_dmamap_alloc(imgu,
            &css_pipe->abi_buffers[q][i],
            sizeof(struct imgu_abi_buffer)))
    return -ENOMEM;
 }

 if (imgu_css_binary_preallocate(css, pipe)) {
  imgu_css_binary_cleanup(css, pipe);
  return -ENOMEM;
 }

 return 0;
}
