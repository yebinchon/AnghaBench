
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int EPOD_STATE_ON ;
 int EPOD_STATE_RAMRET ;
 int* epod_on ;
 int* epod_ramret ;
 int prcmu_set_epod (size_t,int ) ;

__attribute__((used)) static int enable_epod(u16 epod_id, bool ramret)
{
 int ret;

 if (ramret) {
  if (!epod_on[epod_id]) {
   ret = prcmu_set_epod(epod_id, EPOD_STATE_RAMRET);
   if (ret < 0)
    return ret;
  }
  epod_ramret[epod_id] = 1;
 } else {
  ret = prcmu_set_epod(epod_id, EPOD_STATE_ON);
  if (ret < 0)
   return ret;
  epod_on[epod_id] = 1;
 }

 return 0;
}
