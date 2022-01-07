; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_kb_wake_angle_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_kb_wake_angle_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cros_ec_dev = type { i32, i64 }
%struct.ec_params_motion_sense = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i32, i32, i32, i64, i64 }

@EC_HOST_PARAM_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_MOTION_SENSE_CMD = common dso_local global i64 0, align 8
@MOTIONSENSE_CMD_KB_WAKE_ANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kb_wake_angle_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kb_wake_angle_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cros_ec_dev*, align 8
  %11 = alloca %struct.ec_params_motion_sense*, align 8
  %12 = alloca %struct.cros_ec_command*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %15)
  store %struct.cros_ec_dev* %16, %struct.cros_ec_dev** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtou16(i8* %17, i32 0, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %4
  %24 = load i64, i64* @EC_HOST_PARAM_SIZE, align 8
  %25 = add i64 32, %24
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.cros_ec_command* @kmalloc(i64 %25, i32 %26)
  store %struct.cros_ec_command* %27, %struct.cros_ec_command** %12, align 8
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %29 = icmp ne %struct.cros_ec_command* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %72

33:                                               ; preds = %23
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ec_params_motion_sense*
  store %struct.ec_params_motion_sense* %37, %struct.ec_params_motion_sense** %11, align 8
  %38 = load i64, i64* @EC_CMD_MOTION_SENSE_CMD, align 8
  %39 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %10, align 8
  %40 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %44 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %46 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load i32, i32* @MOTIONSENSE_CMD_KB_WAKE_ANGLE, align 4
  %48 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %11, align 8
  %49 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %11, align 8
  %52 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %55 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %54, i32 0, i32 1
  store i32 8, i32* %55, align 4
  %56 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %57 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %56, i32 0, i32 2
  store i32 4, i32* %57, align 8
  %58 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %10, align 8
  %59 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %62 = call i32 @cros_ec_cmd_xfer_status(i32 %60, %struct.cros_ec_command* %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.cros_ec_command*, %struct.cros_ec_command** %12, align 8
  %64 = call i32 @kfree(%struct.cros_ec_command* %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %33
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %33
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %67, %30, %21
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

declare dso_local %struct.cros_ec_command* @kmalloc(i64, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
