; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_ec_read_version_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_debugfs.c_ec_read_version_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32, i64 }
%struct.ec_params_get_cmd_versions_v1 = type { i32 }
%struct.ec_response_get_cmd_versions = type { i32 }
%struct.cros_ec_command = type { i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EC_CMD_GET_CMD_VERSIONS = common dso_local global i64 0, align 8
@EC_CMD_CONSOLE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*)* @ec_read_version_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_read_version_supported(%struct.cros_ec_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_dev*, align 8
  %4 = alloca %struct.ec_params_get_cmd_versions_v1*, align 8
  %5 = alloca %struct.ec_response_get_cmd_versions*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cros_ec_command*, align 8
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %3, align 8
  %8 = call i64 @max(i32 4, i32 4)
  %9 = add i64 24, %8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cros_ec_command* @kzalloc(i64 %9, i32 %10)
  store %struct.cros_ec_command* %11, %struct.cros_ec_command** %7, align 8
  %12 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %13 = icmp ne %struct.cros_ec_command* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i64, i64* @EC_CMD_GET_CMD_VERSIONS, align 8
  %17 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %3, align 8
  %18 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %22 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %24 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %26 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %28 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ec_params_get_cmd_versions_v1*
  store %struct.ec_params_get_cmd_versions_v1* %30, %struct.ec_params_get_cmd_versions_v1** %4, align 8
  %31 = load i32, i32* @EC_CMD_CONSOLE_READ, align 4
  %32 = load %struct.ec_params_get_cmd_versions_v1*, %struct.ec_params_get_cmd_versions_v1** %4, align 8
  %33 = getelementptr inbounds %struct.ec_params_get_cmd_versions_v1, %struct.ec_params_get_cmd_versions_v1* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ec_response_get_cmd_versions*
  store %struct.ec_response_get_cmd_versions* %37, %struct.ec_response_get_cmd_versions** %5, align 8
  %38 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %3, align 8
  %39 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %42 = call i64 @cros_ec_cmd_xfer_status(i32 %40, %struct.cros_ec_command* %41)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %15
  %45 = load %struct.ec_response_get_cmd_versions*, %struct.ec_response_get_cmd_versions** %5, align 8
  %46 = getelementptr inbounds %struct.ec_response_get_cmd_versions, %struct.ec_response_get_cmd_versions* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EC_VER_MASK(i32 1)
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %44, %15
  %52 = phi i1 [ false, %15 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %55 = call i32 @kfree(%struct.cros_ec_command* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.cros_ec_command* @kzalloc(i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @EC_VER_MASK(i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
