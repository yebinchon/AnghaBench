; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_output_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_output_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.qeth_card = type { %struct.net_device*, %struct.TYPE_2__ }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32, %struct.qeth_qdio_out_buffer** }
%struct.qeth_qdio_out_buffer = type { i32 }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"qdouhdl\00", align 1
@QDIO_ERROR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"achkcond\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @qeth_qdio_output_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_output_handler(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qeth_card*, align 8
  %14 = alloca %struct.qeth_qdio_out_q*, align 8
  %15 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.netdev_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = inttoptr i64 %20 to %struct.qeth_card*
  store %struct.qeth_card* %21, %struct.qeth_card** %13, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %25, i64 %27
  %29 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %28, align 8
  store %struct.qeth_qdio_out_q* %29, %struct.qeth_qdio_out_q** %14, align 8
  %30 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %16, align 8
  %33 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %34 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %33, i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @QDIO_ERROR_FATAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %6
  %40 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %41 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %40, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.net_device*, %struct.net_device** %16, align 8
  %43 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %45 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %44)
  br label %96

46:                                               ; preds = %6
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %73, %46
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %59 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %58, i32 0, i32 1
  %60 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %60, i64 %62
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %63, align 8
  store %struct.qeth_qdio_out_buffer* %64, %struct.qeth_qdio_out_buffer** %15, align 8
  %65 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %66 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @qeth_handle_send_error(%struct.qeth_card* %65, %struct.qeth_qdio_out_buffer* %66, i32 %67)
  %69 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %70 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q* %69, %struct.qeth_qdio_out_buffer* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %48

76:                                               ; preds = %48
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %79 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %78, i32 0, i32 0
  %80 = call i32 @atomic_sub(i32 %77, i32* %79)
  %81 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %82 = call i32 @qeth_check_outbound_queue(%struct.qeth_qdio_out_q* %81)
  %83 = load %struct.net_device*, %struct.net_device** %16, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %83, i32 %84)
  store %struct.netdev_queue* %85, %struct.netdev_queue** %17, align 8
  %86 = load %struct.netdev_queue*, %struct.netdev_queue** %17, align 8
  %87 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %91 = call i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load %struct.netdev_queue*, %struct.netdev_queue** %17, align 8
  %95 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %94)
  br label %96

96:                                               ; preds = %39, %93, %89, %76
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @qeth_handle_send_error(%struct.qeth_card*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @qeth_check_outbound_queue(%struct.qeth_qdio_out_q*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
