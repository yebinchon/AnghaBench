
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct address_space {TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_bdev; } ;


 int dax_writeback_mapping_range (struct address_space*,int ,struct writeback_control*) ;

__attribute__((used)) static int
ext2_dax_writepages(struct address_space *mapping, struct writeback_control *wbc)
{
 return dax_writeback_mapping_range(mapping,
   mapping->host->i_sb->s_bdev, wbc);
}
