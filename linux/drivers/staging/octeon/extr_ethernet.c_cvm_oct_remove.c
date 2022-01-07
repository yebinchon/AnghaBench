
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct octeon_ethernet {int port_periodic_work; } ;
struct net_device {int dummy; } ;


 scalar_t__ CVMX_FPA_OUTPUT_BUFFER_POOL ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ;
 scalar_t__ CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 scalar_t__ CVMX_FPA_WQE_POOL ;
 int CVMX_FPA_WQE_POOL_SIZE ;
 int TOTAL_NUMBER_OF_PORTS ;
 int atomic_inc_return (int *) ;
 int cancel_delayed_work_sync (int *) ;
 struct net_device** cvm_oct_device ;
 int cvm_oct_mem_empty_fpa (scalar_t__,int ,int) ;
 int cvm_oct_poll_queue_stopping ;
 int cvm_oct_rx_refill_work ;
 int cvm_oct_rx_shutdown () ;
 int cvm_oct_tx_shutdown () ;
 int cvm_oct_tx_shutdown_dev (struct net_device*) ;
 int cvmx_ipd_disable () ;
 int cvmx_ipd_free_ptr () ;
 int cvmx_pko_disable () ;
 int cvmx_pko_shutdown () ;
 int free_netdev (struct net_device*) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int num_packet_buffers ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int cvm_oct_remove(struct platform_device *pdev)
{
 int port;

 cvmx_ipd_disable();

 atomic_inc_return(&cvm_oct_poll_queue_stopping);
 cancel_delayed_work_sync(&cvm_oct_rx_refill_work);

 cvm_oct_rx_shutdown();
 cvm_oct_tx_shutdown();

 cvmx_pko_disable();


 for (port = 0; port < TOTAL_NUMBER_OF_PORTS; port++) {
  if (cvm_oct_device[port]) {
   struct net_device *dev = cvm_oct_device[port];
   struct octeon_ethernet *priv = netdev_priv(dev);

   cancel_delayed_work_sync(&priv->port_periodic_work);

   cvm_oct_tx_shutdown_dev(dev);
   unregister_netdev(dev);
   free_netdev(dev);
   cvm_oct_device[port] = ((void*)0);
  }
 }

 cvmx_pko_shutdown();

 cvmx_ipd_free_ptr();


 cvm_oct_mem_empty_fpa(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
         num_packet_buffers);
 cvm_oct_mem_empty_fpa(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
         num_packet_buffers);
 if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
  cvm_oct_mem_empty_fpa(CVMX_FPA_OUTPUT_BUFFER_POOL,
          CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 128);
 return 0;
}
