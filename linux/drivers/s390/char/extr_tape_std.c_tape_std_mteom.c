
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;


 int MTBSR ;
 int MTFSF ;
 int MTFSR ;
 int MTREW ;
 int tape_mtop (struct tape_device*,int ,int) ;

int
tape_std_mteom(struct tape_device *device, int mt_count)
{
 int rc;




 if ((rc = tape_mtop(device, MTREW, 1)) < 0)
  return rc;







 do {
  if ((rc = tape_mtop(device, MTFSF, 1)) < 0)
   return rc;
  if ((rc = tape_mtop(device, MTFSR, 1)) < 0)
   return rc;
 } while (rc == 0);

 return tape_mtop(device, MTBSR, 1);
}
