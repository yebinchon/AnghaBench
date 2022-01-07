; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_RCR = common dso_local global i32 0, align 4
@RTW_WATCH_DOG_DELAY_TIME = common dso_local global i32 0, align 4
@RTW_FLAG_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_core_start(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = call i32 @rtw_power_on(%struct.rtw_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = call i32 @rtw_sec_enable_sec_engine(%struct.rtw_dev* %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = load i32, i32* @REG_RCR, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtw_write32(%struct.rtw_dev* %14, i32 %15, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %24, i32 0, i32 0
  %26 = load i32, i32* @RTW_WATCH_DOG_DELAY_TIME, align 4
  %27 = call i32 @ieee80211_queue_delayed_work(i32 %23, i32* %25, i32 %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @RTW_FLAG_RUNNING, align 4
  %30 = call i32 @rtw_flag_set(%struct.rtw_dev* %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %11, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @rtw_power_on(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_sec_enable_sec_engine(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rtw_flag_set(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
