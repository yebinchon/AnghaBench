; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_mt7601u_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_mt7601u_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32, %struct.mt76_wcid* }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.mt76_sta = type { %struct.mt76_wcid }
%struct.mt76_txwi = type { i32 }
%struct.mt76_vif = type { %struct.mt76_wcid }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.mt7601u_dev*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.mt76_sta*, align 8
  %12 = alloca %struct.mt76_wcid*, align 8
  %13 = alloca %struct.mt76_txwi*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mt76_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %17)
  store %struct.ieee80211_tx_info* %18, %struct.ieee80211_tx_info** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %20, align 8
  store %struct.mt7601u_dev* %21, %struct.mt7601u_dev** %8, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %24, align 8
  store %struct.ieee80211_vif* %25, %struct.ieee80211_vif** %9, align 8
  %26 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %27, align 8
  store %struct.ieee80211_sta* %28, %struct.ieee80211_sta** %10, align 8
  store %struct.mt76_sta* null, %struct.mt76_sta** %11, align 8
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 1
  %31 = load %struct.mt76_wcid*, %struct.mt76_wcid** %30, align 8
  store %struct.mt76_wcid* %31, %struct.mt76_wcid** %12, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb2q(%struct.sk_buff* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i8** %40)
  %42 = icmp slt i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUILD_BUG_ON(i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %47, i8** %52, align 8
  %53 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i64 @mt7601u_skb_rooms(%struct.mt7601u_dev* %53, %struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %3
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i64 @mt76_insert_hdr_pad(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %3
  %62 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %63 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @ieee80211_free_txskb(i32 %64, %struct.sk_buff* %65)
  br label %108

67:                                               ; preds = %57
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %69 = icmp ne %struct.ieee80211_sta* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.mt76_sta*
  store %struct.mt76_sta* %74, %struct.mt76_sta** %11, align 8
  %75 = load %struct.mt76_sta*, %struct.mt76_sta** %11, align 8
  %76 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %75, i32 0, i32 0
  store %struct.mt76_wcid* %76, %struct.mt76_wcid** %12, align 8
  br label %88

77:                                               ; preds = %67
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %79 = icmp ne %struct.ieee80211_vif* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.mt76_vif*
  store %struct.mt76_vif* %84, %struct.mt76_vif** %16, align 8
  %85 = load %struct.mt76_vif*, %struct.mt76_vif** %16, align 8
  %86 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %85, i32 0, i32 0
  store %struct.mt76_wcid* %86, %struct.mt76_wcid** %12, align 8
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %92 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call %struct.mt76_txwi* @mt7601u_push_txwi(%struct.mt7601u_dev* %89, %struct.sk_buff* %90, %struct.ieee80211_sta* %91, %struct.mt76_wcid* %92, i32 %93)
  store %struct.mt76_txwi* %94, %struct.mt76_txwi** %13, align 8
  %95 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @mt7601u_dma_enqueue_tx(%struct.mt7601u_dev* %95, %struct.sk_buff* %96, %struct.mt76_wcid* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %108

102:                                              ; preds = %88
  %103 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load %struct.mt76_sta*, %struct.mt76_sta** %11, align 8
  %106 = load %struct.mt76_txwi*, %struct.mt76_txwi** %13, align 8
  %107 = call i32 @trace_mt_tx(%struct.mt7601u_dev* %103, %struct.sk_buff* %104, %struct.mt76_sta* %105, %struct.mt76_txwi* %106)
  br label %108

108:                                              ; preds = %102, %101, %61
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb2q(%struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @mt7601u_skb_rooms(%struct.mt7601u_dev*, %struct.sk_buff*) #1

declare dso_local i64 @mt76_insert_hdr_pad(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local %struct.mt76_txwi* @mt7601u_push_txwi(%struct.mt7601u_dev*, %struct.sk_buff*, %struct.ieee80211_sta*, %struct.mt76_wcid*, i32) #1

declare dso_local i64 @mt7601u_dma_enqueue_tx(%struct.mt7601u_dev*, %struct.sk_buff*, %struct.mt76_wcid*, i32) #1

declare dso_local i32 @trace_mt_tx(%struct.mt7601u_dev*, %struct.sk_buff*, %struct.mt76_sta*, %struct.mt76_txwi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
