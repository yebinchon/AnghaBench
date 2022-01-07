
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; scalar_t__ virtual; } ;
struct TYPE_7__ {scalar_t__ virtual; scalar_t__ physical; } ;
struct TYPE_6__ {int offset; scalar_t__ virtual; scalar_t__ physical; } ;
struct TYPE_5__ {int offset; scalar_t__ virtual; scalar_t__ physical; } ;
struct i810fb_par {TYPE_4__ cursor_heap; TYPE_3__ aperture; TYPE_2__ iring; TYPE_1__ fb; } ;



__attribute__((used)) static void i810_fix_pointers(struct i810fb_par *par)
{
       par->fb.physical = par->aperture.physical+(par->fb.offset << 12);
 par->fb.virtual = par->aperture.virtual+(par->fb.offset << 12);
 par->iring.physical = par->aperture.physical +
  (par->iring.offset << 12);
 par->iring.virtual = par->aperture.virtual +
  (par->iring.offset << 12);
 par->cursor_heap.virtual = par->aperture.virtual+
  (par->cursor_heap.offset << 12);
}
