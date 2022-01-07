; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl8192cu_endpoint_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl8192cu_endpoint_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192cu_endpoint_mapping(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call i32 @rtl_priv(%struct.ieee80211_hw* %5)
  %7 = call %struct.rtl_hal* @rtl_hal(i32 %6)
  store %struct.rtl_hal* %7, %struct.rtl_hal** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.rtl_hal*, %struct.rtl_hal** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IS_NORMAL_CHIP(i32 %10)
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @configvernoutep(%struct.ieee80211_hw* %15)
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @configvertoutep(%struct.ieee80211_hw* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %31

24:                                               ; preds = %20
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call i32 @_out_ep_mapping(%struct.ieee80211_hw* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %29, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @configvernoutep(%struct.ieee80211_hw*) #1

declare dso_local i32 @configvertoutep(%struct.ieee80211_hw*) #1

declare dso_local i32 @_out_ep_mapping(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
