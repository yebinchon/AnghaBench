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
typedef  int /*<<< orphan*/  u32 ;
struct xenvif {int dummy; } ;
struct xen_netif_ctrl_request {int type; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  XEN_NETBK_MAX_HASH_MAPPING_SIZE ; 
 int /*<<< orphan*/  XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  XEN_NETIF_CTRL_STATUS_SUCCESS ; 
#define  XEN_NETIF_CTRL_TYPE_GET_HASH_FLAGS 134 
#define  XEN_NETIF_CTRL_TYPE_GET_HASH_MAPPING_SIZE 133 
#define  XEN_NETIF_CTRL_TYPE_SET_HASH_ALGORITHM 132 
#define  XEN_NETIF_CTRL_TYPE_SET_HASH_FLAGS 131 
#define  XEN_NETIF_CTRL_TYPE_SET_HASH_KEY 130 
#define  XEN_NETIF_CTRL_TYPE_SET_HASH_MAPPING 129 
#define  XEN_NETIF_CTRL_TYPE_SET_HASH_MAPPING_SIZE 128 
 int /*<<< orphan*/  FUNC0 (struct xenvif*,struct xen_netif_ctrl_request const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xenvif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct xenvif *vif,
				 const struct xen_netif_ctrl_request *req)
{
	u32 status = XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED;
	u32 data = 0;

	switch (req->type) {
	case XEN_NETIF_CTRL_TYPE_SET_HASH_ALGORITHM:
		status = FUNC3(vif, req->data[0]);
		break;

	case XEN_NETIF_CTRL_TYPE_GET_HASH_FLAGS:
		status = FUNC2(vif, &data);
		break;

	case XEN_NETIF_CTRL_TYPE_SET_HASH_FLAGS:
		status = FUNC4(vif, req->data[0]);
		break;

	case XEN_NETIF_CTRL_TYPE_SET_HASH_KEY:
		status = FUNC5(vif, req->data[0],
					     req->data[1]);
		break;

	case XEN_NETIF_CTRL_TYPE_GET_HASH_MAPPING_SIZE:
		status = XEN_NETIF_CTRL_STATUS_SUCCESS;
		data = XEN_NETBK_MAX_HASH_MAPPING_SIZE;
		break;

	case XEN_NETIF_CTRL_TYPE_SET_HASH_MAPPING_SIZE:
		status = FUNC7(vif,
						      req->data[0]);
		break;

	case XEN_NETIF_CTRL_TYPE_SET_HASH_MAPPING:
		status = FUNC6(vif, req->data[0],
						 req->data[1],
						 req->data[2]);
		break;

	default:
		break;
	}

	FUNC0(vif, req, status, data);
	FUNC1(vif);
}