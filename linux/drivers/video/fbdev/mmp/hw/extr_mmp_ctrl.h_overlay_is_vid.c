
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_overlay {int dmafetch_id; } ;



__attribute__((used)) static inline int overlay_is_vid(struct mmp_overlay *overlay)
{
 return overlay->dmafetch_id & 1;
}
