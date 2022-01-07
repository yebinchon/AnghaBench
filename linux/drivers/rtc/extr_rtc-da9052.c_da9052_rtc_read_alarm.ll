; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.da9052_rtc = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to read RTC alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @da9052_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca %struct.da9052_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store %struct.rtc_time* %10, %struct.rtc_time** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.da9052_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.da9052_rtc* %12, %struct.da9052_rtc** %8, align 8
  %13 = load %struct.da9052_rtc*, %struct.da9052_rtc** %8, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %15 = call i32 @da9052_read_alarm(%struct.da9052_rtc* %13, %struct.rtc_time* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.da9052_rtc*, %struct.da9052_rtc** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @rtc_err(%struct.da9052_rtc* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.da9052_rtc*, %struct.da9052_rtc** %8, align 8
  %25 = call i32 @da9052_rtc_get_alarm_status(%struct.da9052_rtc* %24)
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.da9052_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9052_read_alarm(%struct.da9052_rtc*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

declare dso_local i32 @da9052_rtc_get_alarm_status(%struct.da9052_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
