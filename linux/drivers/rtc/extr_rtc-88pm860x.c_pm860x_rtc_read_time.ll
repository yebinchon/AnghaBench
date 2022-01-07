; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm860x_rtc_info = type { i32, i32 }

@REG0_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%x-%x-%x-%x-%x-%x-%x-%x\0A\00", align 1
@PM8607_RTC_COUNTER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm860x_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.pm860x_rtc_info*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device* %10)
  store %struct.pm860x_rtc_info* %11, %struct.pm860x_rtc_info** %5, align 8
  %12 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %13 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REG0_ADDR, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %17 = call i32 @pm860x_page_bulk_read(i32 %14, i32 %15, i32 8, i8* %16)
  %18 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %19 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 6
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26, i64 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl i64 %48, 24
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 16
  %54 = sext i32 %53 to i64
  %55 = or i64 %49, %54
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = or i64 %55, %60
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = or i64 %61, %64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %67 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PM8607_RTC_COUNTER1, align 4
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %71 = call i32 @pm860x_bulk_read(i32 %68, i32 %69, i32 4, i8* %70)
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = shl i64 %74, 24
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 16
  %80 = sext i32 %79 to i64
  %81 = or i64 %75, %80
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = or i64 %81, %86
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = or i64 %87, %90
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  store i64 %94, i64* %7, align 8
  %95 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %5, align 8
  %96 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 (i32, i8*, i64, i64, i64, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %99, i64 %100)
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = call i32 @rtc_time_to_tm(i64 %102, %struct.rtc_time* %103)
  ret i32 0
}

declare dso_local %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm860x_page_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
