; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.palmas = type { i32 }

@PALMAS_NUM_TIME_REGS = common dso_local global i32 0, align 4
@PALMAS_RTC_BASE = common dso_local global i32 0, align 4
@PALMAS_RTC_CTRL_REG = common dso_local global i32 0, align 4
@PALMAS_RTC_CTRL_REG_GET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RTC CTRL reg update failed, err: %d\0A\00", align 1
@PALMAS_SECONDS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RTC_SECONDS reg read failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @palmas_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.palmas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.palmas* @dev_get_drvdata(i32 %17)
  store %struct.palmas* %18, %struct.palmas** %8, align 8
  %19 = load %struct.palmas*, %struct.palmas** %8, align 8
  %20 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %21 = load i32, i32* @PALMAS_RTC_CTRL_REG, align 4
  %22 = load i32, i32* @PALMAS_RTC_CTRL_REG_GET_TIME, align 4
  %23 = load i32, i32* @PALMAS_RTC_CTRL_REG_GET_TIME, align 4
  %24 = call i32 @palmas_update_bits(%struct.palmas* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

32:                                               ; preds = %2
  %33 = load %struct.palmas*, %struct.palmas** %8, align 8
  %34 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %35 = load i32, i32* @PALMAS_SECONDS_REG, align 4
  %36 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %37 = call i32 @palmas_bulk_read(%struct.palmas* %33, i32 %34, i32 %35, i8* %14, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

45:                                               ; preds = %32
  %46 = getelementptr inbounds i8, i8* %14, i64 0
  %47 = load i8, i8* %46, align 16
  %48 = call i8* @bcd2bin(i8 zeroext %47)
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %14, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = call i8* @bcd2bin(i8 zeroext %52)
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds i8, i8* %14, i64 2
  %57 = load i8, i8* %56, align 2
  %58 = call i8* @bcd2bin(i8 zeroext %57)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds i8, i8* %14, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = call i8* @bcd2bin(i8 zeroext %62)
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds i8, i8* %14, i64 4
  %67 = load i8, i8* %66, align 4
  %68 = call i8* @bcd2bin(i8 zeroext %67)
  %69 = getelementptr i8, i8* %68, i64 -1
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = getelementptr inbounds i8, i8* %14, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = call i8* @bcd2bin(i8 zeroext %73)
  %75 = getelementptr i8, i8* %74, i64 100
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %45, %40, %27
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #2

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @palmas_bulk_read(%struct.palmas*, i32, i32, i8*, i32) #2

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
