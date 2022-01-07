; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_rk808_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.rk808_rtc = type { %struct.TYPE_5__*, %struct.rk808* }
%struct.TYPE_5__ = type { i32 }
%struct.rk808 = type { i32 }

@NUM_ALARM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alrm set RTC date/time %ptRd(%d) %ptRt\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to bulk write: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rk808_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rk808_rtc*, align 8
  %7 = alloca %struct.rk808*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.rk808_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.rk808_rtc* %13, %struct.rk808_rtc** %6, align 8
  %14 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %14, i32 0, i32 1
  %16 = load %struct.rk808*, %struct.rk808** %15, align 8
  store %struct.rk808* %16, %struct.rk808** %7, align 8
  %17 = load i32, i32* @NUM_ALARM_REGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %22 = call i32 @rk808_rtc_stop_alarm(%struct.rk808_rtc* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %116

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %33, i32 %37, %struct.TYPE_6__* %39)
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 1
  %43 = call i32 @gregorian_to_rockchip(%struct.TYPE_6__* %42)
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bin2bcd(i64 %53)
  %55 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bin2bcd(i64 %59)
  %61 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @bin2bcd(i64 %65)
  %67 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %66, i32* %67, align 4
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  %73 = call i32 @bin2bcd(i64 %72)
  %74 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 %73, i32* %74, align 16
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 100
  %80 = call i32 @bin2bcd(i64 %79)
  %81 = getelementptr inbounds i32, i32* %20, i64 5
  store i32 %80, i32* %81, align 4
  %82 = load %struct.rk808*, %struct.rk808** %7, align 8
  %83 = getelementptr inbounds %struct.rk808, %struct.rk808* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %86 = getelementptr inbounds %struct.rk808_rtc, %struct.rk808_rtc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NUM_ALARM_REGS, align 4
  %91 = call i32 @regmap_bulk_write(i32 %84, i32 %89, i32* %20, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %30
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %116

99:                                               ; preds = %30
  %100 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %101 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.rk808_rtc*, %struct.rk808_rtc** %6, align 8
  %106 = call i32 @rk808_rtc_start_alarm(%struct.rk808_rtc* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %116

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %99
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %109, %94, %25
  %117 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.rk808_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rk808_rtc_stop_alarm(%struct.rk808_rtc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gregorian_to_rockchip(%struct.TYPE_6__*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @rk808_rtc_start_alarm(%struct.rk808_rtc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
