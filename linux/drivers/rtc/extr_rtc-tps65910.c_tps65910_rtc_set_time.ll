; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }
%struct.tps65910 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL_STOP_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RTC stop failed with err:%d\0A\00", align 1
@TPS65910_SECONDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"rtc_set_time error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RTC start failed with err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tps65910_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load i32, i32* @NUM_TIME_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tps65910* @dev_get_drvdata(i32 %17)
  store %struct.tps65910* %18, %struct.tps65910** %8, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call zeroext i8 @bin2bcd(i64 %21)
  %23 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %22, i8* %23, align 16
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call zeroext i8 @bin2bcd(i64 %26)
  %28 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i8 @bin2bcd(i64 %31)
  %33 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call zeroext i8 @bin2bcd(i64 %36)
  %38 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call zeroext i8 @bin2bcd(i64 %42)
  %44 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %43, i8* %44, align 4
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 100
  %49 = call zeroext i8 @bin2bcd(i64 %48)
  %50 = getelementptr inbounds i8, i8* %14, i64 5
  store i8 %49, i8* %50, align 1
  %51 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %52 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %55 = load i32, i32* @TPS65910_RTC_CTRL_STOP_RTC, align 4
  %56 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %2
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

64:                                               ; preds = %2
  %65 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %66 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TPS65910_SECONDS, align 4
  %69 = load i32, i32* @NUM_TIME_REGS, align 4
  %70 = call i32 @regmap_bulk_write(i32 %67, i32 %68, i8* %14, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

78:                                               ; preds = %64
  %79 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %80 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %83 = load i32, i32* @TPS65910_RTC_CTRL_STOP_RTC, align 4
  %84 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 1)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %73, %59
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local zeroext i8 @bin2bcd(i64) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
