
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int SPP ;
 unsigned int gnttab_frames (unsigned int,int ) ;
 int * gnttab_interface ;

__attribute__((used)) static unsigned int nr_status_frames(unsigned int nr_grant_frames)
{
 BUG_ON(gnttab_interface == ((void*)0));
 return gnttab_frames(nr_grant_frames, SPP);
}
