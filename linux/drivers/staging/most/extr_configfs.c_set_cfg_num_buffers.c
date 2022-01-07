
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int num_buffers; int channel; int device; } ;


 int most_set_cfg_num_buffers (int ,int ,int ) ;

__attribute__((used)) static int set_cfg_num_buffers(struct mdev_link *link)
{
 return most_set_cfg_num_buffers(link->device, link->channel,
     link->num_buffers);
}
