
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmap; } ;
struct cfb_info {TYPE_1__ fb; } ;


 int fb_alloc_cmap (int *,int ,int ) ;
 int kfree (struct cfb_info*) ;

__attribute__((used)) static void cyberpro_free_fb_info(struct cfb_info *cfb)
{
 if (cfb) {



  fb_alloc_cmap(&cfb->fb.cmap, 0, 0);

  kfree(cfb);
 }
}
