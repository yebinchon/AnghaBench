
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {scalar_t__ devt; } ;


 scalar_t__ MKDEV (int ,int) ;
 int TTYAUX_MAJOR ;

__attribute__((used)) static char *tty_devnode(struct device *dev, umode_t *mode)
{
 if (!mode)
  return ((void*)0);
 if (dev->devt == MKDEV(TTYAUX_MAJOR, 0) ||
     dev->devt == MKDEV(TTYAUX_MAJOR, 2))
  *mode = 0666;
 return ((void*)0);
}
