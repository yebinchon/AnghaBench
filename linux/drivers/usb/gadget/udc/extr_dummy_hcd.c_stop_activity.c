
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy {int * ep; scalar_t__ address; } ;


 int DUMMY_ENDPOINTS ;
 int nuke (struct dummy*,int *) ;

__attribute__((used)) static void stop_activity(struct dummy *dum)
{
 int i;


 dum->address = 0;




 for (i = 0; i < DUMMY_ENDPOINTS; ++i)
  nuke(dum, &dum->ep[i]);


}
