; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.m48t59_plat_data = type { i64 }
%struct.m48t59_private = type { i32 }

@M48T59_CNTL_READ = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_YEAR = common dso_local global i32 0, align 4
@M48T59_MONTH = common dso_local global i32 0, align 4
@M48T59_MDAY = common dso_local global i32 0, align 4
@M48T59_WDAY = common dso_local global i32 0, align 4
@M48T59RTC_TYPE_M48T59 = common dso_local global i64 0, align 8
@M48T59_WDAY_CEB = common dso_local global i32 0, align 4
@M48T59_WDAY_CB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Century bit is enabled\0A\00", align 1
@M48T59_HOUR = common dso_local global i32 0, align 4
@M48T59_MIN = common dso_local global i32 0, align 4
@M48T59_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RTC read time %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t59_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.m48t59_plat_data*, align 8
  %6 = alloca %struct.m48t59_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %9)
  store %struct.m48t59_plat_data* %10, %struct.m48t59_plat_data** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.m48t59_private* @dev_get_drvdata(%struct.device* %11)
  store %struct.m48t59_private* %12, %struct.m48t59_private** %6, align 8
  %13 = load %struct.m48t59_private*, %struct.m48t59_private** %6, align 8
  %14 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @M48T59_CNTL_READ, align 4
  %18 = load i32, i32* @M48T59_CNTL, align 4
  %19 = call i32 @M48T59_SET_BITS(i32 %17, i32 %18)
  %20 = load i32, i32* @M48T59_YEAR, align 4
  %21 = call i32 @M48T59_READ(i32 %20)
  %22 = call i8* @bcd2bin(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @M48T59_MONTH, align 4
  %27 = call i32 @M48T59_READ(i32 %26)
  %28 = call i8* @bcd2bin(i32 %27)
  %29 = getelementptr i8, i8* %28, i64 -1
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @M48T59_MDAY, align 4
  %34 = call i32 @M48T59_READ(i32 %33)
  %35 = call i8* @bcd2bin(i32 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @M48T59_WDAY, align 4
  %39 = call i32 @M48T59_READ(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %5, align 8
  %41 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @M48T59RTC_TYPE_M48T59, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @M48T59_WDAY_CEB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @M48T59_WDAY_CB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 100
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %50, %45, %2
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 7
  %65 = call i8* @bcd2bin(i32 %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @M48T59_HOUR, align 4
  %69 = call i32 @M48T59_READ(i32 %68)
  %70 = and i32 %69, 63
  %71 = call i8* @bcd2bin(i32 %70)
  %72 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @M48T59_MIN, align 4
  %75 = call i32 @M48T59_READ(i32 %74)
  %76 = and i32 %75, 127
  %77 = call i8* @bcd2bin(i32 %76)
  %78 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @M48T59_SEC, align 4
  %81 = call i32 @M48T59_READ(i32 %80)
  %82 = and i32 %81, 127
  %83 = call i8* @bcd2bin(i32 %82)
  %84 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @M48T59_CNTL_READ, align 4
  %87 = load i32, i32* @M48T59_CNTL, align 4
  %88 = call i32 @M48T59_CLEAR_BITS(i32 %86, i32 %87)
  %89 = load %struct.m48t59_private*, %struct.m48t59_private** %6, align 8
  %90 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %89, i32 0, i32 0
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.device*, %struct.device** %3, align 8
  %94 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.rtc_time* %94)
  ret i32 0
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
