; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_free_tx_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_free_tx_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }

@MAX_SKB_TO_FREE = common dso_local global i32 0, align 4
@MAX_OUT_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_free_tx_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_free_tx_skbs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_ethernet*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %13)
  store %struct.octeon_ethernet* %14, %struct.octeon_ethernet** %9, align 8
  %15 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %16 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cvmx_pko_get_num_queues(i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %117, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %120

23:                                               ; preds = %19
  %24 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %25 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = call i64 @skb_queue_len(%struct.TYPE_3__* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %117

33:                                               ; preds = %23
  %34 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %35 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  %42 = call i32 @cvmx_fau_fetch_and_add32(i64 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %45 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @cvm_oct_adjust_skb_to_free(i32 %43, i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %33
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %58 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %59 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %70, %57
  %68 = load i32, i32* %3, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %72 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_3__* %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %11, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  store %struct.sk_buff* %78, %struct.sk_buff** %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %81, %struct.sk_buff** %10, align 8
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %3, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %86 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %97, %84
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %12, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load %struct.sk_buff*, %struct.sk_buff** %100, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %10, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %102)
  br label %94

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %33
  %106 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %9, align 8
  %107 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = call i64 @skb_queue_len(%struct.TYPE_3__* %111)
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %105, %32
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %19

120:                                              ; preds = %19
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @MAX_OUT_QUEUE_DEPTH, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = call i64 @netif_queue_stopped(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = call i32 @netif_wake_queue(%struct.net_device* %129)
  br label %131

131:                                              ; preds = %128, %124, %120
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (...) @cvm_oct_kick_tx_poll_watchdog()
  br label %136

136:                                              ; preds = %134, %131
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_3__*) #1

declare dso_local i32 @cvmx_fau_fetch_and_add32(i64, i32) #1

declare dso_local i32 @cvm_oct_adjust_skb_to_free(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_kick_tx_poll_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
