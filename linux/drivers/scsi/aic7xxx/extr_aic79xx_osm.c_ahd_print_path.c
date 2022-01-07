
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int dummy; } ;
struct ahd_softc {TYPE_2__* platform_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_no; } ;


 char SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int printk (char*,int ,char,int,int) ;

void
ahd_print_path(struct ahd_softc *ahd, struct scb *scb)
{
 printk("(scsi%d:%c:%d:%d): ",
        ahd->platform_data->host->host_no,
        scb != ((void*)0) ? SCB_GET_CHANNEL(ahd, scb) : 'X',
        scb != ((void*)0) ? SCB_GET_TARGET(ahd, scb) : -1,
        scb != ((void*)0) ? SCB_GET_LUN(scb) : -1);
}
