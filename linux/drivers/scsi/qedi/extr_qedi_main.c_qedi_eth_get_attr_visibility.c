
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
__attribute__((used)) static umode_t qedi_eth_get_attr_visibility(void *data, int type)
{
 int rc = 1;

 switch (type) {
 case 135:
 case 131:
 case 133:
 case 132:
 case 129:
 case 134:
 case 130:
 case 128:
  rc = 0444;
  break;
 default:
  rc = 0;
  break;
 }
 return rc;
}
