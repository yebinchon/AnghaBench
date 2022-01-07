; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i64, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@M48T59_CNTL_READ = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_YEAR = common dso_local global i32 0, align 4
@M48T59_MONTH = common dso_local global i32 0, align 4
@M48T59_WDAY = common dso_local global i32 0, align 4
@M48T59_WDAY_CEB = common dso_local global i32 0, align 4
@M48T59_WDAY_CB = common dso_local global i32 0, align 4
@M48T59_ALARM_DATE = common dso_local global i32 0, align 4
@M48T59_ALARM_HOUR = common dso_local global i32 0, align 4
@M48T59_ALARM_MIN = common dso_local global i32 0, align 4
@M48T59_ALARM_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RTC read alarm time %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m48t59_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.m48t59_plat_data*, align 8
  %7 = alloca %struct.m48t59_private*, align 8
  %8 = alloca %struct.rtc_time*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %11)
  store %struct.m48t59_plat_data* %12, %struct.m48t59_plat_data** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.m48t59_private* @dev_get_drvdata(%struct.device* %13)
  store %struct.m48t59_private* %14, %struct.m48t59_private** %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 0
  store %struct.rtc_time* %16, %struct.rtc_time** %8, align 8
  %17 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %18 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NO_IRQ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %27 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %26, i32 0, i32 1
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @M48T59_CNTL_READ, align 4
  %31 = load i32, i32* @M48T59_CNTL, align 4
  %32 = call i32 @M48T59_SET_BITS(i32 %30, i32 %31)
  %33 = load i32, i32* @M48T59_YEAR, align 4
  %34 = call i32 @M48T59_READ(i32 %33)
  %35 = call i8* @bcd2bin(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @M48T59_MONTH, align 4
  %40 = call i32 @M48T59_READ(i32 %39)
  %41 = call i8* @bcd2bin(i32 %40)
  %42 = getelementptr i8, i8* %41, i64 -1
  %43 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @M48T59_WDAY, align 4
  %46 = call i32 @M48T59_READ(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @M48T59_WDAY_CEB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %25
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @M48T59_WDAY_CB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 100
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %51, %25
  %62 = load i32, i32* @M48T59_ALARM_DATE, align 4
  %63 = call i32 @M48T59_READ(i32 %62)
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @M48T59_ALARM_HOUR, align 4
  %68 = call i32 @M48T59_READ(i32 %67)
  %69 = call i8* @bcd2bin(i32 %68)
  %70 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @M48T59_ALARM_MIN, align 4
  %73 = call i32 @M48T59_READ(i32 %72)
  %74 = call i8* @bcd2bin(i32 %73)
  %75 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @M48T59_ALARM_SEC, align 4
  %78 = call i32 @M48T59_READ(i32 %77)
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @M48T59_CNTL_READ, align 4
  %83 = load i32, i32* @M48T59_CNTL, align 4
  %84 = call i32 @M48T59_CLEAR_BITS(i32 %82, i32 %83)
  %85 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %86 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %85, i32 0, i32 1
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %91 = call i32 @dev_dbg(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %90)
  %92 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %93 = call i32 @rtc_valid_tm(%struct.rtc_time* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %61, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
