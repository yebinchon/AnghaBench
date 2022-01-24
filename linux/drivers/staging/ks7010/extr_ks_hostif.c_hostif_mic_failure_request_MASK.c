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
typedef  int /*<<< orphan*/  u16 ;
struct ks_wlan_private {int dummy; } ;
struct hostif_mic_failure_request {void* timer; void* failure_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_MIC_FAILURE_REQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostif_mic_failure_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*,struct hostif_mic_failure_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(struct ks_wlan_private *priv,
				u16 failure_count, u16 timer)
{
	struct hostif_mic_failure_request *pp;

	pp = FUNC2(sizeof(*pp), HIF_MIC_FAILURE_REQ);
	if (!pp)
		return;

	pp->failure_count = FUNC0(failure_count);
	pp->timer = FUNC0(timer);

	FUNC3(priv, pp, FUNC1(sizeof(*pp)));
}