; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.qeth_qdio_out_q = type { i32, i32, %struct.qeth_qdio_out_buffer**, %struct.qeth_card* }
%struct.qeth_qdio_out_buffer = type { i64, i32 }
%struct.qeth_card = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@completion_yield = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @qeth_tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_tx_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %19 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %21 = call %struct.qeth_qdio_out_q* @qeth_napi_to_out_queue(%struct.napi_struct* %20)
  store %struct.qeth_qdio_out_q* %21, %struct.qeth_qdio_out_q** %6, align 8
  %22 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %23 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %26 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %25, i32 0, i32 3
  %27 = load %struct.qeth_card*, %struct.qeth_card** %26, align 8
  store %struct.qeth_card* %27, %struct.qeth_card** %8, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @qeth_iqd_translate_txq(%struct.net_device* %32, i32 %33)
  %35 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %31, i32 %34)
  store %struct.netdev_queue* %35, %struct.netdev_queue** %11, align 8
  br label %36

36:                                               ; preds = %2, %142
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %38 = call i64 @qeth_out_queue_is_empty(%struct.qeth_qdio_out_q* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %42 = call i32 @napi_complete(%struct.napi_struct* %41)
  store i32 0, i32* %3, align 4
  br label %143

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %49 = load i32, i32* @completion_yield, align 4
  %50 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %48, i32 %49)
  %51 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %52 = call i64 @napi_complete_done(%struct.napi_struct* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %56 = call i32 @napi_schedule(%struct.napi_struct* %55)
  br label %57

57:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %143

58:                                               ; preds = %43
  %59 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %60 = call i32 @CARD_DDEV(%struct.qeth_card* %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @qdio_inspect_queue(i32 %60, i32 %61, i32 0, i32* %12, i32* %13)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %67 = call i64 @napi_complete_done(%struct.napi_struct* %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %71 = call i32 @qeth_tx_arm_timer(%struct.qeth_qdio_out_q* %70)
  br label %72

72:                                               ; preds = %69, %65
  store i32 0, i32* %3, align 4
  br label %143

73:                                               ; preds = %58
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %117, %73
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %17, align 4
  %79 = add i32 %77, %78
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @QDIO_BUFNR(i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %85 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %84, i32 0, i32 2
  %86 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %86, i64 %88
  %90 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %89, align 8
  store %struct.qeth_qdio_out_buffer* %90, %struct.qeth_qdio_out_buffer** %18, align 8
  %91 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %18, align 8
  %92 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %91, i32 0, i32 1
  %93 = call i64 @skb_queue_len(i32* %92)
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %18, align 8
  %99 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %106 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %18, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @qeth_handle_send_error(%struct.qeth_card* %105, %struct.qeth_qdio_out_buffer* %106, i32 %107)
  %109 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @qeth_iqd_tx_complete(%struct.qeth_qdio_out_q* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q* %114, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %81
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %75

120:                                              ; preds = %75
  %121 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %127 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %126, i32 0, i32 1
  %128 = call i32 @atomic_sub(i32 %125, i32* %127)
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %133 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %120
  %136 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %137 = call i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %141 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %140)
  br label %142

142:                                              ; preds = %139, %135, %120
  br label %36

143:                                              ; preds = %72, %57, %40
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.qeth_qdio_out_q* @qeth_napi_to_out_queue(%struct.napi_struct*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @qeth_iqd_translate_txq(%struct.net_device*, i32) #1

declare dso_local i64 @qeth_out_queue_is_empty(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @napi_schedule(%struct.napi_struct*) #1

declare dso_local i32 @qdio_inspect_queue(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @qeth_tx_arm_timer(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @QDIO_BUFNR(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @qeth_handle_send_error(%struct.qeth_card*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @qeth_iqd_tx_complete(%struct.qeth_qdio_out_q*, i32, i32, i32) #1

declare dso_local i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
