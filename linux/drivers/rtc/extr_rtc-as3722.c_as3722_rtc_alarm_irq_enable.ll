; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.as3722_rtc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @as3722_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3722_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.as3722_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.as3722_rtc* %7, %struct.as3722_rtc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @enable_irq(i32 %18)
  %20 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %38

22:                                               ; preds = %10, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @disable_irq(i32 %33)
  %35 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %25, %22
  br label %38

38:                                               ; preds = %37, %15
  ret i32 0
}

declare dso_local %struct.as3722_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
