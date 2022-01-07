; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64 }
%struct.twl_rtc = type { i32* }

@ALL_TIME_REGS = common dso_local global i32 0, align 4
@REG_RTC_CTRL_REG = common dso_local global i32 0, align 4
@BIT_RTC_CTRL_REG_STOP_RTC_M = common dso_local global i8 0, align 1
@TWL_MODULE_RTC = common dso_local global i32 0, align 4
@REG_SECONDS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"rtc_set_time error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @twl_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.twl_rtc*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.twl_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.twl_rtc* %11, %struct.twl_rtc** %5, align 8
  %12 = load i32, i32* @ALL_TIME_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call zeroext i8 @bin2bcd(i64 %18)
  %20 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %19, i8* %20, align 16
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call zeroext i8 @bin2bcd(i64 %23)
  %25 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %24, i8* %25, align 1
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call zeroext i8 @bin2bcd(i64 %28)
  %30 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %29, i8* %30, align 2
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call zeroext i8 @bin2bcd(i64 %33)
  %35 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %34, i8* %35, align 1
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call zeroext i8 @bin2bcd(i64 %39)
  %41 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 %40, i8* %41, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 100
  %46 = call zeroext i8 @bin2bcd(i64 %45)
  %47 = getelementptr inbounds i8, i8* %15, i64 5
  store i8 %46, i8* %47, align 1
  %48 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %49 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %50 = call i32 @twl_rtc_read_u8(%struct.twl_rtc* %48, i8* %6, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %96

54:                                               ; preds = %2
  %55 = load i8, i8* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  %62 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %63 = load i8, i8* %6, align 1
  %64 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %65 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %62, i8 zeroext %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %96

69:                                               ; preds = %54
  %70 = load i32, i32* @TWL_MODULE_RTC, align 4
  %71 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %72 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @REG_SECONDS_REG, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ALL_TIME_REGS, align 4
  %78 = call i32 @twl_i2c_write(i32 %70, i8* %15, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %96

85:                                               ; preds = %69
  %86 = load i8, i8* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %6, align 1
  %92 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %93 = load i8, i8* %6, align 1
  %94 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %95 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %92, i8 zeroext %93, i32 %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %85, %81, %68, %53
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %98)
  ret i32 %97
}

declare dso_local %struct.twl_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local zeroext i8 @bin2bcd(i64) #1

declare dso_local i32 @twl_rtc_read_u8(%struct.twl_rtc*, i8*, i32) #1

declare dso_local i32 @twl_rtc_write_u8(%struct.twl_rtc*, i8 zeroext, i32) #1

declare dso_local i32 @twl_i2c_write(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
