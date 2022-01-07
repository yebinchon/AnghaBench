
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codec_mpeg12 {int workspace_paddr; scalar_t__ workspace_vaddr; } ;
struct amvdec_session {struct amvdec_core* core; struct codec_mpeg12* priv; } ;
struct amvdec_core {int dev; } ;


 int SIZE_WORKSPACE ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int codec_mpeg12_stop(struct amvdec_session *sess)
{
 struct codec_mpeg12 *mpeg12 = sess->priv;
 struct amvdec_core *core = sess->core;

 if (mpeg12->workspace_vaddr)
  dma_free_coherent(core->dev, SIZE_WORKSPACE,
      mpeg12->workspace_vaddr,
      mpeg12->workspace_paddr);

 return 0;
}
