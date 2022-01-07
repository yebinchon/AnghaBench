
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmphw_ctrl {int dummy; } ;
struct mmp_overlay {int path; } ;


 struct mmphw_ctrl* path_to_ctrl (int ) ;

__attribute__((used)) static inline struct mmphw_ctrl *overlay_to_ctrl(struct mmp_overlay *overlay)
{
 return path_to_ctrl(overlay->path);
}
