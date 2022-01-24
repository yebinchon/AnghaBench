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
typedef  int u32 ;
struct TYPE_2__ {int id_header; int product; void* cert_stat; } ;
struct tcpm_port {int /*<<< orphan*/  partner; TYPE_1__ partner_ident; int /*<<< orphan*/  mode_data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t VDO_INDEX_CSTAT ; 
 size_t VDO_INDEX_IDH ; 
 size_t VDO_INDEX_PRODUCT ; 
 void* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpm_port*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tcpm_port *port, const __le32 *payload,
				  int cnt)
{
	u32 vdo = FUNC2(payload[VDO_INDEX_IDH]);
	u32 product = FUNC2(payload[VDO_INDEX_PRODUCT]);

	FUNC3(&port->mode_data, 0, sizeof(port->mode_data));

	port->partner_ident.id_header = vdo;
	port->partner_ident.cert_stat = FUNC2(payload[VDO_INDEX_CSTAT]);
	port->partner_ident.product = product;

	FUNC5(port->partner);

	FUNC4(port, "Identity: %04x:%04x.%04x",
		 FUNC0(vdo),
		 FUNC1(product), product & 0xffff);
}