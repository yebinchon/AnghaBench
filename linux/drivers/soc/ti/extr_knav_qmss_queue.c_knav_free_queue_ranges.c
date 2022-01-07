
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_range_info {int dummy; } ;
struct knav_device {int dummy; } ;


 struct knav_range_info* first_queue_range (struct knav_device*) ;
 int knav_free_queue_range (struct knav_device*,struct knav_range_info*) ;

__attribute__((used)) static void knav_free_queue_ranges(struct knav_device *kdev)
{
 struct knav_range_info *range;

 for (;;) {
  range = first_queue_range(kdev);
  if (!range)
   break;
  knav_free_queue_range(kdev, range);
 }
}
