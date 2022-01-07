; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_rf_awake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_swlps_rf_awake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_6__ = type { i32 }
%struct.rtl_ps_ctl = type { i32 }
%struct.rtl_mac = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@RT_RF_LPS_LEVEL_ASPM = common dso_local global i32 0, align 4
@RT_PS_LEVEL_ASPM = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@RF_CHANGE_BY_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_swlps_rf_awake(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %9)
  store %struct.rtl_ps_ctl* %10, %struct.rtl_ps_ctl** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC80211_LINKED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %63

27:                                               ; preds = %20
  %28 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RT_RF_LPS_LEVEL_ASPM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %36 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %37 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %43, align 8
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 %44(%struct.ieee80211_hw* %45)
  %47 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %48 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %49 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %34, %27
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %56 = load i32, i32* @ERFON, align 4
  %57 = load i32, i32* @RF_CHANGE_BY_PS, align 4
  %58 = call i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw* %55, i32 %56, i32 %57)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %50, %26, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
