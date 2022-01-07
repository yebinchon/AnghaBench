; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"can't set alarm irq, err %d\0A\00", align 1
@RTC_COUNT4_DUMMYREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"read counter failed with err %d\0A\00", align 1
@ALM1_VALID_RANGE_IN_SEC = common dso_local global i64 0, align 8
@RTC_ALARM1_HI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"programming alarm failed with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tps6586x_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca [6 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.device* @to_tps6586x_dev(%struct.device* %15)
  store %struct.device* %16, %struct.device** %6, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = call i64 @rtc_tm_to_time64(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tps6586x_rtc_alarm_irq_enable(%struct.device* %20, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %98

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @RTC_COUNT4_DUMMYREAD, align 4
  %35 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %36 = call i32 @tps6586x_reads(%struct.device* %33, i32 %34, i32 48, i64* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 48
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = shl i64 %50, 8
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load i64, i64* %10, align 8
  %63 = lshr i64 %62, 10
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* @ALM1_VALID_RANGE_IN_SEC, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i64, i64* %7, align 8
  %74 = shl i64 %73, 10
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = lshr i64 %75, 16
  %77 = and i64 %76, 255
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %77, i64* %78, align 16
  %79 = load i64, i64* %8, align 8
  %80 = lshr i64 %79, 8
  %81 = and i64 %80, 255
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = and i64 %83, 255
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 %84, i64* %85, align 16
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* @RTC_ALARM1_HI, align 4
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %89 = call i32 @tps6586x_writes(%struct.device* %86, i32 %87, i32 24, i64* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %72
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %72
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %39, %27
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.device* @to_tps6586x_dev(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @tps6586x_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tps6586x_reads(%struct.device*, i32, i32, i64*) #1

declare dso_local i32 @tps6586x_writes(%struct.device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
