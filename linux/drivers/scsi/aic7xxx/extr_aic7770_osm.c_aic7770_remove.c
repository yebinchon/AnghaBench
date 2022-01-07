
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct device {int dummy; } ;
struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {scalar_t__ host; } ;


 int FALSE ;
 int ahc_free (struct ahc_softc*) ;
 int ahc_intr_enable (struct ahc_softc*,int ) ;
 int ahc_lock (struct ahc_softc*,int *) ;
 int ahc_unlock (struct ahc_softc*,int *) ;
 struct ahc_softc* dev_get_drvdata (struct device*) ;
 int scsi_remove_host (scalar_t__) ;

__attribute__((used)) static int
aic7770_remove(struct device *dev)
{
 struct ahc_softc *ahc = dev_get_drvdata(dev);
 u_long s;

 if (ahc->platform_data && ahc->platform_data->host)
   scsi_remove_host(ahc->platform_data->host);

 ahc_lock(ahc, &s);
 ahc_intr_enable(ahc, FALSE);
 ahc_unlock(ahc, &s);

 ahc_free(ahc);
 return 0;
}
