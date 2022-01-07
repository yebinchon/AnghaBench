
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int dbr_size; int channel; int device; } ;


 int most_set_cfg_dbr_size (int ,int ,int ) ;

__attribute__((used)) static int set_cfg_dbr_size(struct mdev_link *link)
{
 return most_set_cfg_dbr_size(link->device, link->channel,
         link->dbr_size);
}
