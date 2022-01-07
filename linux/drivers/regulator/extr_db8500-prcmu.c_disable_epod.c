
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int EPOD_STATE_OFF ;
 int EPOD_STATE_RAMRET ;
 int* epod_on ;
 int* epod_ramret ;
 int prcmu_set_epod (size_t,int ) ;

__attribute__((used)) static int disable_epod(u16 epod_id, bool ramret)
{
 int ret;

 if (ramret) {
  if (!epod_on[epod_id]) {
   ret = prcmu_set_epod(epod_id, EPOD_STATE_OFF);
   if (ret < 0)
    return ret;
  }
  epod_ramret[epod_id] = 0;
 } else {
  if (epod_ramret[epod_id]) {
   ret = prcmu_set_epod(epod_id, EPOD_STATE_RAMRET);
   if (ret < 0)
    return ret;
  } else {
   ret = prcmu_set_epod(epod_id, EPOD_STATE_OFF);
   if (ret < 0)
    return ret;
  }
  epod_on[epod_id] = 0;
 }

 return 0;
}
