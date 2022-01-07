; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_tm_to_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_tm_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@HOUR_PM_MASK = common dso_local global i32 0, align 4
@RTC_HOUR = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"RTC cannot handle the year %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*, i32*)* @s5m8767_tm_to_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_tm_to_data(%struct.rtc_time* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %7 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* @RTC_SEC, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* @RTC_MIN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 12
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HOUR_PM_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @RTC_HOUR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HOUR_PM_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @RTC_HOUR, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %22
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @RTC_WEEKDAY, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* @RTC_DATE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* @RTC_MONTH, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 100
  br i1 %65, label %66, label %71

66:                                               ; preds = %41
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 100
  br label %72

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i32 [ %70, %66 ], [ 0, %71 ]
  %74 = load i32*, i32** %5, align 8
  %75 = load i64, i64* @RTC_YEAR1, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 100
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 1900, %84
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
