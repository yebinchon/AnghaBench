
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lego_usb_tower {scalar_t__ read_buffer_length; scalar_t__ read_packet_length; int read_buffer_lock; scalar_t__ interrupt_in_done; scalar_t__ packet_timeout_jiffies; scalar_t__ read_last_arrival; } ;


 int jiffies ;
 int packet_timeout ;
 scalar_t__ read_buffer_size ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void tower_check_for_read_packet (struct lego_usb_tower *dev)
{
 spin_lock_irq (&dev->read_buffer_lock);
 if (!packet_timeout
     || time_after(jiffies, dev->read_last_arrival + dev->packet_timeout_jiffies)
     || dev->read_buffer_length == read_buffer_size) {
  dev->read_packet_length = dev->read_buffer_length;
 }
 dev->interrupt_in_done = 0;
 spin_unlock_irq (&dev->read_buffer_lock);
}
