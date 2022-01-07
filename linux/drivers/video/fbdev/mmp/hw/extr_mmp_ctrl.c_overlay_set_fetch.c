
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_overlay {int dmafetch_id; } ;



__attribute__((used)) static void overlay_set_fetch(struct mmp_overlay *overlay, int fetch_id)
{
 overlay->dmafetch_id = fetch_id;
}
