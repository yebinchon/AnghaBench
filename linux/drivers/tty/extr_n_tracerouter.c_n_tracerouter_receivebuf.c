
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_tracesink_datadrain (int *,int) ;
 int routelock ;

__attribute__((used)) static void n_tracerouter_receivebuf(struct tty_struct *tty,
     const unsigned char *cp,
     char *fp, int count)
{
 mutex_lock(&routelock);
 n_tracesink_datadrain((u8 *) cp, count);
 mutex_unlock(&routelock);
}
