
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct ffs_data {scalar_t__ flags; int setup_state; int state; TYPE_1__ ev; scalar_t__ eps_count; scalar_t__ interfaces_count; scalar_t__ strings_count; scalar_t__ ss_descs_count; scalar_t__ hs_descs_count; scalar_t__ fs_descs_count; scalar_t__ raw_descs_length; int * stringtabs; int * raw_strings; int * raw_descs; int * raw_descs_data; int * epfiles; } ;


 int ENTER () ;
 int FFS_NO_SETUP ;
 int FFS_READ_DESCRIPTORS ;
 int ffs_data_clear (struct ffs_data*) ;

__attribute__((used)) static void ffs_data_reset(struct ffs_data *ffs)
{
 ENTER();

 ffs_data_clear(ffs);

 ffs->epfiles = ((void*)0);
 ffs->raw_descs_data = ((void*)0);
 ffs->raw_descs = ((void*)0);
 ffs->raw_strings = ((void*)0);
 ffs->stringtabs = ((void*)0);

 ffs->raw_descs_length = 0;
 ffs->fs_descs_count = 0;
 ffs->hs_descs_count = 0;
 ffs->ss_descs_count = 0;

 ffs->strings_count = 0;
 ffs->interfaces_count = 0;
 ffs->eps_count = 0;

 ffs->ev.count = 0;

 ffs->state = FFS_READ_DESCRIPTORS;
 ffs->setup_state = FFS_NO_SETUP;
 ffs->flags = 0;
}
