
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {char* infobuf; char* cardname; char** version; TYPE_1__* card; } ;
typedef TYPE_2__ avmctrl_info ;
struct TYPE_3__ {int port; int irq; int revision; } ;


 size_t VER_DRIVER ;
 int sprintf (char*,char*,char*,char*,int,int,int) ;

__attribute__((used)) static char *b1isa_procinfo(struct capi_ctr *ctrl)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);

 if (!cinfo)
  return "";
 sprintf(cinfo->infobuf, "%s %s 0x%x %d r%d",
  cinfo->cardname[0] ? cinfo->cardname : "-",
  cinfo->version[VER_DRIVER] ? cinfo->version[VER_DRIVER] : "-",
  cinfo->card ? cinfo->card->port : 0x0,
  cinfo->card ? cinfo->card->irq : 0,
  cinfo->card ? cinfo->card->revision : 0
  );
 return cinfo->infobuf;
}
