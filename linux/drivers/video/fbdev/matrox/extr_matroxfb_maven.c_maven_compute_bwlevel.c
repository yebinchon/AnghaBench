
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct maven_data {TYPE_3__* primary_head; } ;
struct TYPE_4__ {int brightness; int contrast; } ;
struct TYPE_5__ {TYPE_1__ tvo_params; } ;
struct TYPE_6__ {TYPE_2__ altout; } ;


 int BLMIN ;
 int WLMAX ;
 int max (int const,int) ;
 int min (int const,int ) ;

__attribute__((used)) static void maven_compute_bwlevel (const struct maven_data* md,
       int *bl, int *wl) {
 const int b = md->primary_head->altout.tvo_params.brightness + BLMIN;
 const int c = md->primary_head->altout.tvo_params.contrast;

 *bl = max(b - c, BLMIN);
 *wl = min(b + c, WLMAX);
}
