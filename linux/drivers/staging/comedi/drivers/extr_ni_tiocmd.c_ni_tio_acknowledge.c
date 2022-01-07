
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 int ni_tio_acknowledge_and_confirm (struct ni_gpct*,int *,int *,int *) ;

void ni_tio_acknowledge(struct ni_gpct *counter)
{
 ni_tio_acknowledge_and_confirm(counter, ((void*)0), ((void*)0), ((void*)0));
}
