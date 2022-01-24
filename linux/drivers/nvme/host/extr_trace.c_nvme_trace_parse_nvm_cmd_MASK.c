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
#define  nvme_cmd_dsm 131 
#define  nvme_cmd_read 130 
#define  nvme_cmd_write 129 
#define  nvme_cmd_write_zeroes 128 
 char const* FUNC0 (struct trace_seq*,int*) ; 
 char const* FUNC1 (struct trace_seq*,int*) ; 
 char const* FUNC2 (struct trace_seq*,int*) ; 

const char *FUNC3(struct trace_seq *p,
				     u8 opcode, u8 *cdw10)
{
	switch (opcode) {
	case nvme_cmd_read:
	case nvme_cmd_write:
	case nvme_cmd_write_zeroes:
		return FUNC2(p, cdw10);
	case nvme_cmd_dsm:
		return FUNC1(p, cdw10);
	default:
		return FUNC0(p, cdw10);
	}
}