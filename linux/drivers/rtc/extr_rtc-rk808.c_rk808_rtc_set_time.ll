; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.rk808_rtc = type { %struct.TYPE_2__*, %struct.rk808* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rk808 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"set RTC date/time %ptRd(%d) %ptRt\0A\00", align 1
@BIT_RTC_CTRL_REG_STOP_RTC_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to update RTC control: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to bull write rtc_data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rk808_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rk808_rtc*, align 8
  %7 = alloca %struct.rk808*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.rk808_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.rk808_rtc* %13, %struct.rk808_rtc** %6, align 8
  %14 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %14, i32 0, i32 1
  %16 = load %struct.rk808*, %struct.rk808** %15, align 8
  store %struct.rk808* %16, %struct.rk808** %7, align 8
  %17 = load i32, i32* @NUM_TIME_REGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %22, i64 %25, %struct.rtc_time* %26)
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = call i32 @gregorian_to_rockchip(%struct.rtc_time* %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @bin2bcd(i64 %32)
  %34 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bin2bcd(i64 %37)
  %39 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bin2bcd(i64 %42)
  %44 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @bin2bcd(i64 %53)
  %55 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 %54, i32* %55, align 16
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 100
  %60 = call i32 @bin2bcd(i64 %59)
  %61 = getelementptr inbounds i32, i32* %20, i64 5
  store i32 %60, i32* %61, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bin2bcd(i64 %64)
  %66 = getelementptr inbounds i32, i32* %20, i64 6
  store i32 %65, i32* %66, align 8
  %67 = load %struct.rk808*, %struct.rk808** %7, align 8
  %68 = getelementptr inbounds %struct.rk808, %struct.rk808* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %71 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 4
  %76 = load i32, i32* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 4
  %77 = call i32 @regmap_update_bits(i32 %69, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %2
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

85:                                               ; preds = %2
  %86 = load %struct.rk808*, %struct.rk808** %7, align 8
  %87 = getelementptr inbounds %struct.rk808, %struct.rk808* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %90 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NUM_TIME_REGS, align 4
  %95 = call i32 @regmap_bulk_write(i32 %88, i32 %93, i32* %20, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

103:                                              ; preds = %85
  %104 = load %struct.rk808*, %struct.rk808** %7, align 8
  %105 = getelementptr inbounds %struct.rk808, %struct.rk808* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %108 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 4
  %113 = call i32 @regmap_update_bits(i32 %106, i32 %111, i32 %112, i32 0)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

121:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

122:                                              ; preds = %121, %116, %98, %80
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.rk808_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*, i64, %struct.rtc_time*) #1

declare dso_local i32 @gregorian_to_rockchip(%struct.rtc_time*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
