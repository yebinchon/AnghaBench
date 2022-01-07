
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct compressed_bio {int compress_type; } ;
struct TYPE_2__ {int (* decompress_bio ) (struct list_head*,struct compressed_bio*) ;} ;


 TYPE_1__** btrfs_compress_op ;
 struct list_head* get_workspace (int,int ) ;
 int put_workspace (int,struct list_head*) ;
 int stub1 (struct list_head*,struct compressed_bio*) ;

__attribute__((used)) static int btrfs_decompress_bio(struct compressed_bio *cb)
{
 struct list_head *workspace;
 int ret;
 int type = cb->compress_type;

 workspace = get_workspace(type, 0);
 ret = btrfs_compress_op[type]->decompress_bio(workspace, cb);
 put_workspace(type, workspace);

 return ret;
}
