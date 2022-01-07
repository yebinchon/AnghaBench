; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stmp3xxx_rtc_data = type { i64 }

@STMP3XXX_RTC_CTRL_ALARM_IRQ_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_CTRL = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmp3xxx_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmp3xxx_rtc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.stmp3xxx_rtc_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.stmp3xxx_rtc_data* %6, %struct.stmp3xxx_rtc_data** %4, align 8
  %7 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %8 = icmp ne %struct.stmp3xxx_rtc_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @STMP3XXX_RTC_CTRL_ALARM_IRQ_EN, align 4
  %12 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %13 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STMP3XXX_RTC_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %11, i64 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %10, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.stmp3xxx_rtc_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
