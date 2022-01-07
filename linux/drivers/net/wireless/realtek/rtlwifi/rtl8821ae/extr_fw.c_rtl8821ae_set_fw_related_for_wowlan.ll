; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_set_fw_related_for_wowlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_set_fw_related_for_wowlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i32, i32, i64, i32 }
%struct.rtl_ps_ctl = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Re-Download Firmware failed!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Re-Download Firmware Success !!\0A\00", align 1
@FW_PS_STATE_ALL_ON_8821AE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_set_fw_related_for_wowlan(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %14)
  store %struct.rtl_ps_ctl* %15, %struct.rtl_ps_ctl** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @rtl8821ae_download_fw(%struct.ieee80211_hw* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = load i32, i32* @DBG_DMESG, align 4
  %24 = call i32 @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %45

27:                                               ; preds = %2
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = load i32, i32* @COMP_INIT, align 4
  %30 = load i32, i32* @DBG_DMESG, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @FW_PS_STATE_ALL_ON_8821AE, align 4
  %37 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %38 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %40 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %27, %20
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64 @rtl8821ae_download_fw(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
