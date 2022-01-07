
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;


 int EAGAIN ;
 int ENXIO ;
 int css_probe_device (struct subchannel_id,struct schib*) ;
 int stsch (struct subchannel_id,struct schib*) ;

__attribute__((used)) static int css_evaluate_new_subchannel(struct subchannel_id schid, int slow)
{
 struct schib schib;
 int ccode;

 if (!slow) {

  return -EAGAIN;
 }






 ccode = stsch(schid, &schib);
 if (ccode)
  return (ccode == 3) ? -ENXIO : ccode;

 return css_probe_device(schid, &schib);
}
