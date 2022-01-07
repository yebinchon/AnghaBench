
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb2_device {int mtx; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static inline void omapfb_lock(struct omapfb2_device *fbdev)
{
 mutex_lock(&fbdev->mtx);
}
