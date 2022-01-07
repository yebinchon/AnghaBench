
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs; } ;


 int ENOMEM ;
 int S_IRUGO ;
 int debugfs_create_file (char*,int ,int *,int *,int *) ;
 TYPE_1__* pmc ;
 int powergate_fops ;

__attribute__((used)) static int tegra_powergate_debugfs_init(void)
{
 pmc->debugfs = debugfs_create_file("powergate", S_IRUGO, ((void*)0), ((void*)0),
        &powergate_fops);
 if (!pmc->debugfs)
  return -ENOMEM;

 return 0;
}
