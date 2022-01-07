; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_main.c_rsi_tx_scheduler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_main.c_rsi_tx_scheduler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.TYPE_2__, i64, %struct.rsi_hw* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rsi_hw = type { i32 (%struct.rsi_hw*)* }

@EVENT_WAIT_FOREVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*)* @rsi_tx_scheduler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_tx_scheduler_thread(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %5 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %6 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %5, i32 0, i32 2
  %7 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  store %struct.rsi_hw* %7, %struct.rsi_hw** %3, align 8
  %8 = load i32, i32* @EVENT_WAIT_FOREVER, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %11 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %10, i32 0, i32 0
  %12 = load i32 (%struct.rsi_hw*)*, i32 (%struct.rsi_hw*)** %11, align 8
  %13 = icmp ne i32 (%struct.rsi_hw*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %16 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %15, i32 0, i32 0
  %17 = load i32 (%struct.rsi_hw*)*, i32 (%struct.rsi_hw*)** %16, align 8
  %18 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %19 = call i32 %17(%struct.rsi_hw* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %22 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @rsi_wait_event(i32* %23, i32 %24)
  %26 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %27 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @rsi_reset_event(i32* %28)
  %30 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %31 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %36 = call i32 @rsi_core_qos_processor(%struct.rsi_common* %35)
  br label %37

37:                                               ; preds = %34, %20
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %40 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %9, label %44

44:                                               ; preds = %38
  %45 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %46 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @complete_and_exit(i32* %47, i32 0)
  ret void
}

declare dso_local i32 @rsi_wait_event(i32*, i32) #1

declare dso_local i32 @rsi_reset_event(i32*) #1

declare dso_local i32 @rsi_core_qos_processor(%struct.rsi_common*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
