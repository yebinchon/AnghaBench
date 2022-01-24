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
struct trace_seq {int dummy; } ;

/* Variables and functions */
#define  MAINTENANCE_IN 147 
#define  MAINTENANCE_OUT 146 
#define  READ_10 145 
#define  READ_12 144 
#define  READ_16 143 
#define  READ_6 142 
#define  SERVICE_ACTION_IN_16 141 
#define  UNMAP 140 
#define  VARIABLE_LENGTH_CMD 139 
#define  VERIFY 138 
#define  VERIFY_12 137 
#define  VERIFY_16 136 
#define  WRITE_10 135 
#define  WRITE_12 134 
#define  WRITE_16 133 
#define  WRITE_6 132 
#define  WRITE_SAME 131 
#define  WRITE_SAME_16 130 
#define  ZBC_IN 129 
#define  ZBC_OUT 128 
 char const* FUNC0 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC1 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC2 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC3 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC4 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC5 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC6 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC7 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC8 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC9 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC10 (struct trace_seq*,unsigned char*,int) ; 
 char const* FUNC11 (struct trace_seq*,unsigned char*,int) ; 

const char *
FUNC12(struct trace_seq *p, unsigned char *cdb, int len)
{
	switch (cdb[0]) {
	case READ_6:
	case WRITE_6:
		return FUNC6(p, cdb, len);
	case READ_10:
	case VERIFY:
	case WRITE_10:
	case WRITE_SAME:
		return FUNC3(p, cdb, len);
	case READ_12:
	case VERIFY_12:
	case WRITE_12:
		return FUNC4(p, cdb, len);
	case READ_16:
	case VERIFY_16:
	case WRITE_16:
	case WRITE_SAME_16:
		return FUNC5(p, cdb, len);
	case UNMAP:
		return FUNC8(p, cdb, len);
	case SERVICE_ACTION_IN_16:
		return FUNC7(p, cdb, len);
	case VARIABLE_LENGTH_CMD:
		return FUNC9(p, cdb, len);
	case MAINTENANCE_IN:
		return FUNC0(p, cdb, len);
	case MAINTENANCE_OUT:
		return FUNC1(p, cdb, len);
	case ZBC_IN:
		return FUNC10(p, cdb, len);
	case ZBC_OUT:
		return FUNC11(p, cdb, len);
	default:
		return FUNC2(p, cdb, len);
	}
}