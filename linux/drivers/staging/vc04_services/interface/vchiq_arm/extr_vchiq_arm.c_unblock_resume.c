
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_arm_state {scalar_t__ resume_blocked; int resume_blocker; } ;


 int complete_all (int *) ;

__attribute__((used)) static inline void
unblock_resume(struct vchiq_arm_state *arm_state)
{
 complete_all(&arm_state->resume_blocker);
 arm_state->resume_blocked = 0;
}
