
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qeth_ipaddr {int type; int ipato; } ;


 int QETH_IPA_DELIP_VIPA_FLAG ;
 int QETH_IPA_SETIP_TAKEOVER_FLAG ;
 int QETH_IPA_SETIP_VIPA_FLAG ;



__attribute__((used)) static u32 qeth_l3_get_setdelip_flags(struct qeth_ipaddr *addr, bool set)
{
 switch (addr->type) {
 case 129:
  return (set) ? QETH_IPA_SETIP_TAKEOVER_FLAG : 0;
 case 128:
  return (set) ? QETH_IPA_SETIP_VIPA_FLAG :
          QETH_IPA_DELIP_VIPA_FLAG;
 default:
  return (set && addr->ipato) ? QETH_IPA_SETIP_TAKEOVER_FLAG : 0;
 }
}
