; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.rtc_device* }
%struct.TYPE_3__ = type { i32 }
%struct.rtc_device = type { i32 }

@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@WM8350_RTC_TIME_CONTROL = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to disable alarm: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8350_rtc_alarm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_alarm_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wm8350*
  store %struct.wm8350* %9, %struct.wm8350** %5, align 8
  %10 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %11 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.rtc_device*, %struct.rtc_device** %12, align 8
  store %struct.rtc_device* %13, %struct.rtc_device** %6, align 8
  %14 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %15 = load i32, i32* @RTC_IRQF, align 4
  %16 = load i32, i32* @RTC_AF, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rtc_update_irq(%struct.rtc_device* %14, i32 1, i32 %17)
  %19 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %20 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %21 = load i32, i32* @WM8350_RTC_ALMSET, align 4
  %22 = call i32 @wm8350_set_bits(%struct.wm8350* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %27 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %2
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
