
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sgi; int ch_offset; int bwmode; int ht_option; } ;
struct sta_info {TYPE_1__ htpriv; int raid; int qos_option; } ;
struct pkt_attrib {int ampdu_en; int retry_ctrl; int sgi; int ch_offset; int bwmode; int ht_en; int raid; int qos_en; scalar_t__ triggered; scalar_t__ eosp; scalar_t__ mdata; } ;



__attribute__((used)) static void update_attrib_phy_info(struct pkt_attrib *pattrib, struct sta_info *psta)
{
 pattrib->mdata = 0;
 pattrib->eosp = 0;
 pattrib->triggered = 0;


 pattrib->qos_en = psta->qos_option;

 pattrib->raid = psta->raid;
 pattrib->ht_en = psta->htpriv.ht_option;
 pattrib->bwmode = psta->htpriv.bwmode;
 pattrib->ch_offset = psta->htpriv.ch_offset;
 pattrib->sgi = psta->htpriv.sgi;
 pattrib->ampdu_en = 0;
 pattrib->retry_ctrl = 0;
}
