; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_stop_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_stop_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"stopcard\00", align 1
@SET_PROMISC_MODE_ON = common dso_local global i64 0, align 8
@QETH_DIAGS_CMD_TRACE_DISABLE = common dso_local global i32 0, align 4
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_HARDSETUP = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_stop_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_stop_card(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %5, i32 0, i32 1)
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 4
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = call i32 @qeth_l3_drain_rx_mode_cache(%struct.qeth_card* %10)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SET_PROMISC_MODE_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = load i32, i32* @QETH_DIAGS_CMD_TRACE_DISABLE, align 4
  %27 = call i32 @qeth_diags_trace(%struct.qeth_card* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %17, %1
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = call i32 @qeth_l3_clear_ip_htable(%struct.qeth_card* %35, i32 1)
  %37 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %38 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %37)
  %39 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CARD_STATE_HARDSETUP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %50 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %49, i32 0)
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %52 = call i32 @qeth_drain_output_queues(%struct.qeth_card* %51)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %54 = call i32 @qeth_clear_working_pool_list(%struct.qeth_card* %53)
  %55 = load i64, i64* @CARD_STATE_DOWN, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %48, %42
  %59 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @flush_workqueue(i32 %61)
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @qeth_l3_drain_rx_mode_cache(%struct.qeth_card*) #1

declare dso_local i32 @qeth_diags_trace(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_clear_ip_htable(%struct.qeth_card*, i32) #1

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
