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
typedef  union tspec_body {int dummy; } tspec_body ;
typedef  union qos_tclas {int dummy; } qos_tclas ;
struct ts_common_info {scalar_t__ TClasNum; scalar_t__ TClasProc; int /*<<< orphan*/  TClass; int /*<<< orphan*/  TSpec; int /*<<< orphan*/  Addr; } ;

/* Variables and functions */
 int TCLAS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ts_common_info *pTsCommonInfo)
{
	FUNC0(pTsCommonInfo->Addr);
	FUNC1(&pTsCommonInfo->TSpec, 0, sizeof(union tspec_body));
	FUNC1(&pTsCommonInfo->TClass, 0, sizeof(union qos_tclas)*TCLAS_NUM);
	pTsCommonInfo->TClasProc = 0;
	pTsCommonInfo->TClasNum = 0;
}