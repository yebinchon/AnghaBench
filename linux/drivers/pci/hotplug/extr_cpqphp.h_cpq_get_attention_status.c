
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct slot {scalar_t__ device; } ;
struct controller {scalar_t__ slot_device_offset; } ;


 int read_amber_LED (struct controller*,scalar_t__) ;

__attribute__((used)) static inline int cpq_get_attention_status(struct controller *ctrl, struct slot *slot)
{
 u8 hp_slot;

 hp_slot = slot->device - ctrl->slot_device_offset;

 return read_amber_LED(ctrl, hp_slot);
}
