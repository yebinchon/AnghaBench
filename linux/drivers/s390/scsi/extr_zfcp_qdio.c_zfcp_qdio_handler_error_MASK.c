#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int QDIO_ERROR_SLSB_STATE ; 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC4(struct zfcp_qdio *qdio, char *dbftag,
				    unsigned int qdio_err)
{
	struct zfcp_adapter *adapter = qdio->adapter;

	FUNC0(&adapter->ccw_device->dev, "A QDIO problem occurred\n");

	if (qdio_err & QDIO_ERROR_SLSB_STATE) {
		FUNC3(adapter);
		FUNC2(adapter, 0, dbftag);
		return;
	}
	FUNC1(adapter,
				ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
				ZFCP_STATUS_COMMON_ERP_FAILED, dbftag);
}