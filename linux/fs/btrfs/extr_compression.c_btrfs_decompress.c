
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int (* decompress ) (struct list_head*,unsigned char*,struct page*,unsigned long,size_t,size_t) ;} ;


 TYPE_1__** btrfs_compress_op ;
 struct list_head* get_workspace (int,int ) ;
 int put_workspace (int,struct list_head*) ;
 int stub1 (struct list_head*,unsigned char*,struct page*,unsigned long,size_t,size_t) ;

int btrfs_decompress(int type, unsigned char *data_in, struct page *dest_page,
       unsigned long start_byte, size_t srclen, size_t destlen)
{
 struct list_head *workspace;
 int ret;

 workspace = get_workspace(type, 0);
 ret = btrfs_compress_op[type]->decompress(workspace, data_in,
        dest_page, start_byte,
        srclen, destlen);
 put_workspace(type, workspace);

 return ret;
}
