
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {scalar_t__ rbuf_fill_count; scalar_t__ rbuf_fill_index; scalar_t__ rbuf_count; } ;


 int free_rbufs (struct slgt_info*,int ,scalar_t__) ;

__attribute__((used)) static void reset_rbufs(struct slgt_info *info)
{
 free_rbufs(info, 0, info->rbuf_count - 1);
 info->rbuf_fill_index = 0;
 info->rbuf_fill_count = 0;
}
