#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* parent; } ;
struct rproc {TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_7__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  start; } ;
struct qcom_sysmon {char const* name; int ssctl_instance; int shutdown_irq; int /*<<< orphan*/  node; TYPE_5__ nb; TYPE_2__ subdev; int /*<<< orphan*/  qmi; TYPE_3__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  shutdown_comp; int /*<<< orphan*/  ind_comp; int /*<<< orphan*/  comp; struct rproc* rproc; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 struct qcom_sysmon* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  SSCTL_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct qcom_sysmon*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_sysmon*) ; 
 struct qcom_sysmon* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmi_indication_handler ; 
 int /*<<< orphan*/  FUNC14 (struct rproc*,TYPE_2__*) ; 
 int /*<<< orphan*/  ssctl_ops ; 
 int /*<<< orphan*/  sysmon_list ; 
 int /*<<< orphan*/  sysmon_lock ; 
 int /*<<< orphan*/  sysmon_notifiers ; 
 int /*<<< orphan*/  sysmon_notify ; 
 int /*<<< orphan*/  sysmon_shutdown_interrupt ; 
 int /*<<< orphan*/  sysmon_start ; 
 int /*<<< orphan*/  sysmon_stop ; 

struct qcom_sysmon *FUNC15(struct rproc *rproc,
					   const char *name,
					   int ssctl_instance)
{
	struct qcom_sysmon *sysmon;
	int ret;

	sysmon = FUNC6(sizeof(*sysmon), GFP_KERNEL);
	if (!sysmon)
		return FUNC0(-ENOMEM);

	sysmon->dev = rproc->dev.parent;
	sysmon->rproc = rproc;

	sysmon->name = name;
	sysmon->ssctl_instance = ssctl_instance;

	FUNC4(&sysmon->comp);
	FUNC4(&sysmon->ind_comp);
	FUNC4(&sysmon->shutdown_comp);
	FUNC8(&sysmon->lock);

	sysmon->shutdown_irq = FUNC11(sysmon->dev->of_node,
						 "shutdown-ack");
	if (sysmon->shutdown_irq < 0) {
		if (sysmon->shutdown_irq != -ENODATA) {
			FUNC2(sysmon->dev,
				"failed to retrieve shutdown-ack IRQ\n");
			return FUNC0(sysmon->shutdown_irq);
		}
	} else {
		ret = FUNC3(sysmon->dev,
						sysmon->shutdown_irq,
						NULL, sysmon_shutdown_interrupt,
						IRQF_TRIGGER_RISING | IRQF_ONESHOT,
						"q6v5 shutdown-ack", sysmon);
		if (ret) {
			FUNC2(sysmon->dev,
				"failed to acquire shutdown-ack IRQ\n");
			return FUNC0(ret);
		}
	}

	ret = FUNC13(&sysmon->qmi, SSCTL_MAX_MSG_LEN, &ssctl_ops,
			      qmi_indication_handler);
	if (ret < 0) {
		FUNC2(sysmon->dev, "failed to initialize qmi handle\n");
		FUNC5(sysmon);
		return FUNC0(ret);
	}

	FUNC12(&sysmon->qmi, 43, 0, 0);

	sysmon->subdev.start = sysmon_start;
	sysmon->subdev.stop = sysmon_stop;

	FUNC14(rproc, &sysmon->subdev);

	sysmon->nb.notifier_call = sysmon_notify;
	FUNC1(&sysmon_notifiers, &sysmon->nb);

	FUNC9(&sysmon_lock);
	FUNC7(&sysmon->node, &sysmon_list);
	FUNC10(&sysmon_lock);

	return sysmon;
}