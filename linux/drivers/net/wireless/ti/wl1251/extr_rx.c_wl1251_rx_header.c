
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1251_rx_descriptor {int dummy; } ;
struct wl1251 {TYPE_1__* data_path; scalar_t__ rx_current_buffer; } ;
struct TYPE_2__ {scalar_t__ rx_packet_ring_chunk_size; int rx_packet_ring_addr; } ;


 int wl1251_mem_read (struct wl1251*,int ,struct wl1251_rx_descriptor*,int) ;

__attribute__((used)) static void wl1251_rx_header(struct wl1251 *wl,
        struct wl1251_rx_descriptor *desc)
{
 u32 rx_packet_ring_addr;

 rx_packet_ring_addr = wl->data_path->rx_packet_ring_addr;
 if (wl->rx_current_buffer)
  rx_packet_ring_addr += wl->data_path->rx_packet_ring_chunk_size;

 wl1251_mem_read(wl, rx_packet_ring_addr, desc, sizeof(*desc));
}
