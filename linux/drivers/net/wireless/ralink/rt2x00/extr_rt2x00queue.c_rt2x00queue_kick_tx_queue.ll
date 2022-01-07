; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_kick_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_kick_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.data_queue*)* }
%struct.txentry_desc = type { i32 }

@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*, %struct.txentry_desc*)* @rt2x00queue_kick_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_kick_tx_queue(%struct.data_queue* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %6 = call i64 @rt2x00queue_threshold(%struct.data_queue* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %10 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %11 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %22, align 8
  %24 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %25 = call i32 %23(%struct.data_queue* %24)
  br label %26

26:                                               ; preds = %14, %8
  ret void
}

declare dso_local i64 @rt2x00queue_threshold(%struct.data_queue*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
