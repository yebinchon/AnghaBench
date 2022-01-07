; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_coex.c_rsi_coex_scheduler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_coex.c_rsi_coex_scheduler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i64 }
%struct.rsi_coex_ctrl_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EVENT_WAIT_FOREVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*)* @rsi_coex_scheduler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_coex_scheduler_thread(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  %3 = alloca %struct.rsi_coex_ctrl_block*, align 8
  %4 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %5 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %6 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rsi_coex_ctrl_block*
  store %struct.rsi_coex_ctrl_block* %8, %struct.rsi_coex_ctrl_block** %3, align 8
  %9 = load i32, i32* @EVENT_WAIT_FOREVER, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rsi_wait_event(i32* %13, i32 %14)
  %16 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %3, align 8
  %17 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @rsi_reset_event(i32* %18)
  %20 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %3, align 8
  %21 = call i32 @rsi_coex_sched_tx_pkts(%struct.rsi_coex_ctrl_block* %20)
  br label %22

22:                                               ; preds = %10
  %23 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %3, align 8
  %24 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %22
  %29 = load %struct.rsi_coex_ctrl_block*, %struct.rsi_coex_ctrl_block** %3, align 8
  %30 = getelementptr inbounds %struct.rsi_coex_ctrl_block, %struct.rsi_coex_ctrl_block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @complete_and_exit(i32* %31, i32 0)
  ret void
}

declare dso_local i32 @rsi_wait_event(i32*, i32) #1

declare dso_local i32 @rsi_reset_event(i32*) #1

declare dso_local i32 @rsi_coex_sched_tx_pkts(%struct.rsi_coex_ctrl_block*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
