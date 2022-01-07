
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eckd_count {int head; int record; } ;



__attribute__((used)) static int dasd_eckd_count_records(struct eckd_count *fmt_buffer, int start,
       int max)
{
 int head;
 int i;

 head = fmt_buffer[start].head;
 for (i = start; i < max; i++) {
  if (i > start) {
   if ((fmt_buffer[i].head == head &&
       fmt_buffer[i].record == 1) ||
       fmt_buffer[i].head != head ||
       fmt_buffer[i].record == 0)
    break;
  }
 }

 return i - start;
}
