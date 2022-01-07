
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inverse ;
 void* mtrr ;
 int pmi_setpal ;
 void* simple_strtoul (char*,int *,int ) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;
 void* vram_remap ;
 void* vram_total ;
 int ypan ;

__attribute__((used)) static int vesafb_setup(char *options)
{
 char *this_opt;

 if (!options || !*options)
  return 0;

 while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
  if (!*this_opt) continue;

  if (! strcmp(this_opt, "inverse"))
   inverse=1;
  else if (! strcmp(this_opt, "redraw"))
   ypan=0;
  else if (! strcmp(this_opt, "ypan"))
   ypan=1;
  else if (! strcmp(this_opt, "ywrap"))
   ypan=2;
  else if (! strcmp(this_opt, "vgapal"))
   pmi_setpal=0;
  else if (! strcmp(this_opt, "pmipal"))
   pmi_setpal=1;
  else if (! strncmp(this_opt, "mtrr:", 5))
   mtrr = simple_strtoul(this_opt+5, ((void*)0), 0);
  else if (! strcmp(this_opt, "nomtrr"))
   mtrr=0;
  else if (! strncmp(this_opt, "vtotal:", 7))
   vram_total = simple_strtoul(this_opt+7, ((void*)0), 0);
  else if (! strncmp(this_opt, "vremap:", 7))
   vram_remap = simple_strtoul(this_opt+7, ((void*)0), 0);
 }
 return 0;
}
