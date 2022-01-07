
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 int acornscsi_dumplogline (int *,int,int) ;

__attribute__((used)) static
void acornscsi_dumplog(AS_Host *host, int target)
{
    do {
 acornscsi_dumplogline(host, target, 0);
 acornscsi_dumplogline(host, target, 1);
 acornscsi_dumplogline(host, target, 2);

 if (target == 8)
     break;

 target = 8;
    } while (1);
}
