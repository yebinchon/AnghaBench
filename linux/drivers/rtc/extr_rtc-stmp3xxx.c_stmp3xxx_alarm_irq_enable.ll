; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stmp3xxx_rtc_data = type { i64 }

@STMP3XXX_RTC_PERSISTENT0_ALARM_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@STMP3XXX_RTC_CTRL_ALARM_IRQ_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_CTRL = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @stmp3xxx_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmp3xxx_rtc_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.stmp3xxx_rtc_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.stmp3xxx_rtc_data* %7, %struct.stmp3xxx_rtc_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_EN, align 4
  %12 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %15 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STMP3XXX_RTC_PERSISTENT0, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %13, i64 %20)
  %22 = load i32, i32* @STMP3XXX_RTC_CTRL_ALARM_IRQ_EN, align 4
  %23 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %24 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @STMP3XXX_RTC_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %22, i64 %29)
  br label %52

31:                                               ; preds = %2
  %32 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_EN, align 4
  %33 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %36 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STMP3XXX_RTC_PERSISTENT0, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %34, i64 %41)
  %43 = load i32, i32* @STMP3XXX_RTC_CTRL_ALARM_IRQ_EN, align 4
  %44 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %5, align 8
  %45 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @STMP3XXX_RTC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %43, i64 %50)
  br label %52

52:                                               ; preds = %31, %10
  ret i32 0
}

declare dso_local %struct.stmp3xxx_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
