
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int release_resource (int *) ;
 int synth_res ;

int synth_release_region(unsigned long start, unsigned long n)
{
 return release_resource(&synth_res);
}
