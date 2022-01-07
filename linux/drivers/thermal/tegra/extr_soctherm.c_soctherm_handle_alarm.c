
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;


 int EINVAL ;




 int pr_debug (char*) ;
 int pr_err (char*,int ) ;
 int * throt_names ;

__attribute__((used)) static int soctherm_handle_alarm(enum soctherm_throttle_id alarm)
{
 int rv = -EINVAL;

 switch (alarm) {
 case 131:
  pr_debug("soctherm: Successfully handled OC1 alarm\n");
  rv = 0;
  break;

 case 130:
  pr_debug("soctherm: Successfully handled OC2 alarm\n");
  rv = 0;
  break;

 case 129:
  pr_debug("soctherm: Successfully handled OC3 alarm\n");
  rv = 0;
  break;

 case 128:
  pr_debug("soctherm: Successfully handled OC4 alarm\n");
  rv = 0;
  break;

 default:
  break;
 }

 if (rv)
  pr_err("soctherm: ERROR in handling %s alarm\n",
         throt_names[alarm]);

 return rv;
}
