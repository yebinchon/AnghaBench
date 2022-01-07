
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int rbuf_count; int tbuf_count; int device_name; int tbufs; int rbufs; } ;


 int DBGERR (char*) ;
 int ENOMEM ;
 scalar_t__ alloc_bufs (struct slgt_info*,int ,int) ;
 scalar_t__ alloc_desc (struct slgt_info*) ;
 scalar_t__ alloc_tmp_rbuf (struct slgt_info*) ;
 int reset_rbufs (struct slgt_info*) ;

__attribute__((used)) static int alloc_dma_bufs(struct slgt_info *info)
{
 info->rbuf_count = 32;
 info->tbuf_count = 32;

 if (alloc_desc(info) < 0 ||
     alloc_bufs(info, info->rbufs, info->rbuf_count) < 0 ||
     alloc_bufs(info, info->tbufs, info->tbuf_count) < 0 ||
     alloc_tmp_rbuf(info) < 0) {
  DBGERR(("%s DMA buffer alloc fail\n", info->device_name));
  return -ENOMEM;
 }
 reset_rbufs(info);
 return 0;
}
