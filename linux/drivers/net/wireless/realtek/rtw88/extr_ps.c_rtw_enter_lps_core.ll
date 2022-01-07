; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_lps_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_lps_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_lps_conf }
%struct.rtw_lps_conf = type { i32, i32, i32, i32 }

@RTW_RF_OFF = common dso_local global i32 0, align 4
@COEX_LPS_ENABLE = common dso_local global i32 0, align 4
@RTW_FLAG_LEISURE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_enter_lps_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_enter_lps_core(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_lps_conf*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %4, i32 0, i32 0
  store %struct.rtw_lps_conf* %5, %struct.rtw_lps_conf** %3, align 8
  %6 = load i32, i32* @RTW_RF_OFF, align 4
  %7 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.rtw_lps_conf*, %struct.rtw_lps_conf** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_lps_conf, %struct.rtw_lps_conf* %13, i32 0, i32 2
  store i32 2, i32* %14, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i32, i32* @COEX_LPS_ENABLE, align 4
  %17 = call i32 @rtw_coex_lps_notify(%struct.rtw_dev* %15, i32 %16)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %19 = call i32 @rtw_fw_set_pwr_mode(%struct.rtw_dev* %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = load i32, i32* @RTW_FLAG_LEISURE_PS, align 4
  %22 = call i32 @rtw_flag_set(%struct.rtw_dev* %20, i32 %21)
  ret void
}

declare dso_local i32 @rtw_coex_lps_notify(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_fw_set_pwr_mode(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_flag_set(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
