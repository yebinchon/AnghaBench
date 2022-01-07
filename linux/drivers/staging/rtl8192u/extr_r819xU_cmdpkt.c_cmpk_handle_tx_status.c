
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
typedef int cmpk_tx_status_t ;


 int cmpk_count_tx_status (struct net_device*,int *) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void cmpk_handle_tx_status(struct net_device *dev, u8 *pmsg)
{
 cmpk_tx_status_t rx_tx_sts;

 memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(cmpk_tx_status_t));

 cmpk_count_tx_status(dev, &rx_tx_sts);
}
