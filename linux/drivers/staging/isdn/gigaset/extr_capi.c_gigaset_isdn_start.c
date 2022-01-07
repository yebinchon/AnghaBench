
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int goptions; int support1; int support2; int support3; int nbchannel; } ;
struct TYPE_4__ {int majorversion; int minormanuversion; int majormanuversion; scalar_t__ minorversion; } ;
struct TYPE_6__ {int serial; TYPE_2__ profile; TYPE_1__ version; int manu; } ;
struct gigaset_capi_ctr {TYPE_3__ ctr; } ;
struct cardstate {int channels; int * fwver; struct gigaset_capi_ctr* iif; } ;


 int capi_ctr_ready (TYPE_3__*) ;
 int strcpy (int ,char*) ;

void gigaset_isdn_start(struct cardstate *cs)
{
 struct gigaset_capi_ctr *iif = cs->iif;


 strcpy(iif->ctr.manu, "Siemens");

 iif->ctr.version.majorversion = 2;
 iif->ctr.version.minorversion = 0;

 iif->ctr.version.majormanuversion = cs->fwver[0];
 iif->ctr.version.minormanuversion = cs->fwver[1];

 iif->ctr.profile.nbchannel = cs->channels;

 iif->ctr.profile.goptions = 0x11;

 iif->ctr.profile.support1 = 0x03;


 iif->ctr.profile.support2 = 0x02;

 iif->ctr.profile.support3 = 0x01;

 strcpy(iif->ctr.serial, "0");
 capi_ctr_ready(&iif->ctr);
}
