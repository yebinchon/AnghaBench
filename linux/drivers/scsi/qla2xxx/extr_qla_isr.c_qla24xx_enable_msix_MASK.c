#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rsp_que {struct qla_msix_entry* msix; } ;
struct qla_msix_entry {int vector; int entry; int have_irq; int in_use; int /*<<< orphan*/  name; struct rsp_que* handle; } ;
struct TYPE_9__ {int msix_enabled; } ;
struct qla_hw_data {int msix_count; int max_req_queues; int max_rsp_queues; int mqenable; int /*<<< orphan*/  pdev; int /*<<< orphan*/  mqiobase; scalar_t__ msixbase; struct qla_msix_entry* msix_entries; TYPE_1__ flags; scalar_t__ max_qpairs; } ;
struct irq_affinity {int pre_vectors; } ;
struct TYPE_10__ {int irq_offset; int /*<<< orphan*/  host_no; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_12__ {int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int PCI_IRQ_AFFINITY ; 
 int PCI_IRQ_MSIX ; 
 size_t QLA_ATIO_VECTOR ; 
 int QLA_BASE_VECTORS ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 struct qla_msix_entry* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_8__* msix_entries ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int,struct irq_affinity*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ql2xenablemsix ; 
 scalar_t__ ql2xmqsupport ; 
 scalar_t__ ql2xnvmeenable ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  ql_dbg_multiq ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_3__* qla82xx_msix_entries ; 
 int FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct qla_hw_data *ha, struct rsp_que *rsp)
{
	int i, ret;
	struct qla_msix_entry *qentry;
	scsi_qla_host_t *vha = FUNC11(ha->pdev);
	int min_vecs = QLA_BASE_VECTORS;
	struct irq_affinity desc = {
		.pre_vectors = QLA_BASE_VECTORS,
	};

	if (FUNC5() && (ql2xenablemsix != 0) &&
	    FUNC0(ha)) {
		desc.pre_vectors++;
		min_vecs++;
	}

	if (FUNC6(ha) || !ha->mqiobase) {
		/* user wants to control IRQ setting for target mode */
		ret = FUNC8(ha->pdev, min_vecs,
		    ha->msix_count, PCI_IRQ_MSIX);
	} else
		ret = FUNC9(ha->pdev, min_vecs,
		    ha->msix_count, PCI_IRQ_MSIX | PCI_IRQ_AFFINITY,
		    &desc);

	if (ret < 0) {
		FUNC15(ql_log_fatal, vha, 0x00c7,
		    "MSI-X: Failed to enable support, "
		    "giving   up -- %d/%d.\n",
		    ha->msix_count, ret);
		goto msix_out;
	} else if (ret < ha->msix_count) {
		FUNC15(ql_log_info, vha, 0x00c6,
		    "MSI-X: Using %d vectors\n", ret);
		ha->msix_count = ret;
		/* Recalculate queue values */
		if (ha->mqiobase && (ql2xmqsupport || ql2xnvmeenable)) {
			ha->max_req_queues = ha->msix_count - 1;

			/* ATIOQ needs 1 vector. That's 1 less QPair */
			if (FUNC5())
				ha->max_req_queues--;

			ha->max_rsp_queues = ha->max_req_queues;

			ha->max_qpairs = ha->max_req_queues - 1;
			FUNC14(ql_dbg_init, ha->pdev, 0x0190,
			    "Adjusted Max no of queues pairs: %d.\n", ha->max_qpairs);
		}
	}
	vha->irq_offset = desc.pre_vectors;
	ha->msix_entries = FUNC7(ha->msix_count,
				   sizeof(struct qla_msix_entry),
				   GFP_KERNEL);
	if (!ha->msix_entries) {
		FUNC15(ql_log_fatal, vha, 0x00c8,
		    "Failed to allocate memory for ha->msix_entries.\n");
		ret = -ENOMEM;
		goto free_irqs;
	}
	ha->flags.msix_enabled = 1;

	for (i = 0; i < ha->msix_count; i++) {
		qentry = &ha->msix_entries[i];
		qentry->vector = FUNC12(ha->pdev, i);
		qentry->entry = i;
		qentry->have_irq = 0;
		qentry->in_use = 0;
		qentry->handle = NULL;
	}

	/* Enable MSI-X vectors for the base queue */
	for (i = 0; i < QLA_BASE_VECTORS; i++) {
		qentry = &ha->msix_entries[i];
		qentry->handle = rsp;
		rsp->msix = qentry;
		FUNC18(qentry->name, sizeof(qentry->name),
		    "qla2xxx%lu_%s", vha->host_no, msix_entries[i].name);
		if (FUNC1(ha))
			ret = FUNC17(qentry->vector,
				qla82xx_msix_entries[i].handler,
				0, qla82xx_msix_entries[i].name, rsp);
		else
			ret = FUNC17(qentry->vector,
				msix_entries[i].handler,
				0, qentry->name, rsp);
		if (ret)
			goto msix_register_fail;
		qentry->have_irq = 1;
		qentry->in_use = 1;
	}

	/*
	 * If target mode is enable, also request the vector for the ATIO
	 * queue.
	 */
	if (FUNC5() && (ql2xenablemsix != 0) &&
	    FUNC0(ha)) {
		qentry = &ha->msix_entries[QLA_ATIO_VECTOR];
		rsp->msix = qentry;
		qentry->handle = rsp;
		FUNC18(qentry->name, sizeof(qentry->name),
		    "qla2xxx%lu_%s", vha->host_no,
		    msix_entries[QLA_ATIO_VECTOR].name);
		qentry->in_use = 1;
		ret = FUNC17(qentry->vector,
			msix_entries[QLA_ATIO_VECTOR].handler,
			0, qentry->name, rsp);
		qentry->have_irq = 1;
	}

msix_register_fail:
	if (ret) {
		FUNC15(ql_log_fatal, vha, 0x00cb,
		    "MSI-X: unable to register handler -- %x/%d.\n",
		    qentry->vector, ret);
		FUNC16(vha);
		ha->mqenable = 0;
		goto msix_out;
	}

	/* Enable MSI-X vector for response queue update for queue 0 */
	if (FUNC4(ha) || FUNC2(ha) || FUNC3(ha)) {
		if (ha->msixbase && ha->mqiobase &&
		    (ha->max_rsp_queues > 1 || ha->max_req_queues > 1 ||
		     ql2xmqsupport))
			ha->mqenable = 1;
	} else
		if (ha->mqiobase &&
		    (ha->max_rsp_queues > 1 || ha->max_req_queues > 1 ||
		     ql2xmqsupport))
			ha->mqenable = 1;
	FUNC13(ql_dbg_multiq, vha, 0xc005,
	    "mqiobase=%p, max_rsp_queues=%d, max_req_queues=%d.\n",
	    ha->mqiobase, ha->max_rsp_queues, ha->max_req_queues);
	FUNC13(ql_dbg_init, vha, 0x0055,
	    "mqiobase=%p, max_rsp_queues=%d, max_req_queues=%d.\n",
	    ha->mqiobase, ha->max_rsp_queues, ha->max_req_queues);

msix_out:
	return ret;

free_irqs:
	FUNC10(ha->pdev);
	goto msix_out;
}