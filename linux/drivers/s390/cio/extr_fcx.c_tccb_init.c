
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tcal; int sac; int format; } ;
struct tccb {TYPE_1__ tcah; } ;


 int TCCB_FORMAT_DEFAULT ;
 int memset (struct tccb*,int ,size_t) ;

void tccb_init(struct tccb *tccb, size_t size, u32 sac)
{
 memset(tccb, 0, size);
 tccb->tcah.format = TCCB_FORMAT_DEFAULT;
 tccb->tcah.sac = sac;
 tccb->tcah.tcal = 12;
}
