
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
struct samsung_laptop {TYPE_1__ debug; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void samsung_debugfs_exit(struct samsung_laptop *samsung)
{
 debugfs_remove_recursive(samsung->debug.root);
}
