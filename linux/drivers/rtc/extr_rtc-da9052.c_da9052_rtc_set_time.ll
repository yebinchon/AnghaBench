; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.da9052_rtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DA9052_COUNT_S_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set RTC time: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9052_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.da9052_rtc*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 163
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.da9052_rtc* @dev_get_drvdata(%struct.device* %22)
  store %struct.da9052_rtc* %23, %struct.da9052_rtc** %6, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 %43, i32* %44, align 16
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 100
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 %48, i32* %49, align 4
  %50 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %51 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DA9052_COUNT_S_REG, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %55 = call i32 @da9052_group_write(i32 %52, i32 %53, i32 6, i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %21
  %59 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @rtc_err(%struct.da9052_rtc* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %21
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.da9052_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9052_group_write(i32, i32, i32, i32*) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
