
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct riva_par {TYPE_1__* chan; } ;
struct TYPE_2__ {int adapter; scalar_t__ par; } ;


 int * fb_ddc_read (int *) ;

int riva_probe_i2c_connector(struct riva_par *par, int conn, u8 **out_edid)
{
 u8 *edid = ((void*)0);

 if (par->chan[conn].par)
  edid = fb_ddc_read(&par->chan[conn].adapter);

 if (out_edid)
  *out_edid = edid;
 if (!edid)
  return 1;

 return 0;
}
