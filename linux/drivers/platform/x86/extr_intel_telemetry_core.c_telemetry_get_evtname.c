
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;


 int EINVAL ;
 int TELEM_IOSS ;
 int TELEM_PSS ;
 int telemetry_get_iossevtname (int,char const**,int) ;
 int telemetry_get_pssevtname (int,char const**,int) ;

int telemetry_get_evtname(enum telemetry_unit telem_unit,
     const char **name, int len)
{
 int ret = -EINVAL;

 if (telem_unit == TELEM_PSS)
  ret = telemetry_get_pssevtname(telem_unit, name, len);

 else if (telem_unit == TELEM_IOSS)
  ret = telemetry_get_iossevtname(telem_unit, name, len);

 return ret;
}
