; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_smp_task_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_smp_task_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task_slow = type { %struct.sas_task* }
%struct.sas_task = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@slow = common dso_local global %struct.sas_task_slow* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @smp_task_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_task_timedout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sas_task_slow*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.sas_task_slow*, %struct.sas_task_slow** %3, align 8
  %7 = ptrtoint %struct.sas_task_slow* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.sas_task_slow* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.sas_task_slow* %10, %struct.sas_task_slow** %3, align 8
  %11 = load %struct.sas_task_slow*, %struct.sas_task_slow** %3, align 8
  %12 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %11, i32 0, i32 0
  %13 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  store %struct.sas_task* %13, %struct.sas_task** %4, align 8
  %14 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %15 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %26 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %27 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %31 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %37 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %36, i32 0, i32 1
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.sas_task_slow* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
