; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tps65910 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL = common dso_local global i32 0, align 4
@TPS65910_RTC_CTRL_GET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RTC CTRL reg update failed with err:%d\0A\00", align 1
@TPS65910_SECONDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"reading from RTC failed with err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tps65910_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %19 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %20 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TPS65910_RTC_CTRL, align 4
  %23 = load i32, i32* @TPS65910_RTC_CTRL_GET_TIME, align 4
  %24 = load i32, i32* @TPS65910_RTC_CTRL_GET_TIME, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

33:                                               ; preds = %2
  %34 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %35 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TPS65910_SECONDS, align 4
  %38 = load i32, i32* @NUM_TIME_REGS, align 4
  %39 = call i32 @regmap_bulk_read(i32 %36, i32 %37, i8* %14, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

47:                                               ; preds = %33
  %48 = getelementptr inbounds i8, i8* %14, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = call i8* @bcd2bin(i8 zeroext %49)
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds i8, i8* %14, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = call i8* @bcd2bin(i8 zeroext %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds i8, i8* %14, i64 2
  %59 = load i8, i8* %58, align 2
  %60 = call i8* @bcd2bin(i8 zeroext %59)
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds i8, i8* %14, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = call i8* @bcd2bin(i8 zeroext %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds i8, i8* %14, i64 4
  %69 = load i8, i8* %68, align 4
  %70 = call i8* @bcd2bin(i8 zeroext %69)
  %71 = getelementptr i8, i8* %70, i64 -1
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds i8, i8* %14, i64 5
  %75 = load i8, i8* %74, align 1
  %76 = call i8* @bcd2bin(i8 zeroext %75)
  %77 = getelementptr i8, i8* %76, i64 100
  %78 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %47, %42, %28
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #2

declare dso_local i8* @bcd2bin(i8 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
