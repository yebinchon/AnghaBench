; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm860x_rtc_info = type { i32 (i64)*, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"Set time %d out of range. Please set time between 1970 to 2106.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PM8607_RTC_COUNTER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"set base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", align 1
@REG0_DATA = common dso_local global i32 0, align 4
@REG1_DATA = common dso_local global i32 0, align 4
@REG2_DATA = common dso_local global i32 0, align 4
@REG3_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm860x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.pm860x_rtc_info*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device* %11)
  store %struct.pm860x_rtc_info* %12, %struct.pm860x_rtc_info** %6, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 206
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %19 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 1900, %23
  %25 = sext i32 %24 to i64
  %26 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %2
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = call i32 @rtc_tm_to_time(%struct.rtc_time* %30, i64* %8)
  %32 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %33 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PM8607_RTC_COUNTER1, align 4
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %37 = call i32 @pm860x_bulk_read(i32 %34, i32 %35, i32 4, i8* %36)
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = shl i64 %40, 24
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = or i64 %41, %46
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = or i64 %47, %52
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = or i64 %53, %56
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %62 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65, i64 %66)
  %68 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %69 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @REG0_DATA, align 4
  %72 = load i64, i64* %9, align 8
  %73 = lshr i64 %72, 24
  %74 = and i64 %73, 255
  %75 = call i32 @pm860x_page_reg_write(i32 %70, i32 %71, i64 %74)
  %76 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %77 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @REG1_DATA, align 4
  %80 = load i64, i64* %9, align 8
  %81 = lshr i64 %80, 16
  %82 = and i64 %81, 255
  %83 = call i32 @pm860x_page_reg_write(i32 %78, i32 %79, i64 %82)
  %84 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %85 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @REG2_DATA, align 4
  %88 = load i64, i64* %9, align 8
  %89 = lshr i64 %88, 8
  %90 = and i64 %89, 255
  %91 = call i32 @pm860x_page_reg_write(i32 %86, i32 %87, i64 %90)
  %92 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %93 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @REG3_DATA, align 4
  %96 = load i64, i64* %9, align 8
  %97 = and i64 %96, 255
  %98 = call i32 @pm860x_page_reg_write(i32 %94, i32 %95, i64 %97)
  %99 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %100 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %99, i32 0, i32 0
  %101 = load i32 (i64)*, i32 (i64)** %100, align 8
  %102 = icmp ne i32 (i64)* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %29
  %104 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %105 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %104, i32 0, i32 0
  %106 = load i32 (i64)*, i32 (i64)** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 %106(i64 %107)
  br label %109

109:                                              ; preds = %103, %29
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.pm860x_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

declare dso_local i32 @pm860x_page_reg_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
