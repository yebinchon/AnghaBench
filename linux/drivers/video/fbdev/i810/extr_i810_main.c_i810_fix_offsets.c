
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int size; } ;
struct TYPE_7__ {int offset; int size; } ;
struct TYPE_6__ {int size; int offset; } ;
struct TYPE_5__ {int size; } ;
struct i810fb_par {TYPE_4__ cursor_heap; TYPE_3__ iring; TYPE_2__ fb; TYPE_1__ aperture; } ;


 int RINGBUFFER_SIZE ;
 int v_offset_default ;
 int vram ;

__attribute__((used)) static void i810_fix_offsets(struct i810fb_par *par)
{
 if (vram + 1 > par->aperture.size >> 20)
  vram = (par->aperture.size >> 20) - 1;
 if (v_offset_default > (par->aperture.size >> 20))
  v_offset_default = (par->aperture.size >> 20);
 if (vram + v_offset_default + 1 > par->aperture.size >> 20)
  v_offset_default = (par->aperture.size >> 20) - (vram + 1);

 par->fb.size = vram << 20;
 par->fb.offset = v_offset_default << 20;
 par->fb.offset >>= 12;

 par->iring.offset = par->fb.offset + (par->fb.size >> 12);
 par->iring.size = RINGBUFFER_SIZE;

 par->cursor_heap.offset = par->iring.offset + (RINGBUFFER_SIZE >> 12);
 par->cursor_heap.size = 4096;
}
