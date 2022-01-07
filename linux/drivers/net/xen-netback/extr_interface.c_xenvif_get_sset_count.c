
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;

 int xenvif_stats ;

__attribute__((used)) static int xenvif_get_sset_count(struct net_device *dev, int string_set)
{
 switch (string_set) {
 case 128:
  return ARRAY_SIZE(xenvif_stats);
 default:
  return -EINVAL;
 }
}
