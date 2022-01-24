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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int EP_HAS_LSA ; 
 int EP_STATE_MASK ; 
 int FUNC8 (int) ; 
 int FUNC9 (char*,char*,...) ; 
 char* FUNC10 (int) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static inline const char *FUNC12(u32 info, u32 info2, u64 deq,
		u32 tx_info)
{
	static char str[1024];
	int ret;

	u32 esit;
	u16 maxp;
	u16 avg;

	u8 max_pstr;
	u8 ep_state;
	u8 interval;
	u8 ep_type;
	u8 burst;
	u8 cerr;
	u8 mult;

	bool lsa;
	bool hid;

	esit = FUNC6(info) << 16 |
		FUNC5(tx_info);

	ep_state = info & EP_STATE_MASK;
	max_pstr = FUNC1(info);
	interval = FUNC0(info);
	mult = FUNC2(info) + 1;
	lsa = !!(info & EP_HAS_LSA);

	cerr = (info2 & (3 << 1)) >> 1;
	ep_type = FUNC3(info2);
	hid = !!(info2 & (1 << 7));
	burst = FUNC4(info2);
	maxp = FUNC8(info2);

	avg = FUNC7(tx_info);

	ret = FUNC9(str, "State %s mult %d max P. Streams %d %s",
			FUNC10(ep_state), mult,
			max_pstr, lsa ? "LSA " : "");

	ret += FUNC9(str + ret, "interval %d us max ESIT payload %d CErr %d ",
			(1 << interval) * 125, esit, cerr);

	ret += FUNC9(str + ret, "Type %s %sburst %d maxp %d deq %016llx ",
			FUNC11(ep_type), hid ? "HID" : "",
			burst, maxp, deq);

	ret += FUNC9(str + ret, "avg trb len %d", avg);

	return str;
}