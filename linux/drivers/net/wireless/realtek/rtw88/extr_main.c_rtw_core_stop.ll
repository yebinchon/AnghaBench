; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_coex }
%struct.rtw_coex = type { i32, i32, i32 }

@RTW_FLAG_RUNNING = common dso_local global i32 0, align 4
@RTW_FLAG_FW_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_core_stop(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %4, i32 0, i32 1
  store %struct.rtw_coex* %5, %struct.rtw_coex** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = load i32, i32* @RTW_FLAG_RUNNING, align 4
  %8 = call i32 @rtw_flag_clear(%struct.rtw_dev* %6, i32 %7)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = load i32, i32* @RTW_FLAG_FW_RUNNING, align 4
  %11 = call i32 @rtw_flag_clear(%struct.rtw_dev* %9, i32 %10)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %15, i32 0, i32 2
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %18, i32 0, i32 1
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %22 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %21, i32 0, i32 0
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %25 = call i32 @rtw_power_off(%struct.rtw_dev* %24)
  ret void
}

declare dso_local i32 @rtw_flag_clear(%struct.rtw_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rtw_power_off(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
