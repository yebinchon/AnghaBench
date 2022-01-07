
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;





 int S_IRUGO ;

__attribute__((used)) static umode_t beiscsi_eth_get_attr_visibility(void *data, int type)
{
 umode_t rc = 0;

 switch (type) {
 case 130:
 case 128:
 case 129:
  rc = S_IRUGO;
  break;
 }
 return rc;
}
