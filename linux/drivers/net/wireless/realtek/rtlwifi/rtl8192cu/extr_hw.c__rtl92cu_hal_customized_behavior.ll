; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_hal_customized_behavior.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_hal_customized_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_hal = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RT Customized ID: 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_hal_customized_behavior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_hal_customized_behavior(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %8)
  store %struct.rtl_hal* %9, %struct.rtl_hal** %4, align 8
  %10 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 133, label %13
    i32 132, label %17
    i32 130, label %17
    i32 129, label %17
    i32 131, label %17
    i32 134, label %17
    i32 128, label %17
  ]

13:                                               ; preds = %1
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %19

17:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %18

18:                                               ; preds = %1, %17
  br label %19

19:                                               ; preds = %18, %13
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @COMP_INIT, align 4
  %22 = load i32, i32* @DBG_DMESG, align 4
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
