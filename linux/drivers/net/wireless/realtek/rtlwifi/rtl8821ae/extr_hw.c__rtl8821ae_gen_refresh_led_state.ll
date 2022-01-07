; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_gen_refresh_led_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_gen_refresh_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.rtl_led }
%struct.rtl_led = type { i32 }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_hal = type { i64 }

@RF_CHANGE_BY_IPS = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RF_CHANGE_BY_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_gen_refresh_led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_gen_refresh_led_state(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_led*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %10)
  store %struct.rtl_ps_ctl* %11, %struct.rtl_ps_ctl** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.rtl_led* %14, %struct.rtl_led** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %6, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %82

24:                                               ; preds = %1
  %25 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_CHANGE_BY_IPS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %39 = call i32 @rtl8812ae_sw_led_on(%struct.ieee80211_hw* %37, %struct.rtl_led* %38)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %43 = call i32 @rtl8821ae_sw_led_on(%struct.ieee80211_hw* %41, %struct.rtl_led* %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %82

45:                                               ; preds = %24
  %46 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %47 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RF_CHANGE_BY_INIT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %60 = call i32 @rtl8812ae_sw_led_on(%struct.ieee80211_hw* %58, %struct.rtl_led* %59)
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %64 = call i32 @rtl8821ae_sw_led_on(%struct.ieee80211_hw* %62, %struct.rtl_led* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %81

66:                                               ; preds = %45
  %67 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %75 = call i32 @rtl8812ae_sw_led_off(%struct.ieee80211_hw* %73, %struct.rtl_led* %74)
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %79 = call i32 @rtl8821ae_sw_led_off(%struct.ieee80211_hw* %77, %struct.rtl_led* %78)
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %23, %81, %44
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8812ae_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8821ae_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8812ae_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8821ae_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
