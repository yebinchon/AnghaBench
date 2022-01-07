; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_gen_refresh_led_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_gen_refresh_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.rtl_led }
%struct.rtl_led = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@RF_CHANGE_BY_IPS = common dso_local global i64 0, align 8
@RF_CHANGE_BY_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl88ee_gen_refresh_led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_gen_refresh_led_state(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_led*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %9)
  store %struct.rtl_ps_ctl* %10, %struct.rtl_ps_ctl** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.rtl_led* %13, %struct.rtl_led** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RF_CHANGE_BY_IPS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %29 = call i32 @rtl88ee_sw_led_on(%struct.ieee80211_hw* %27, %struct.rtl_led* %28)
  br label %45

30:                                               ; preds = %20
  %31 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RF_CHANGE_BY_INIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %39 = call i32 @rtl88ee_sw_led_on(%struct.ieee80211_hw* %37, %struct.rtl_led* %38)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %43 = call i32 @rtl88ee_sw_led_off(%struct.ieee80211_hw* %41, %struct.rtl_led* %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %19, %44, %26
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl88ee_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl88ee_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
