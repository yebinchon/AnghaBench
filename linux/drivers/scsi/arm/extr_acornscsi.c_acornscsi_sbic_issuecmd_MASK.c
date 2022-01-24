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
typedef  int /*<<< orphan*/  AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  ASR_CIP ; 
 int /*<<< orphan*/  SBIC_CMND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC2(AS_Host *host, int command)
{
    if (FUNC0(host, ASR_CIP, 0, 1000, "issuing command"))
	return -1;

    FUNC1(host, SBIC_CMND, command);

    return 0;
}