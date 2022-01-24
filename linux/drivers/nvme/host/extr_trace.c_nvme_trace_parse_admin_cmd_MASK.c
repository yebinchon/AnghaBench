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
typedef  int u8 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
#define  nvme_admin_create_cq 134 
#define  nvme_admin_create_sq 133 
#define  nvme_admin_delete_cq 132 
#define  nvme_admin_delete_sq 131 
#define  nvme_admin_get_features 130 
#define  nvme_admin_get_lba_status 129 
#define  nvme_admin_identify 128 
 char const* FUNC0 (struct trace_seq*,int*) ; 
 char const* FUNC1 (struct trace_seq*,int*) ; 
 char const* FUNC2 (struct trace_seq*,int*) ; 
 char const* FUNC3 (struct trace_seq*,int*) ; 
 char const* FUNC4 (struct trace_seq*,int*) ; 
 char const* FUNC5 (struct trace_seq*,int*) ; 
 char const* FUNC6 (struct trace_seq*,int*) ; 
 char const* FUNC7 (struct trace_seq*,int*) ; 

const char *FUNC8(struct trace_seq *p,
				       u8 opcode, u8 *cdw10)
{
	switch (opcode) {
	case nvme_admin_delete_sq:
		return FUNC6(p, cdw10);
	case nvme_admin_create_sq:
		return FUNC4(p, cdw10);
	case nvme_admin_delete_cq:
		return FUNC5(p, cdw10);
	case nvme_admin_create_cq:
		return FUNC3(p, cdw10);
	case nvme_admin_identify:
		return FUNC1(p, cdw10);
	case nvme_admin_get_features:
		return FUNC0(p, cdw10);
	case nvme_admin_get_lba_status:
		return FUNC7(p, cdw10);
	default:
		return FUNC2(p, cdw10);
	}
}