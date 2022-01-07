
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_entry {size_t len; void* buf; } ;


 int memcpy (void*,void*,size_t) ;
 int ntb_rx_copy_callback (struct ntb_queue_entry*,int *) ;
 int wmb () ;

__attribute__((used)) static void ntb_memcpy_rx(struct ntb_queue_entry *entry, void *offset)
{
 void *buf = entry->buf;
 size_t len = entry->len;

 memcpy(buf, offset, len);


 wmb();

 ntb_rx_copy_callback(entry, ((void*)0));
}
