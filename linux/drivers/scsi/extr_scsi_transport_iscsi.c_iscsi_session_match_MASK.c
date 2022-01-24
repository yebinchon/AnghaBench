#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct attribute_container {int /*<<< orphan*/ * class; } ;
struct TYPE_3__ {struct attribute_container ac; } ;
struct iscsi_internal {TYPE_1__ session_cont; } ;
struct iscsi_cls_session {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 struct iscsi_cls_session* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_2__ iscsi_session_class ; 
 struct Scsi_Host* FUNC2 (struct iscsi_cls_session*) ; 
 struct iscsi_internal* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct attribute_container *cont,
			   struct device *dev)
{
	struct iscsi_cls_session *session;
	struct Scsi_Host *shost;
	struct iscsi_internal *priv;

	if (!FUNC1(dev))
		return 0;

	session = FUNC0(dev);
	shost = FUNC2(session);
	if (!shost->transportt)
		return 0;

	priv = FUNC3(shost->transportt);
	if (priv->session_cont.ac.class != &iscsi_session_class.class)
		return 0;

	return &priv->session_cont.ac == cont;
}