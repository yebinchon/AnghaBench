
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_6__ {TYPE_1__ list; } ;
struct TYPE_5__ {scalar_t__ num_packets; int packet_read_count; } ;


 int ENOMEM ;
 int do_packet_read (char*,struct list_head*,int,int,int*) ;
 int list_empty (struct list_head*) ;
 TYPE_3__ packet_data_head ;
 TYPE_2__ rbu_data ;

__attribute__((used)) static int packet_read_list(char *data, size_t * pread_length)
{
 struct list_head *ptemp_list;
 int temp_count = 0;
 int bytes_copied = 0;
 int bytes_read = 0;
 int remaining_bytes = 0;
 char *pdest = data;


 if (0 == rbu_data.num_packets)
  return -ENOMEM;

 remaining_bytes = *pread_length;
 bytes_read = rbu_data.packet_read_count;

 ptemp_list = (&packet_data_head.list)->next;
 while (!list_empty(ptemp_list)) {
  bytes_copied = do_packet_read(pdest, ptemp_list,
   remaining_bytes, bytes_read, &temp_count);
  remaining_bytes -= bytes_copied;
  bytes_read += bytes_copied;
  pdest += bytes_copied;




  if (remaining_bytes == 0)
   break;

  ptemp_list = ptemp_list->next;
 }

 *pread_length = bytes_read - rbu_data.packet_read_count;
 rbu_data.packet_read_count = bytes_read;
 return 0;
}
