
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int service_params; } ;


 int FCP_SPPF_TARG_FCN ;
 int ft_lport_lock ;
 int ft_tport_get (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ft_lport_add(struct fc_lport *lport, void *arg)
{
 mutex_lock(&ft_lport_lock);
 ft_tport_get(lport);
 lport->service_params |= FCP_SPPF_TARG_FCN;
 mutex_unlock(&ft_lport_lock);
}
