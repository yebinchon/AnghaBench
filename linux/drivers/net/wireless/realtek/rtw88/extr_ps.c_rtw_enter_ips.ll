; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_ips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_ps.c_rtw_enter_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_FLAG_INACTIVE_PS = common dso_local global i32 0, align 4
@COEX_IPS_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_enter_ips(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = load i32, i32* @RTW_FLAG_INACTIVE_PS, align 4
  %5 = call i32 @rtw_flag_set(%struct.rtw_dev* %3, i32 %4)
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = load i32, i32* @COEX_IPS_ENTER, align 4
  %8 = call i32 @rtw_coex_ips_notify(%struct.rtw_dev* %6, i32 %7)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = call i32 @rtw_core_stop(%struct.rtw_dev* %9)
  ret i32 0
}

declare dso_local i32 @rtw_flag_set(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_ips_notify(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_core_stop(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
