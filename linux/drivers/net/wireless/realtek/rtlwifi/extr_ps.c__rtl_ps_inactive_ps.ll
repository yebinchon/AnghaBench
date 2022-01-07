; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c__rtl_ps_inactive_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c__rtl_ps_inactive_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.rtl_hal = type { i64 }
%struct.rtl_ps_ctl = type { i32, i64, i32 }

@ERFON = common dso_local global i64 0, align 8
@INTF_PCI = common dso_local global i64 0, align 8
@RT_RF_OFF_LEVL_ASPM = common dso_local global i32 0, align 4
@RT_PS_LEVEL_ASPM = common dso_local global i32 0, align 4
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_ps_inactive_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_ps_inactive_ps(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %12)
  store %struct.rtl_ps_ctl* %13, %struct.rtl_ps_ctl** %5, align 8
  %14 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ERFON, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INTF_PCI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %27
  %35 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %36 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %37 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INTF_PCI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %49, align 8
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = call i32 %50(%struct.ieee80211_hw* %51)
  %53 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %54 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %55 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %39, %34, %27
  br label %57

57:                                               ; preds = %56, %21, %1
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %63 = call i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw* %58, i64 %61, i32 %62)
  %64 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ERFOFF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %57
  %70 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INTF_PCI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RT_RF_OFF_LEVL_ASPM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %84 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %85 = call i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %91, align 8
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = call i32 %92(%struct.ieee80211_hw* %93)
  %95 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %96 = load i32, i32* @RT_PS_LEVEL_ASPM, align 4
  %97 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %82, %75
  br label %99

99:                                               ; preds = %98, %69, %57
  %100 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %101 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw*, i64, i32) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
