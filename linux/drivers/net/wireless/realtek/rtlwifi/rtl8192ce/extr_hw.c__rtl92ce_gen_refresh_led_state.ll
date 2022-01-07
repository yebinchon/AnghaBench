; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_gen_refresh_led_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_gen_refresh_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtl_led }
%struct.rtl_led = type { i32 }
%struct.rtl_pci = type { i64 }
%struct.rtl_ps_ctl = type { i64 }

@RF_CHANGE_BY_IPS = common dso_local global i64 0, align 8
@RF_CHANGE_BY_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ce_gen_refresh_led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_gen_refresh_led_state(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_led*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_pci* @rtl_pcidev(i32 %10)
  store %struct.rtl_pci* %11, %struct.rtl_pci** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %13)
  store %struct.rtl_ps_ctl* %14, %struct.rtl_ps_ctl** %5, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.rtl_led* %17, %struct.rtl_led** %6, align 8
  %18 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RF_CHANGE_BY_IPS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %32 = call i32 @rtl92ce_sw_led_on(%struct.ieee80211_hw* %30, %struct.rtl_led* %31)
  br label %48

33:                                               ; preds = %23
  %34 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RF_CHANGE_BY_INIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %42 = call i32 @rtl92ce_sw_led_on(%struct.ieee80211_hw* %40, %struct.rtl_led* %41)
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %46 = call i32 @rtl92ce_sw_led_off(%struct.ieee80211_hw* %44, %struct.rtl_led* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %22, %47, %29
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92ce_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl92ce_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
