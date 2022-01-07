; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_fwlps_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_fwlps_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_hal = type { i32 }

@FW_PS_ACTIVE_MODE = common dso_local global i32 0, align 4
@FW_PS_STATE_ALL_ON_88E = common dso_local global i32 0, align 4
@FW_PS_ACK = common dso_local global i32 0, align 4
@HW_VAR_H2C_FW_PWRMODE = common dso_local global i32 0, align 4
@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@HW_VAR_SET_RPWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl88ee_fwlps_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_fwlps_leave(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %12)
  store %struct.rtl_ps_ctl* %13, %struct.rtl_ps_ctl** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @FW_PS_ACTIVE_MODE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load i32, i32* @FW_PS_STATE_ALL_ON_88E, align 4
  %24 = load i32, i32* @FW_PS_ACK, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @_rtl88ee_set_fw_clock_on(%struct.ieee80211_hw* %26, i32 %27, i32 0)
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %36, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load i32, i32* @HW_VAR_H2C_FW_PWRMODE, align 4
  %40 = call i32 %37(%struct.ieee80211_hw* %38, i32 %39, i32* %8)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %46, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %50 = call i32 %47(%struct.ieee80211_hw* %48, i32 %49, i32* %6)
  br label %83

51:                                               ; preds = %1
  %52 = load i32, i32* @FW_PS_STATE_ALL_ON_88E, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %58, align 8
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = load i32, i32* @HW_VAR_SET_RPWM, align 4
  %62 = call i32 %59(%struct.ieee80211_hw* %60, i32 %61, i32* %7)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %68, align 8
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = load i32, i32* @HW_VAR_H2C_FW_PWRMODE, align 4
  %72 = call i32 %69(%struct.ieee80211_hw* %70, i32 %71, i32* %8)
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %78, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %82 = call i32 %79(%struct.ieee80211_hw* %80, i32 %81, i32* %6)
  br label %83

83:                                               ; preds = %51, %22
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl88ee_set_fw_clock_on(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
