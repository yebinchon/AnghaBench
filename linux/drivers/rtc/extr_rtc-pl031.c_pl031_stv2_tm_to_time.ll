; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_tm_to_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_tm_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid wday value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTC_MON_SHIFT = common dso_local global i32 0, align 4
@RTC_MDAY_SHIFT = common dso_local global i32 0, align 4
@RTC_WDAY_SHIFT = common dso_local global i32 0, align 4
@RTC_HOUR_SHIFT = common dso_local global i32 0, align 4
@RTC_MIN_SHIFT = common dso_local global i32 0, align 4
@RTC_SEC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*, i64*, i64*)* @pl031_stv2_tm_to_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_stv2_tm_to_time(%struct.device* %0, %struct.rtc_time* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtc_time, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1900
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 6
  br i1 %25, label %26, label %34

26:                                               ; preds = %23, %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %93

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %39 = call i32 @rtc_tm_to_time(%struct.rtc_time* %38, i64* %12)
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @rtc_time_to_tm(i64 %40, %struct.rtc_time* %13)
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %37, %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = srem i32 %46, 100
  %48 = call i32 @bin2bcd(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %49, 100
  %51 = call i32 @bin2bcd(i32 %50)
  %52 = shl i32 %51, 8
  %53 = or i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @RTC_MON_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RTC_MDAY_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @RTC_WDAY_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %67, %71
  %73 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RTC_HOUR_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %72, %77
  %79 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RTC_MIN_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %78, %83
  %85 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RTC_SEC_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %84, %89
  %91 = sext i32 %90 to i64
  %92 = load i64*, i64** %8, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %45, %26
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
