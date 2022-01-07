; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.sirfsoc_rtc_drv = type { i32, i32 }

@RTC_CN = common dso_local global i32 0, align 4
@RTC_ALARM0 = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@RTC_SHIFT = common dso_local global i32 0, align 4
@RTC_STATUS = common dso_local global i32 0, align 4
@SIRFSOC_RTC_AL0E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sirfsoc_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
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
  %10 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %14 = load i32, i32* @RTC_CN, align 4
  %15 = call i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %13, i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %18 = load i32, i32* @RTC_ALARM0, align 4
  %19 = call i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %17, i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %22 = call i32 @memset(%struct.rtc_wkalrm* %21, i32 0, i32 8)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %28 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @BITS_PER_LONG, align 4
  %32 = load i32, i32* @RTC_SHIFT, align 4
  %33 = sub nsw i32 %31, %32
  %34 = shl i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @RTC_SHIFT, align 4
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = or i64 %35, %39
  %41 = trunc i64 %40 to i32
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 1
  %44 = call i32 @rtc_time_to_tm(i32 %41, i32* %43)
  br label %63

45:                                               ; preds = %2
  %46 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BITS_PER_LONG, align 4
  %50 = load i32, i32* @RTC_SHIFT, align 4
  %51 = sub nsw i32 %49, %50
  %52 = shl i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @RTC_SHIFT, align 4
  %56 = zext i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = or i64 %53, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %60, i32 0, i32 1
  %62 = call i32 @rtc_time_to_tm(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %45, %26
  %64 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %65 = load i32, i32* @RTC_STATUS, align 4
  %66 = call i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %64, i32 %65)
  %67 = load i32, i32* @SIRFSOC_RTC_AL0E, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %7, align 8
  %75 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock_irq(i32* %75)
  ret i32 0
}

declare dso_local %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @memset(%struct.rtc_wkalrm*, i32, i32) #1

declare dso_local i32 @rtc_time_to_tm(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
