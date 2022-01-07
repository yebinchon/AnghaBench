
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {int type; int id; } ;
struct gb_hid {int inbuf; int hid; } ;


 scalar_t__ gb_hid_get_report (struct gb_hid*,int ,int ,int ,unsigned int) ;
 unsigned int gb_hid_report_len (struct hid_report*) ;
 int hid_report_raw_event (int ,int ,int ,unsigned int,int) ;

__attribute__((used)) static void gb_hid_init_report(struct gb_hid *ghid, struct hid_report *report)
{
 unsigned int size;

 size = gb_hid_report_len(report);
 if (gb_hid_get_report(ghid, report->type, report->id, ghid->inbuf,
         size))
  return;






 hid_report_raw_event(ghid->hid, report->type, ghid->inbuf, size, 1);
}
