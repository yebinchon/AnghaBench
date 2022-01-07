; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_tmf_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_tmf_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task_slow = type { %struct.sas_task* }
%struct.sas_task = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@slow = common dso_local global %struct.sas_task_slow* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hisi_sas_tmf_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_tmf_timedout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sas_task_slow*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.sas_task_slow*, %struct.sas_task_slow** %3, align 8
  %8 = ptrtoint %struct.sas_task_slow* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.sas_task_slow* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.sas_task_slow* %11, %struct.sas_task_slow** %3, align 8
  %12 = load %struct.sas_task_slow*, %struct.sas_task_slow** %3, align 8
  %13 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %12, i32 0, i32 0
  %14 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  store %struct.sas_task* %14, %struct.sas_task** %4, align 8
  store i32 1, i32* %6, align 4
  %15 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %27 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %28 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 2
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @complete(i32* %42)
  br label %44

44:                                               ; preds = %38, %31
  ret void
}

declare dso_local %struct.sas_task_slow* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
