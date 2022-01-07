; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_simple_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_simple_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i64 }
%struct.rtl_ps_ctl = type { i32 }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@ERFON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_simple_initialize_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_simple_initialize_adapter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %13)
  store %struct.rtl_ps_ctl* %14, %struct.rtl_ps_ctl** %5, align 8
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  store i32 -2132342776, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 248, i32* %8, align 4
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -2132211704, i32* %6, align 4
  store i32 250, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @_rtl8821ae_dynamic_rqpn(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* @ERFON, align 4
  %39 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64 @_rtl8821ae_dynamic_rqpn(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
