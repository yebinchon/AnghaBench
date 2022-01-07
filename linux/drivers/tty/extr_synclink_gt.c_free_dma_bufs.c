
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int tbuf_count; int tbufs; int rbuf_count; int rbufs; scalar_t__ bufs; } ;


 int free_bufs (struct slgt_info*,int ,int ) ;
 int free_desc (struct slgt_info*) ;
 int free_tmp_rbuf (struct slgt_info*) ;

__attribute__((used)) static void free_dma_bufs(struct slgt_info *info)
{
 if (info->bufs) {
  free_bufs(info, info->rbufs, info->rbuf_count);
  free_bufs(info, info->tbufs, info->tbuf_count);
  free_desc(info);
 }
 free_tmp_rbuf(info);
}
