
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int state; } ;


 int atomic_read (int *) ;

int
snic_get_state(struct snic *snic)
{
 return atomic_read(&snic->state);
}
