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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_port {int /*<<< orphan*/  d_id; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  status; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_ERP_ACTION_NONE ; 
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct zfcp_adapter*,struct zfcp_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(char *dbftag,
				      struct zfcp_adapter *adapter,
				      u64 port_name, u32 port_id)
{
	unsigned long flags;
	static /* don't waste stack */ struct zfcp_port tmpport;

	FUNC1(&adapter->erp_lock, flags);
	/* Stand-in zfcp port with fields just good enough for
	 * zfcp_dbf_rec_trig() and zfcp_dbf_set_common().
	 * Under lock because tmpport is static.
	 */
	FUNC0(&tmpport.status, -1); /* unknown */
	tmpport.wwpn = port_name;
	tmpport.d_id = port_id;
	FUNC3(dbftag, adapter, &tmpport, NULL,
			  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED,
			  ZFCP_ERP_ACTION_NONE);
	FUNC2(&adapter->erp_lock, flags);
}