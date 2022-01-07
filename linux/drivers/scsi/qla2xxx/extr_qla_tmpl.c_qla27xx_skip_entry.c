
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver_flags; } ;
struct qla27xx_fwdt_entry {TYPE_1__ hdr; } ;


 int DRIVER_FLAG_SKIP_ENTRY ;

__attribute__((used)) static inline void
qla27xx_skip_entry(struct qla27xx_fwdt_entry *ent, void *buf)
{
 if (buf)
  ent->hdr.driver_flags |= DRIVER_FLAG_SKIP_ENTRY;
}
