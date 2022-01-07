
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int packets_per_xact; int channel; int device; } ;


 int most_set_cfg_packets_xact (int ,int ,int ) ;

__attribute__((used)) static int set_cfg_packets_xact(struct mdev_link *link)
{
 return most_set_cfg_packets_xact(link->device, link->channel,
      link->packets_per_xact);
}
