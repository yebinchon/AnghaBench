
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int uwb_dev; } ;


 int uwb_dev_put (int *) ;

__attribute__((used)) static inline void __uwb_rc_put(struct uwb_rc *rc)
{
 if (rc)
  uwb_dev_put(&rc->uwb_dev);
}
