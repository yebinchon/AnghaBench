; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }
%struct.da9055_rtc = type { i32 }

@DA9055_REG_COUNT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9055_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.da9055_rtc*, align 8
  %6 = alloca [6 x i64], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.da9055_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.da9055_rtc* %8, %struct.da9055_rtc** %5, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 1
  store i64 %15, i64* %16, align 8
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 2
  store i64 %19, i64* %20, align 16
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 3
  store i64 %23, i64* %24, align 8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 4
  store i64 %28, i64* %29, align 16
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 100
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 5
  store i64 %33, i64* %34, align 8
  %35 = load %struct.da9055_rtc*, %struct.da9055_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DA9055_REG_COUNT_S, align 4
  %39 = getelementptr inbounds [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %40 = call i32 @da9055_group_write(i32 %37, i32 %38, i32 6, i64* %39)
  ret i32 %40
}

declare dso_local %struct.da9055_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9055_group_write(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
