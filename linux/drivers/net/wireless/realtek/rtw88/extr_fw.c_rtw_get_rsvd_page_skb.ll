; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_get_rsvd_page_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_get_rsvd_page_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @rtw_get_rsvd_page_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtw_get_rsvd_page_skb(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %30 [
    i32 132, label %10
    i32 129, label %14
    i32 130, label %18
    i32 131, label %22
    i32 128, label %26
  ]

10:                                               ; preds = %3
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.sk_buff* @rtw_beacon_get(%struct.ieee80211_hw* %11, %struct.ieee80211_vif* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.sk_buff* @ieee80211_pspoll_get(%struct.ieee80211_hw* %15, %struct.ieee80211_vif* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = call %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw* %19, %struct.ieee80211_vif* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = call %struct.sk_buff* @ieee80211_nullfunc_get(%struct.ieee80211_hw* %23, %struct.ieee80211_vif* %24, i32 0)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = call %struct.sk_buff* @ieee80211_nullfunc_get(%struct.ieee80211_hw* %27, %struct.ieee80211_vif* %28, i32 1)
  store %struct.sk_buff* %29, %struct.sk_buff** %8, align 8
  br label %31

30:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %37

31:                                               ; preds = %26, %22, %18, %14, %10
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %37

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %37

37:                                               ; preds = %35, %34, %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %38
}

declare dso_local %struct.sk_buff* @rtw_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_pspoll_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
