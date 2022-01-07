; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.pm860x_rtc_info = type { i32, i32 }

@REG0_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%x-%x-%x-%x-%x-%x-%x-%x\0A\00", align 1
@PM8607_RTC_EXPIRE1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@PM8607_RTC1 = common dso_local global i32 0, align 4
@ALARM_EN = common dso_local global i32 0, align 4
@ALARM = common dso_local global i32 0, align 4
@ALARM_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pm860x_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pm860x_rtc_info*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.pm860x_rtc_info* %12, %struct.pm860x_rtc_info** %5, align 8
  %13 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %14 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG0_ADDR, align 4
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %18 = call i32 @pm860x_page_bulk_read(i32 %15, i32 %16, i32 8, i8* %17)
  %19 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %20 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 6
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27, i64 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = shl i64 %49, 24
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 16
  %55 = sext i32 %54 to i64
  %56 = or i64 %50, %55
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = sext i32 %60 to i64
  %62 = or i64 %56, %61
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = or i64 %62, %65
  store i64 %66, i64* %8, align 8
  %67 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %68 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PM8607_RTC_EXPIRE1, align 4
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %72 = call i32 @pm860x_bulk_read(i32 %69, i32 %70, i32 4, i8* %71)
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = shl i64 %75, 24
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = sext i32 %80 to i64
  %82 = or i64 %76, %81
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = or i64 %82, %87
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = or i64 %88, %91
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %93, %94
  store i64 %95, i64* %7, align 8
  %96 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %97 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %100, i64 %101)
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %105 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %104, i32 0, i32 2
  %106 = call i32 @rtc_time_to_tm(i64 %103, i32* %105)
  %107 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %108 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PM8607_RTC1, align 4
  %111 = call i32 @pm860x_reg_read(i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @ALARM_EN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %119 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @ALARM, align 4
  %122 = load i32, i32* @ALARM_WAKEUP, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %129 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  ret i32 0
}

declare dso_local %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm860x_page_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #1

declare dso_local i32 @pm860x_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
