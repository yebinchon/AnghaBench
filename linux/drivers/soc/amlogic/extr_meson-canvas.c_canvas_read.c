
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct meson_canvas {scalar_t__ reg_base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 canvas_read(struct meson_canvas *canvas, u32 reg)
{
 return readl_relaxed(canvas->reg_base + reg);
}
