; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.da9055_rtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @da9055_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca %struct.da9055_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 0
  store %struct.rtc_time* %10, %struct.rtc_time** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.da9055_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.da9055_rtc* %12, %struct.da9055_rtc** %8, align 8
  %13 = load %struct.da9055_rtc*, %struct.da9055_rtc** %8, align 8
  %14 = call i32 @da9055_rtc_enable_alarm(%struct.da9055_rtc* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.da9055_rtc*, %struct.da9055_rtc** %8, align 8
  %21 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %24 = call i32 @da9055_set_alarm(i32 %22, %struct.rtc_time* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.da9055_rtc*, %struct.da9055_rtc** %8, align 8
  %31 = call i32 @da9055_rtc_enable_alarm(%struct.da9055_rtc* %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %27, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.da9055_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9055_rtc_enable_alarm(%struct.da9055_rtc*, i32) #1

declare dso_local i32 @da9055_set_alarm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
