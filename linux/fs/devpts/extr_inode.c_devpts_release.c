
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pts_fs_info {int sb; } ;


 int deactivate_super (int ) ;

void devpts_release(struct pts_fs_info *fsi)
{
 deactivate_super(fsi->sb);
}
