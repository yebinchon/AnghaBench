
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {int pending_mbos; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool data_ready(struct most_video_dev *mdev)
{
 return !list_empty(&mdev->pending_mbos);
}
