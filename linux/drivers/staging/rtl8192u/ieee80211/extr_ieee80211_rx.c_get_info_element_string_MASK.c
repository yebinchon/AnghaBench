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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CF_SET ; 
 int /*<<< orphan*/  CHALLENGE ; 
 int /*<<< orphan*/  COUNTRY ; 
 int /*<<< orphan*/  CSA ; 
 int /*<<< orphan*/  DS_SET ; 
 int /*<<< orphan*/  FH_SET ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  HOP_PARAMS ; 
 int /*<<< orphan*/  HOP_TABLE ; 
 int /*<<< orphan*/  IBSS_DFS ; 
 int /*<<< orphan*/  IBSS_SET ; 
 int /*<<< orphan*/  MEASURE_REPORT ; 
 int /*<<< orphan*/  MEASURE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_CAPABILITY ; 
 int /*<<< orphan*/  POWER_CONSTRAINT ; 
 int /*<<< orphan*/  QOS_PARAMETER ; 
 int /*<<< orphan*/  QUIET ; 
 int /*<<< orphan*/  RATES ; 
 int /*<<< orphan*/  RATES_EX ; 
 int /*<<< orphan*/  REQUEST ; 
 int /*<<< orphan*/  RSN ; 
 int /*<<< orphan*/  SSID ; 
 int /*<<< orphan*/  SUPP_CHANNELS ; 
 int /*<<< orphan*/  TIM ; 
 int /*<<< orphan*/  TPC_REPORT ; 
 int /*<<< orphan*/  TPC_REQUEST ; 

__attribute__((used)) static const char *FUNC1(u16 id)
{
	switch (id) {
		FUNC0(SSID);
		FUNC0(RATES);
		FUNC0(FH_SET);
		FUNC0(DS_SET);
		FUNC0(CF_SET);
		FUNC0(TIM);
		FUNC0(IBSS_SET);
		FUNC0(COUNTRY);
		FUNC0(HOP_PARAMS);
		FUNC0(HOP_TABLE);
		FUNC0(REQUEST);
		FUNC0(CHALLENGE);
		FUNC0(POWER_CONSTRAINT);
		FUNC0(POWER_CAPABILITY);
		FUNC0(TPC_REQUEST);
		FUNC0(TPC_REPORT);
		FUNC0(SUPP_CHANNELS);
		FUNC0(CSA);
		FUNC0(MEASURE_REQUEST);
		FUNC0(MEASURE_REPORT);
		FUNC0(QUIET);
		FUNC0(IBSS_DFS);
	       // MFIE_STRING(ERP_INFO);
		FUNC0(RSN);
		FUNC0(RATES_EX);
		FUNC0(GENERIC);
		FUNC0(QOS_PARAMETER);
	default:
		return "UNKNOWN";
	}
}