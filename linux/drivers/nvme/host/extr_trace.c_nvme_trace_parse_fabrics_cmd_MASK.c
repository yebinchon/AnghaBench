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
#define  nvme_fabrics_type_connect 130 
#define  nvme_fabrics_type_property_get 129 
#define  nvme_fabrics_type_property_set 128 
 char const* FUNC0 (struct trace_seq*,int*) ; 
 char const* FUNC1 (struct trace_seq*,int*) ; 
 char const* FUNC2 (struct trace_seq*,int*) ; 
 char const* FUNC3 (struct trace_seq*,int*) ; 

const char *FUNC4(struct trace_seq *p,
		u8 fctype, u8 *spc)
{
	switch (fctype) {
	case nvme_fabrics_type_property_set:
		return FUNC3(p, spc);
	case nvme_fabrics_type_connect:
		return FUNC1(p, spc);
	case nvme_fabrics_type_property_get:
		return FUNC2(p, spc);
	default:
		return FUNC0(p, spc);
	}
}