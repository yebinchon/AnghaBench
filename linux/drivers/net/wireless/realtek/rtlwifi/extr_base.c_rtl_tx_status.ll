; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@COMP_TX_REPORT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tx report: ack\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"tx report: not ack\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @rtl_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_tx_status(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %8, align 8
  %13 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %14 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %19 = load i32, i32* @COMP_TX_REPORT, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = call i32 @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %29 = load i32, i32* @COMP_TX_REPORT, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %27, %17
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %39, %struct.sk_buff* %40)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
