
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271_rx_descriptor {int dummy; } ;
struct wl1271 {int dummy; } ;



__attribute__((used)) static u32 wl18xx_get_rx_packet_len(struct wl1271 *wl, void *rx_data,
        u32 data_len)
{
 struct wl1271_rx_descriptor *desc = rx_data;


 if (data_len < sizeof(*desc))
  return 0;

 return data_len - sizeof(*desc);
}
