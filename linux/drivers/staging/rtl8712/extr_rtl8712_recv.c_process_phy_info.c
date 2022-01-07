
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct _adapter {int dummy; } ;


 int process_link_qual (struct _adapter*,union recv_frame*) ;
 int process_rssi (struct _adapter*,union recv_frame*) ;
 int query_rx_phy_status (struct _adapter*,union recv_frame*) ;

__attribute__((used)) static void process_phy_info(struct _adapter *padapter,
        union recv_frame *prframe)
{
 query_rx_phy_status(padapter, prframe);
 process_rssi(padapter, prframe);
 process_link_qual(padapter, prframe);
}
