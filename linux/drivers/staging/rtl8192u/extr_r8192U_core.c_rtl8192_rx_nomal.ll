; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rx_nomal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rx_nomal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32 }
%struct.rtl_80211_hdr_1addr = type { i32 }

@IEEE80211_24GHZ_BAND = common dso_local global i32 0, align 4
@RX_URB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"actual_length: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @rtl8192_rx_nomal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_rx_nomal(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtl8192_rx_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.ieee80211_rx_stats, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_80211_hdr_1addr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %13, %struct.rtl8192_rx_info** %3, align 8
  %14 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @ieee80211_priv(%struct.net_device* %17)
  %19 = inttoptr i64 %18 to %struct.r8192_priv*
  store %struct.r8192_priv* %19, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 0
  store i32 158, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 1
  %22 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 3
  store i32 0, i32* %24, align 4
  store i32 0, i32* %7, align 4
  store %struct.rtl_80211_hdr_1addr* null, %struct.rtl_80211_hdr_1addr** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 24
  br i1 %29, label %30, label %94

30:                                               ; preds = %1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RX_URB_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call i32 @query_rxdesc_status(%struct.sk_buff* %37, %struct.ieee80211_rx_stats* %6, i32 0)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 4
  %44 = call i32 @skb_trim(%struct.sk_buff* %39, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.rtl_80211_hdr_1addr*
  store %struct.rtl_80211_hdr_1addr* %51, %struct.rtl_80211_hdr_1addr** %8, align 8
  store i32 0, i32* %9, align 4
  %52 = load %struct.rtl_80211_hdr_1addr*, %struct.rtl_80211_hdr_1addr** %8, align 8
  %53 = getelementptr inbounds %struct.rtl_80211_hdr_1addr, %struct.rtl_80211_hdr_1addr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @is_broadcast_ether_addr(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %67

58:                                               ; preds = %36
  %59 = load %struct.rtl_80211_hdr_1addr*, %struct.rtl_80211_hdr_1addr** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_80211_hdr_1addr, %struct.rtl_80211_hdr_1addr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @is_multicast_ether_addr(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %72 = call i32 @ieee80211_rx(i32 %70, %struct.sk_buff* %71, %struct.ieee80211_rx_stats* %6)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %76 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %75)
  br label %93

77:                                               ; preds = %67
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %77
  br label %93

93:                                               ; preds = %92, %74
  br label %107

94:                                               ; preds = %30, %1
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @netdev_dbg(%struct.net_device* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %94, %93
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @query_rxdesc_status(%struct.sk_buff*, %struct.ieee80211_rx_stats*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
