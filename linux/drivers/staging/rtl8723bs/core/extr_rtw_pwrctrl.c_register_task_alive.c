
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwrctrl_priv {int alives; } ;



__attribute__((used)) static inline void register_task_alive(struct pwrctrl_priv *pwrctrl, u32 tag)
{
 pwrctrl->alives |= tag;
}
