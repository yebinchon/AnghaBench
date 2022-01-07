; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@ISL12026_REG_SC = common dso_local global i32 0, align 4
@ISL12026_REG_HR_MIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write error CCR, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @isl12026_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12026_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = call i32 @isl12026_arm_write(%struct.i2c_client* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %2
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %27, align 16
  %28 = load i32, i32* @ISL12026_REG_SC, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bin2bcd(i32 %37)
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = load i32, i32* @ISL12026_REG_HR_MIL, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 4
  store i32 %45, i32* %46, align 16
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bin2bcd(i32 %49)
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 100
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 7
  store i32 %62, i32* %63, align 4
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 7
  %68 = call i32 @bin2bcd(i32 %67)
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 8
  store i32 %68, i32* %69, align 16
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 100
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 20, i32 19
  %76 = call i32 @bin2bcd(i32 %75)
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 9
  store i32 %76, i32* %77, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @i2c_transfer(i32 %80, %struct.i2c_msg* %9, i32 1)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %98

84:                                               ; preds = %26
  %85 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  br label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi i32 [ %92, %91 ], [ %95, %93 ]
  store i32 %97, i32* %7, align 4
  br label %101

98:                                               ; preds = %26
  %99 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %100 = call i32 @isl12026_disarm_write(%struct.i2c_client* %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %96
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @isl12026_arm_write(%struct.i2c_client*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @isl12026_disarm_write(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
