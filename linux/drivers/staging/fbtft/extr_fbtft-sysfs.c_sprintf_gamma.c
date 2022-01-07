
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int num_curves; unsigned int num_values; int lock; } ;
struct fbtft_par {TYPE_1__ gamma; } ;
typedef size_t ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
sprintf_gamma(struct fbtft_par *par, u32 *curves, char *buf)
{
 ssize_t len = 0;
 unsigned int i, j;

 mutex_lock(&par->gamma.lock);
 for (i = 0; i < par->gamma.num_curves; i++) {
  for (j = 0; j < par->gamma.num_values; j++)
   len += scnprintf(&buf[len], PAGE_SIZE,
        "%04x ", curves[i * par->gamma.num_values + j]);
  buf[len - 1] = '\n';
 }
 mutex_unlock(&par->gamma.lock);

 return len;
}
