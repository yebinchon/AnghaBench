
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int fw_state; } ;
typedef enum qtnf_fw_state { ____Placeholder_qtnf_fw_state } qtnf_fw_state ;


 int QTNF_FW_STATE_ACTIVE ;
 int QTNF_FW_STATE_RUNNING ;

__attribute__((used)) static inline bool qtnf_fw_is_up(struct qtnf_bus *bus)
{
 enum qtnf_fw_state state = bus->fw_state;

 return ((state == QTNF_FW_STATE_ACTIVE) ||
  (state == QTNF_FW_STATE_RUNNING));
}
