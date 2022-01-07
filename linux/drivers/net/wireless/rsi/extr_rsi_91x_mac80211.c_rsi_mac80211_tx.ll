; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rsi_mac80211_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_mac80211_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rsi_hw*, align 8
  %8 = alloca %struct.rsi_common*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rsi_hw*, %struct.rsi_hw** %11, align 8
  store %struct.rsi_hw* %12, %struct.rsi_hw** %7, align 8
  %13 = load %struct.rsi_hw*, %struct.rsi_hw** %7, align 8
  %14 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %13, i32 0, i32 0
  %15 = load %struct.rsi_common*, %struct.rsi_common** %14, align 8
  store %struct.rsi_common* %15, %struct.rsi_common** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %9, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ieee80211_is_auth(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %27 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @rsi_core_xmit(%struct.rsi_common* %29, %struct.sk_buff* %30)
  ret void
}

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i32 @rsi_core_xmit(%struct.rsi_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
