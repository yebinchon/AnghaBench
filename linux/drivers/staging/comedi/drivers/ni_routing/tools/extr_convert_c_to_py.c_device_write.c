
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_device_routes {char* device; TYPE_1__* routes; } ;
struct TYPE_2__ {scalar_t__ dest; scalar_t__* src; } ;
typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int is_valid_ni_sig (scalar_t__) ;
 int stderr ;

void device_write(const struct ni_device_routes *dR, FILE *fp)
{
 fprintf(fp,
  "  \"%s\" : {\n"
  "    # dest -> [src0, src1, ...]\n"
  , dR->device);

 unsigned int i = 0;

 while (dR->routes[i].dest != 0) {
  if (!is_valid_ni_sig(dR->routes[i].dest)) {
   fprintf(stderr,
    "Invalid NI signal value [%u] for destination %s.[%u]\n",
    dR->routes[i].dest, dR->device, i);
   exit(1);
  }

  fprintf(fp, "    %u : [", dR->routes[i].dest);

  unsigned int j = 0;

  while (dR->routes[i].src[j] != 0) {
   if (!is_valid_ni_sig(dR->routes[i].src[j])) {
    fprintf(stderr,
     "Invalid NI signal value [%u] for source %s.[%u].[%u]\n",
     dR->routes[i].src[j], dR->device, i, j);
    exit(1);
   }

   fprintf(fp, "%u,", dR->routes[i].src[j]);

   ++j;
  }
  fprintf(fp, "],\n");

  ++i;
 }
 fprintf(fp, "  },\n\n");
}
