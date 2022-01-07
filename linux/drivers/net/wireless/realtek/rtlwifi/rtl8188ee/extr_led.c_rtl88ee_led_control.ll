; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_led.c_rtl88ee_led_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_led.c_rtl88ee_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@LED_CTL_TX = common dso_local global i32 0, align 4
@LED_CTL_RX = common dso_local global i32 0, align 4
@LED_CTL_SITE_SURVEY = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@LED_CTL_START_TO_LINK = common dso_local global i32 0, align 4
@LED_CTL_POWER_ON = common dso_local global i32 0, align 4
@COMP_LED = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ledaction %d,\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88ee_led_control(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %10)
  store %struct.rtl_ps_ctl* %11, %struct.rtl_ps_ctl** %6, align 8
  %12 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %6, align 8
  %13 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LED_CTL_TX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LED_CTL_RX, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @LED_CTL_SITE_SURVEY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LED_CTL_LINK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @LED_CTL_START_TO_LINK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @LED_CTL_POWER_ON, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17
  br label %55

46:                                               ; preds = %41, %2
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = load i32, i32* @COMP_LED, align 4
  %49 = load i32, i32* @DBG_TRACE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @_rtl88ee_sw_led_control(%struct.ieee80211_hw* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %45
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_rtl88ee_sw_led_control(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
