; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rk808_rtc = type { %struct.TYPE_5__*, %struct.rk808* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rk808 = type { i32 }

@NUM_ALARM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to read RTC alarm date REG: %d\0A\00", align 1
@SECONDS_REG_MSK = common dso_local global i32 0, align 4
@MINUTES_REG_MAK = common dso_local global i32 0, align 4
@HOURS_REG_MSK = common dso_local global i32 0, align 4
@DAYS_REG_MSK = common dso_local global i32 0, align 4
@MONTHS_REG_MSK = common dso_local global i32 0, align 4
@YEARS_REG_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read RTC INT REG: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"alrm read RTC date/time %ptRd(%d) %ptRt\0A\00", align 1
@BIT_RTC_INTERRUPTS_REG_IT_ALARM_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rk808_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rk808_rtc*, align 8
  %7 = alloca %struct.rk808*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.rk808_rtc* @dev_get_drvdata(%struct.device* %13)
  store %struct.rk808_rtc* %14, %struct.rk808_rtc** %6, align 8
  %15 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %15, i32 0, i32 1
  %17 = load %struct.rk808*, %struct.rk808** %16, align 8
  store %struct.rk808* %17, %struct.rk808** %7, align 8
  %18 = load i32, i32* @NUM_ALARM_REGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.rk808*, %struct.rk808** %7, align 8
  %23 = getelementptr inbounds %struct.rk808, %struct.rk808* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %26 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NUM_ALARM_REGS, align 4
  %31 = call i32 @regmap_bulk_read(i32 %24, i32 %29, i32* %21, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

39:                                               ; preds = %2
  %40 = getelementptr inbounds i32, i32* %21, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = load i32, i32* @SECONDS_REG_MSK, align 4
  %43 = and i32 %41, %42
  %44 = call i8* @bcd2bin(i32 %43)
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds i32, i32* %21, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MINUTES_REG_MAK, align 4
  %51 = and i32 %49, %50
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i8* %52, i8** %55, align 8
  %56 = getelementptr inbounds i32, i32* %21, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HOURS_REG_MSK, align 4
  %59 = and i32 %57, %58
  %60 = call i8* @bcd2bin(i32 %59)
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i8* %60, i8** %63, align 8
  %64 = getelementptr inbounds i32, i32* %21, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DAYS_REG_MSK, align 4
  %67 = and i32 %65, %66
  %68 = call i8* @bcd2bin(i32 %67)
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = getelementptr inbounds i32, i32* %21, i64 4
  %73 = load i32, i32* %72, align 16
  %74 = load i32, i32* @MONTHS_REG_MSK, align 4
  %75 = and i32 %73, %74
  %76 = call i8* @bcd2bin(i32 %75)
  %77 = getelementptr i8, i8* %76, i64 -1
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = getelementptr inbounds i32, i32* %21, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @YEARS_REG_MSK, align 4
  %84 = and i32 %82, %83
  %85 = call i8* @bcd2bin(i32 %84)
  %86 = getelementptr i8, i8* %85, i64 100
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 1
  %92 = call i32 @rockchip_to_gregorian(%struct.TYPE_6__* %91)
  %93 = load %struct.rk808*, %struct.rk808** %7, align 8
  %94 = getelementptr inbounds %struct.rk808, %struct.rk808* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %97 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @regmap_read(i32 %95, i32 %100, i32* %10)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %39
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

109:                                              ; preds = %39
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %111, i32 0, i32 1
  %113 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %114 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %118 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %117, i32 0, i32 1
  %119 = call i32 @dev_dbg(%struct.device* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %112, i32 %116, %struct.TYPE_6__* %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  %126 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %109, %104, %34
  %129 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.rk808_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rockchip_to_gregorian(%struct.TYPE_6__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
