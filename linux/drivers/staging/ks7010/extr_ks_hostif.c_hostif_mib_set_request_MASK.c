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
struct ks_wlan_private {scalar_t__ dev_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  body; void* type; void* size; } ;
struct hostif_mib_set_request_t {TYPE_1__ mib_value; int /*<<< orphan*/  mib_attribute; } ;
typedef  enum mib_data_type { ____Placeholder_mib_data_type } mib_data_type ;
typedef  enum mib_attribute { ____Placeholder_mib_attribute } mib_attribute ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_BOOT ; 
 int /*<<< orphan*/  HIF_MIB_SET_REQ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct hostif_mib_set_request_t* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*,struct hostif_mib_set_request_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ks_wlan_private *priv,
				   enum mib_attribute attr,
				   enum mib_data_type type,
				   void *data, size_t size)
{
	struct hostif_mib_set_request_t *pp;

	if (priv->dev_state < DEVICE_STATE_BOOT)
		return;

	pp = FUNC3(sizeof(*pp), HIF_MIB_SET_REQ);
	if (!pp)
		return;

	pp->mib_attribute = FUNC1(attr);
	pp->mib_value.size = FUNC0(size);
	pp->mib_value.type = FUNC0(type);
	FUNC4(&pp->mib_value.body, data, size);

	FUNC5(priv, pp, FUNC2(sizeof(*pp) + size));
}