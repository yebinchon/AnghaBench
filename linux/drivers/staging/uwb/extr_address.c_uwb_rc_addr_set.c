
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uwb_rc_evt_dev_addr_mgmt {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mac_addr {int* data; } ;
struct uwb_dev_addr {int* data; } ;
typedef enum uwb_addr_type { ____Placeholder_uwb_addr_type } uwb_addr_type ;


 int EINVAL ;


 int uwb_rc_dev_addr_mgmt (struct uwb_rc*,int,int const*,struct uwb_rc_evt_dev_addr_mgmt*) ;

__attribute__((used)) static int uwb_rc_addr_set(struct uwb_rc *rc,
      const void *_addr, enum uwb_addr_type type)
{
 int result;
 u8 bmOperationType = 0x1;
 const struct uwb_dev_addr *dev_addr = _addr;
 const struct uwb_mac_addr *mac_addr = _addr;
 struct uwb_rc_evt_dev_addr_mgmt reply;
 const u8 *baAddr;

 result = -EINVAL;
 switch (type) {
 case 129:
  baAddr = dev_addr->data;
  break;
 case 128:
  baAddr = mac_addr->data;
  bmOperationType |= 0x2;
  break;
 default:
  return result;
 }
 return uwb_rc_dev_addr_mgmt(rc, bmOperationType, baAddr, &reply);
}
