; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sd3078.c_sd3078_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.i2c_client = type { i32 }
%struct.sd3078 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@SD3078_REG_SC = common dso_local global i64 0, align 8
@SD3078_REG_MN = common dso_local global i64 0, align 8
@SD3078_REG_HR = common dso_local global i64 0, align 8
@SD3078_REG_DM = common dso_local global i64 0, align 8
@SD3078_REG_DW = common dso_local global i64 0, align 8
@SD3078_REG_MO = common dso_local global i64 0, align 8
@SD3078_REG_YR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"writing to RTC failed with err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sd3078_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd3078_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.sd3078*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load i32, i32* @NUM_TIME_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %8, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %19 = call %struct.sd3078* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.sd3078* %19, %struct.sd3078** %9, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @bin2bcd(i64 %22)
  %24 = trunc i32 %23 to i8
  %25 = load i64, i64* @SD3078_REG_SC, align 8
  %26 = getelementptr inbounds i8, i8* %15, i64 %25
  store i8 %24, i8* %26, align 1
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bin2bcd(i64 %29)
  %31 = trunc i32 %30 to i8
  %32 = load i64, i64* @SD3078_REG_MN, align 8
  %33 = getelementptr inbounds i8, i8* %15, i64 %32
  store i8 %31, i8* %33, align 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bin2bcd(i64 %36)
  %38 = or i32 %37, 128
  %39 = trunc i32 %38 to i8
  %40 = load i64, i64* @SD3078_REG_HR, align 8
  %41 = getelementptr inbounds i8, i8* %15, i64 %40
  store i8 %39, i8* %41, align 1
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bin2bcd(i64 %44)
  %46 = trunc i32 %45 to i8
  %47 = load i64, i64* @SD3078_REG_DM, align 8
  %48 = getelementptr inbounds i8, i8* %15, i64 %47
  store i8 %46, i8* %48, align 1
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 7
  %53 = trunc i32 %52 to i8
  %54 = load i64, i64* @SD3078_REG_DW, align 8
  %55 = getelementptr inbounds i8, i8* %15, i64 %54
  store i8 %53, i8* %55, align 1
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bin2bcd(i64 %58)
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = load i64, i64* @SD3078_REG_MO, align 8
  %63 = getelementptr inbounds i8, i8* %15, i64 %62
  store i8 %61, i8* %63, align 1
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 100
  %68 = call i32 @bin2bcd(i64 %67)
  %69 = trunc i32 %68 to i8
  %70 = load i64, i64* @SD3078_REG_YR, align 8
  %71 = getelementptr inbounds i8, i8* %15, i64 %70
  store i8 %69, i8* %71, align 1
  %72 = load %struct.sd3078*, %struct.sd3078** %9, align 8
  %73 = getelementptr inbounds %struct.sd3078, %struct.sd3078* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @SD3078_REG_SC, align 8
  %76 = load i32, i32* @NUM_TIME_REGS, align 4
  %77 = call i32 @regmap_bulk_write(i32 %74, i64 %75, i8* %15, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %2
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

85:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #2

declare dso_local %struct.sd3078* @i2c_get_clientdata(%struct.i2c_client*) #2

declare dso_local i32 @bin2bcd(i64) #2

declare dso_local i32 @regmap_bulk_write(i32, i64, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
