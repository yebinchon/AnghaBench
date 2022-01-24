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
struct channel {int /*<<< orphan*/  fsm; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_FLAGS_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 int /*<<< orphan*/  CTC_STATE_IDLE ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct channel *ch)
{
	FUNC0(SETUP, CTC_DBF_INFO, "%s(%s)", CTCM_FUNTAIL, ch->id);
	ch->flags &= ~CHANNEL_FLAGS_INUSE;
	FUNC1(ch->fsm, CTC_STATE_IDLE);
}