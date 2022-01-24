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

/* Variables and functions */
#define  NLP_STE_ADISC_ISSUE 136 
#define  NLP_STE_LOGO_ISSUE 135 
#define  NLP_STE_MAPPED_NODE 134 
 int NLP_STE_MAX_STATE ; 
#define  NLP_STE_NPR_NODE 133 
#define  NLP_STE_PLOGI_ISSUE 132 
#define  NLP_STE_PRLI_ISSUE 131 
#define  NLP_STE_REG_LOGIN_ISSUE 130 
#define  NLP_STE_UNMAPPED_NODE 129 
#define  NLP_STE_UNUSED_NODE 128 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC2(char *buffer, size_t size, int state)
{
	static char *states[] = {
		[NLP_STE_UNUSED_NODE] = "UNUSED",
		[NLP_STE_PLOGI_ISSUE] = "PLOGI",
		[NLP_STE_ADISC_ISSUE] = "ADISC",
		[NLP_STE_REG_LOGIN_ISSUE] = "REGLOGIN",
		[NLP_STE_PRLI_ISSUE] = "PRLI",
		[NLP_STE_LOGO_ISSUE] = "LOGO",
		[NLP_STE_UNMAPPED_NODE] = "UNMAPPED",
		[NLP_STE_MAPPED_NODE] = "MAPPED",
		[NLP_STE_NPR_NODE] = "NPR",
	};

	if (state < NLP_STE_MAX_STATE && states[state])
		FUNC1(buffer, states[state], size);
	else
		FUNC0(buffer, size, "unknown (%d)", state);
	return buffer;
}