; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_get_num_pkts_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_get_num_pkts_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i32*, i32, %struct.TYPE_2__*, %struct.rsi_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.rsi_hw = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i32, i64 }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_vif = type { i32 }

@RSI_RATE_MCS0 = common dso_local global i32 0, align 4
@VI_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsi_common*, i64)* @rsi_get_num_pkts_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsi_get_num_pkts_dequeue(%struct.rsi_common* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rsi_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_rate, align 4
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca %struct.ieee80211_vif*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %15 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %14, i32 0, i32 3
  %16 = load %struct.rsi_hw*, %struct.rsi_hw** %15, align 8
  store %struct.rsi_hw* %16, %struct.rsi_hw** %6, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @RSI_RATE_MCS0, align 4
  %26 = mul nsw i32 %25, 5
  %27 = mul nsw i32 %26, 10
  %28 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @VI_Q, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 5
  %35 = sdiv i32 %34, 80
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %38 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i64 @skb_queue_len(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %46 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call %struct.sk_buff* @skb_peek(i32* %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %7, align 8
  br label %52

51:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %102

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %97, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %57, %struct.ieee80211_hdr** %12, align 8
  %58 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.ieee80211_vif* @rsi_get_vif(%struct.rsi_hw* %58, i32 %61)
  store %struct.ieee80211_vif* %62, %struct.ieee80211_vif** %13, align 8
  %63 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %64 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %67 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %68 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ieee80211_generic_frame_duration(i32 %65, %struct.ieee80211_vif* %66, i32 %69, i32 %72, %struct.ieee80211_rate* %11)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @le16_to_cpu(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %83 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = call i64 @skb_queue_len(i32* %86)
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %53
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %7, align 8
  br label %96

95:                                               ; preds = %53
  br label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %53, label %100

100:                                              ; preds = %97, %95
  %101 = load i64, i64* %8, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %100, %51
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.ieee80211_vif* @rsi_get_vif(%struct.rsi_hw*, i32) #1

declare dso_local i32 @ieee80211_generic_frame_duration(i32, %struct.ieee80211_vif*, i32, i32, %struct.ieee80211_rate*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
