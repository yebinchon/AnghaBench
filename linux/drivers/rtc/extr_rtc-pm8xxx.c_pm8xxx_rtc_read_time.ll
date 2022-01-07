; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm8xxx_rtc = type { i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32 }

@NUM_8_BIT_RTC_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RTC read data register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"secs = %lu, h:m:s == %ptRt, y-m-d = %ptRdr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm8xxx_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pm8xxx_rtc*, align 8
  %12 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device* %18)
  store %struct.pm8xxx_rtc* %19, %struct.pm8xxx_rtc** %11, align 8
  %20 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %11, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %20, i32 0, i32 1
  %22 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %21, align 8
  store %struct.pm8xxx_rtc_regs* %22, %struct.pm8xxx_rtc_regs** %12, align 8
  %23 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %11, align 8
  %24 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %12, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nuw i64 4, %15
  %30 = trunc i64 %29 to i32
  %31 = call i32 @regmap_bulk_read(i32 %25, i32 %28, i32* %17, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

38:                                               ; preds = %2
  %39 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %11, align 8
  %40 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %12, align 8
  %43 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regmap_read(i32 %41, i32 %44, i32* %10)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds i32, i32* %17, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = icmp ult i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %11, align 8
  %62 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %12, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nuw i64 4, %15
  %68 = trunc i64 %67 to i32
  %69 = call i32 @regmap_bulk_read(i32 %63, i32 %66, i32* %17, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %52
  %78 = getelementptr inbounds i32, i32* %17, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = getelementptr inbounds i32, i32* %17, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds i32, i32* %17, i64 2
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 16
  %87 = or i32 %83, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %17, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 %91, 24
  %93 = or i64 %88, %92
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = call i32 @rtc_time_to_tm(i64 %94, %struct.rtc_time* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %100 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %101 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %98, %struct.rtc_time* %99, %struct.rtc_time* %100)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %77, %72, %48, %34
  %103 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, %struct.rtc_time*, %struct.rtc_time*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
