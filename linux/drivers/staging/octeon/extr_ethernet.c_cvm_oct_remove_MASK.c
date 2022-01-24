#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct octeon_ethernet {int /*<<< orphan*/  port_periodic_work; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CVMX_FPA_OUTPUT_BUFFER_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ; 
 scalar_t__ CVMX_FPA_PACKET_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_PACKET_POOL_SIZE ; 
 scalar_t__ CVMX_FPA_WQE_POOL ; 
 int /*<<< orphan*/  CVMX_FPA_WQE_POOL_SIZE ; 
 int TOTAL_NUMBER_OF_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net_device** cvm_oct_device ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cvm_oct_poll_queue_stopping ; 
 int /*<<< orphan*/  cvm_oct_rx_refill_work ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 struct octeon_ethernet* FUNC11 (struct net_device*) ; 
 int num_packet_buffers ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int port;

	FUNC6();

	FUNC0(&cvm_oct_poll_queue_stopping);
	FUNC1(&cvm_oct_rx_refill_work);

	FUNC3();
	FUNC4();

	FUNC8();

	/* Free the ethernet devices */
	for (port = 0; port < TOTAL_NUMBER_OF_PORTS; port++) {
		if (cvm_oct_device[port]) {
			struct net_device *dev = cvm_oct_device[port];
			struct octeon_ethernet *priv = FUNC11(dev);

			FUNC1(&priv->port_periodic_work);

			FUNC5(dev);
			FUNC12(dev);
			FUNC10(dev);
			cvm_oct_device[port] = NULL;
		}
	}

	FUNC9();

	FUNC7();

	/* Free the HW pools */
	FUNC2(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
			      num_packet_buffers);
	FUNC2(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
			      num_packet_buffers);
	if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
		FUNC2(CVMX_FPA_OUTPUT_BUFFER_POOL,
				      CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 128);
	return 0;
}