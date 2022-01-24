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
typedef  int u8 ;
struct r8192_priv {TYPE_1__* rtllib; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* InitialGainHandler ) (struct net_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  IG_Backup ; 
 int /*<<< orphan*/  IG_Restore ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  SCAN_OPT_BACKUP 129 
#define  SCAN_OPT_RESTORE 128 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev, u8 Operation)
{
	struct r8192_priv *priv = FUNC1(dev);

	if (priv->up) {
		switch (Operation) {
		case SCAN_OPT_BACKUP:
			priv->rtllib->InitialGainHandler(dev, IG_Backup);
			break;

		case SCAN_OPT_RESTORE:
			priv->rtllib->InitialGainHandler(dev, IG_Restore);
			break;

		default:
			FUNC0(COMP_SCAN, "Unknown Scan Backup Operation.\n");
			break;
		}
	}
}