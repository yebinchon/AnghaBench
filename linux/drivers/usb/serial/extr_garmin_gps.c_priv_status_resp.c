
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct garmin_data {int mode; int serial_num; scalar_t__ privpkt; } ;
typedef int __u8 ;
typedef int __le32 ;


 int GARMIN_LAYERID_PRIVATE ;
 int PRIV_PKTID_INFO_RESP ;
 int VERSION_MAJOR ;
 int VERSION_MINOR ;
 int __cpu_to_le32 (int) ;
 int send_to_tty (struct usb_serial_port*,int *,int) ;
 struct garmin_data* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void priv_status_resp(struct usb_serial_port *port)
{
 struct garmin_data *garmin_data_p = usb_get_serial_port_data(port);
 __le32 *pkt = (__le32 *)garmin_data_p->privpkt;

 pkt[0] = __cpu_to_le32(GARMIN_LAYERID_PRIVATE);
 pkt[1] = __cpu_to_le32(PRIV_PKTID_INFO_RESP);
 pkt[2] = __cpu_to_le32(12);
 pkt[3] = __cpu_to_le32(VERSION_MAJOR << 16 | VERSION_MINOR);
 pkt[4] = __cpu_to_le32(garmin_data_p->mode);
 pkt[5] = __cpu_to_le32(garmin_data_p->serial_num);

 send_to_tty(port, (__u8 *)pkt, 6 * 4);
}
