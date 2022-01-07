; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"stopcard\00", align 1
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_HARDSETUP = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l2_stop_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_stop_card(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %5, i32 0, i32 1)
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 3
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = call i32 @qeth_l2_drain_rx_mode_cache(%struct.qeth_card* %10)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %18)
  %20 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %21 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %31 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %30, i32 0)
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = call i32 @qeth_drain_output_queues(%struct.qeth_card* %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %35 = call i32 @qeth_clear_working_pool_list(%struct.qeth_card* %34)
  %36 = load i64, i64* @CARD_STATE_DOWN, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %23
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @flush_workqueue(i32 %42)
  %44 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %45
  store i32 %50, i32* %48, align 8
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @qeth_l2_drain_rx_mode_cache(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_drain_output_queues(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_working_pool_list(%struct.qeth_card*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
