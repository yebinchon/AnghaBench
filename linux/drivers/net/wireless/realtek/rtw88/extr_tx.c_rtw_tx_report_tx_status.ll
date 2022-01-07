; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_report_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_report_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.sk_buff*, i32)* @rtw_tx_report_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_tx_report_tx_status(%struct.rtw_dev* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %8)
  store %struct.ieee80211_tx_info* %9, %struct.ieee80211_tx_info** %7, align 8
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %11 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ieee80211_tx_status_irqsafe(i32 %30, %struct.sk_buff* %31)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
