
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int dummy; } ;
struct zd_chip {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_iowrite32a_locked (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ;

int zd_iowrite32a(struct zd_chip *chip, const struct zd_ioreq32 *ioreqs,
           unsigned int count)
{
 int r;

 mutex_lock(&chip->mutex);
 r = zd_iowrite32a_locked(chip, ioreqs, count);
 mutex_unlock(&chip->mutex);
 return r;
}
