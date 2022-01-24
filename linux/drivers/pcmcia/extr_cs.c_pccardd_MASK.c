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
struct pcmcia_socket {unsigned int thread_events; unsigned int sysfs_events; int state; int /*<<< orphan*/  dev; int /*<<< orphan*/  skt_mutex; TYPE_2__* callback; int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread_done; int /*<<< orphan*/ * thread; int /*<<< orphan*/  socket; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* suspend ) (struct pcmcia_socket*) ;int /*<<< orphan*/  (* requery ) (struct pcmcia_socket*) ;int /*<<< orphan*/  (* resume ) (struct pcmcia_socket*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_socket ) (struct pcmcia_socket*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* init ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 unsigned int PCMCIA_UEVENT_EJECT ; 
 unsigned int PCMCIA_UEVENT_INSERT ; 
 unsigned int PCMCIA_UEVENT_REQUERY ; 
 unsigned int PCMCIA_UEVENT_RESUME ; 
 unsigned int PCMCIA_UEVENT_SUSPEND ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 unsigned int SS_DETECT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC15 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC16 (struct pcmcia_socket*) ; 
 int FUNC17 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC18 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC22 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC24 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC25 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int FUNC27(void *__skt)
{
	struct pcmcia_socket *skt = __skt;
	int ret;

	skt->thread = current;
	skt->socket = dead_socket;
	skt->ops->init(skt);
	skt->ops->set_socket(skt, &skt->socket);

	/* register with the device core */
	ret = FUNC3(&skt->dev);
	if (ret) {
		FUNC2(&skt->dev, "PCMCIA: unable to register socket\n");
		skt->thread = NULL;
		FUNC1(&skt->thread_done);
		return 0;
	}
	ret = FUNC9(&skt->dev);
	if (ret)
		FUNC2(&skt->dev, "err %d adding socket attributes\n", ret);

	FUNC1(&skt->thread_done);

	/* wait for userspace to catch up */
	FUNC6(250);

	FUNC13();
	for (;;) {
		unsigned long flags;
		unsigned int events;
		unsigned int sysfs_events;

		FUNC19(&skt->thread_lock, flags);
		events = skt->thread_events;
		skt->thread_events = 0;
		sysfs_events = skt->sysfs_events;
		skt->sysfs_events = 0;
		FUNC20(&skt->thread_lock, flags);

		FUNC7(&skt->skt_mutex);
		if (events & SS_DETECT)
			FUNC14(skt);

		if (sysfs_events) {
			if (sysfs_events & PCMCIA_UEVENT_EJECT)
				FUNC16(skt);
			if (sysfs_events & PCMCIA_UEVENT_INSERT)
				FUNC15(skt);
			if ((sysfs_events & PCMCIA_UEVENT_SUSPEND) &&
				!(skt->state & SOCKET_CARDBUS)) {
				if (skt->callback)
					ret = skt->callback->suspend(skt);
				else
					ret = 0;
				if (!ret) {
					FUNC18(skt);
					FUNC6(100);
				}
			}
			if ((sysfs_events & PCMCIA_UEVENT_RESUME) &&
				!(skt->state & SOCKET_CARDBUS)) {
				ret = FUNC17(skt);
				if (!ret && skt->callback)
					skt->callback->resume(skt);
			}
			if ((sysfs_events & PCMCIA_UEVENT_REQUERY) &&
				!(skt->state & SOCKET_CARDBUS)) {
				if (!ret && skt->callback)
					skt->callback->requery(skt);
			}
		}
		FUNC8(&skt->skt_mutex);

		if (events || sysfs_events)
			continue;

		if (FUNC5())
			break;

		FUNC12(TASK_INTERRUPTIBLE);

		FUNC11();

		/* make sure we are running */
		FUNC0(TASK_RUNNING);

		FUNC26();
	}

	/* shut down socket, if a device is still present */
	if (skt->state & SOCKET_PRESENT) {
		FUNC7(&skt->skt_mutex);
		FUNC16(skt);
		FUNC8(&skt->skt_mutex);
	}

	/* remove from the device core */
	FUNC10(&skt->dev);
	FUNC4(&skt->dev);

	return 0;
}