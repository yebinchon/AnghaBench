
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_slot_info {int use_count; } ;



__attribute__((used)) static inline void
claim_slot(struct vchiq_slot_info *slot)
{
 slot->use_count++;
}
