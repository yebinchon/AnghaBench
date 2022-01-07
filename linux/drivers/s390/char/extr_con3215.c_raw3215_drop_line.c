
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {scalar_t__ written; int head; int count; char* buffer; } ;


 int BUG_ON (int) ;
 int RAW3215_BUFFER_SIZE ;

__attribute__((used)) static void raw3215_drop_line(struct raw3215_info *raw)
{
 int ix;
 char ch;

 BUG_ON(raw->written != 0);
 ix = (raw->head - raw->count) & (RAW3215_BUFFER_SIZE - 1);
 while (raw->count > 0) {
  ch = raw->buffer[ix];
  ix = (ix + 1) & (RAW3215_BUFFER_SIZE - 1);
  raw->count--;
  if (ch == 0x15)
   break;
 }
 raw->head = ix;
}
