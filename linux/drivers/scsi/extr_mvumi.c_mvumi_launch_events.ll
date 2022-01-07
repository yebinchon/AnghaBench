; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_launch_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_launch_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32 }
%struct.mvumi_events_wq = type { i32, i32*, i32, %struct.mvumi_hba* }

@DRBL_BUS_CHANGE = common dso_local global i32 0, align 4
@DRBL_EVENT_NOTIFY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@mvumi_scan_events = common dso_local global i32 0, align 4
@APICDB1_EVENT_GETEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, i32)* @mvumi_launch_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_launch_events(%struct.mvumi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvumi_events_wq*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %55, %18, %2
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DRBL_BUS_CHANGE, align 4
  %9 = load i32, i32* @DRBL_EVENT_NOTIFY, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DRBL_BUS_CHANGE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 1
  %21 = call i32 @atomic_inc(i32* %20)
  %22 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wake_up_process(i32 %24)
  %26 = load i32, i32* @DRBL_BUS_CHANGE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %13
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.mvumi_events_wq* @kzalloc(i32 32, i32 %31)
  store %struct.mvumi_events_wq* %32, %struct.mvumi_events_wq** %5, align 8
  %33 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %34 = icmp ne %struct.mvumi_events_wq* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %37 = getelementptr inbounds %struct.mvumi_events_wq, %struct.mvumi_events_wq* %36, i32 0, i32 0
  %38 = load i32, i32* @mvumi_scan_events, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %41 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %42 = getelementptr inbounds %struct.mvumi_events_wq, %struct.mvumi_events_wq* %41, i32 0, i32 3
  store %struct.mvumi_hba* %40, %struct.mvumi_hba** %42, align 8
  %43 = load i32, i32* @APICDB1_EVENT_GETEVENT, align 4
  %44 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %45 = getelementptr inbounds %struct.mvumi_events_wq, %struct.mvumi_events_wq* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @DRBL_EVENT_NOTIFY, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %51 = getelementptr inbounds %struct.mvumi_events_wq, %struct.mvumi_events_wq* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.mvumi_events_wq*, %struct.mvumi_events_wq** %5, align 8
  %53 = getelementptr inbounds %struct.mvumi_events_wq, %struct.mvumi_events_wq* %52, i32 0, i32 0
  %54 = call i32 @schedule_work(i32* %53)
  br label %55

55:                                               ; preds = %35, %30
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local %struct.mvumi_events_wq* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
