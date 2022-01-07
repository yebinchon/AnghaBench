
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {int dummy; } ;


 int geoid ;

__attribute__((used)) static int fake_slot_get(struct vme_bridge *fake_bridge)
{
 return geoid;
}
