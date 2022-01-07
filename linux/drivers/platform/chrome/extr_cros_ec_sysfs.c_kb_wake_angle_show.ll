; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_kb_wake_angle_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_kb_wake_angle_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cros_ec_dev = type { i32, i64 }
%struct.ec_response_motion_sense = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ec_params_motion_sense = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cros_ec_command = type { i32, i32, i32, i64, i64 }

@EC_HOST_PARAM_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_MOTION_SENSE_CMD = common dso_local global i64 0, align 8
@MOTIONSENSE_CMD_KB_WAKE_ANGLE = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_NO_VALUE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @kb_wake_angle_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kb_wake_angle_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cros_ec_dev*, align 8
  %9 = alloca %struct.ec_response_motion_sense*, align 8
  %10 = alloca %struct.ec_params_motion_sense*, align 8
  %11 = alloca %struct.cros_ec_command*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %13)
  store %struct.cros_ec_dev* %14, %struct.cros_ec_dev** %8, align 8
  %15 = load i64, i64* @EC_HOST_PARAM_SIZE, align 8
  %16 = add i64 32, %15
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cros_ec_command* @kmalloc(i64 %16, i32 %17)
  store %struct.cros_ec_command* %18, %struct.cros_ec_command** %11, align 8
  %19 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %20 = icmp ne %struct.cros_ec_command* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %26 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ec_params_motion_sense*
  store %struct.ec_params_motion_sense* %28, %struct.ec_params_motion_sense** %10, align 8
  %29 = load i64, i64* @EC_CMD_MOTION_SENSE_CMD, align 8
  %30 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %31 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %37 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  %38 = load i32, i32* @MOTIONSENSE_CMD_KB_WAKE_ANGLE, align 4
  %39 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %10, align 8
  %40 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @EC_MOTION_SENSE_NO_VALUE, align 4
  %42 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %10, align 8
  %43 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %46 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %45, i32 0, i32 1
  store i32 8, i32* %46, align 4
  %47 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %48 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %47, i32 0, i32 2
  store i32 4, i32* %48, align 8
  %49 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %50 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %53 = call i32 @cros_ec_cmd_xfer_status(i32 %51, %struct.cros_ec_command* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %24
  br label %69

57:                                               ; preds = %24
  %58 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %59 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ec_response_motion_sense*
  store %struct.ec_response_motion_sense* %61, %struct.ec_response_motion_sense** %9, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %9, align 8
  %65 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @scnprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %57, %56
  %70 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %71 = call i32 @kfree(%struct.cros_ec_command* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local %struct.cros_ec_command* @kmalloc(i64, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
