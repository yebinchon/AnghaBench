#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bbp_type; scalar_t__ long_retry; scalar_t__ short_retry; } ;
struct vnt_private {int bUpdateBBVGA; scalar_t__ byBBType; scalar_t__ byShortPreamble; scalar_t__ byPreambleType; scalar_t__ byLongRetryLimit; scalar_t__ byShortRetryLimit; int /*<<< orphan*/  byAutoFBCtrl; scalar_t__ byPacketType; TYPE_1__ opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_FB_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void
FUNC1(struct vnt_private *priv)
{
	priv->byShortRetryLimit = priv->opts.short_retry;
	priv->byLongRetryLimit = priv->opts.long_retry;
	priv->byBBType = priv->opts.bbp_type;
	priv->byPacketType = priv->byBBType;
	priv->byAutoFBCtrl = AUTO_FB_0;
	priv->bUpdateBBVGA = true;
	priv->byPreambleType = 0;

	FUNC0(" byShortRetryLimit= %d\n", (int)priv->byShortRetryLimit);
	FUNC0(" byLongRetryLimit= %d\n", (int)priv->byLongRetryLimit);
	FUNC0(" byPreambleType= %d\n", (int)priv->byPreambleType);
	FUNC0(" byShortPreamble= %d\n", (int)priv->byShortPreamble);
	FUNC0(" byBBType= %d\n", (int)priv->byBBType);
}