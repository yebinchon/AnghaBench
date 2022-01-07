; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to initialise the camera\0A\00", align 1
@MT9T031_CHIP_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No MT9T031 chip detected, register read %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Detected a MT9T031 chip ID %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t031_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9t031*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %7)
  store %struct.mt9t031* %8, %struct.mt9t031** %4, align 8
  %9 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %10 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %9, i32 0, i32 0
  %11 = call i32 @mt9t031_s_power(i32* %10, i32 1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @mt9t031_idle(%struct.i2c_client* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @MT9T031_CHIP_VERSION, align 4
  %28 = call i32 @reg_read(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %31 [
    i32 5665, label %30
  ]

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %44 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %43, i32 0, i32 1
  %45 = call i32 @v4l2_ctrl_handler_setup(i32* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %31, %21
  %47 = load %struct.mt9t031*, %struct.mt9t031** %4, align 8
  %48 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %47, i32 0, i32 0
  %49 = call i32 @mt9t031_s_power(i32* %48, i32 0)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @mt9t031_s_power(i32*, i32) #1

declare dso_local i32 @mt9t031_idle(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
