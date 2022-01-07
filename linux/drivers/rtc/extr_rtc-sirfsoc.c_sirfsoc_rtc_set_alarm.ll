; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64 }
%struct.sirfsoc_rtc_drv = type { i32 }

@RTC_STATUS = common dso_local global i32 0, align 4
@SIRFSOC_RTC_AL0E = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"An old alarm was set, will be replaced by a new one\0A\00", align 1
@RTC_ALARM0 = common dso_local global i32 0, align 4
@RTC_SHIFT = common dso_local global i64 0, align 8
@SIRFSOC_RTC_AL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sirfsoc_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sirfsoc_rtc_drv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device* %8)
  store %struct.sirfsoc_rtc_drv* %9, %struct.sirfsoc_rtc_drv** %7, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 0
  %17 = call i32 @rtc_tm_to_time(i32* %16, i64* %6)
  %18 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %22 = load i32, i32* @RTC_STATUS, align 4
  %23 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @dev_info(%struct.device* %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %14
  %32 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %33 = load i32, i32* @RTC_ALARM0, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @RTC_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %32, i32 %33, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, -8
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* @SIRFSOC_RTC_AL0, align 8
  %41 = load i64, i64* %5, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %5, align 8
  %46 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %47 = load i32, i32* @RTC_STATUS, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %46, i32 %47, i64 %48)
  %50 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %51 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  br label %82

53:                                               ; preds = %2
  %54 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %58 = load i32, i32* @RTC_STATUS, align 4
  %59 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %57, i32 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %53
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, -8
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* @SIRFSOC_RTC_AL0, align 8
  %68 = load i64, i64* %5, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %5, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %5, align 8
  %74 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %75 = load i32, i32* @RTC_STATUS, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %64, %53
  %79 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  br label %82

82:                                               ; preds = %78, %31
  ret i32 0
}

declare dso_local %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
