; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_chardev.c_ec_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_chardev.c_ec_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32, i64 }
%struct.ec_response_get_version = type { i32, i8*, i8* }
%struct.cros_ec_command = type { i32, i32, i64, i64 }

@ec_get_version.current_image_name = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_GET_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Unknown EC version, returned error: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s\0A%s\0A%s\0A%s\0A\00", align 1
@CROS_EC_DEV_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*, i8*, i32)* @ec_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_get_version(%struct.cros_ec_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ec_response_get_version*, align 8
  %9 = alloca %struct.cros_ec_command*, align 8
  %10 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cros_ec_command* @kzalloc(i32 48, i32 %11)
  store %struct.cros_ec_command* %12, %struct.cros_ec_command** %9, align 8
  %13 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %14 = icmp ne %struct.cros_ec_command* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load i64, i64* @EC_CMD_GET_VERSION, align 8
  %20 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %21 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %27 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %26, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %29 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %32 = call i32 @cros_ec_cmd_xfer_status(i32 %30, %struct.cros_ec_command* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %39 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %72

42:                                               ; preds = %18
  %43 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %44 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ec_response_get_version*
  store %struct.ec_response_get_version* %46, %struct.ec_response_get_version** %8, align 8
  %47 = load %struct.ec_response_get_version*, %struct.ec_response_get_version** %8, align 8
  %48 = getelementptr inbounds %struct.ec_response_get_version, %struct.ec_response_get_version* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @ec_get_version.current_image_name, i64 0, i64 0))
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.ec_response_get_version*, %struct.ec_response_get_version** %8, align 8
  %54 = getelementptr inbounds %struct.ec_response_get_version, %struct.ec_response_get_version* %53, i32 0, i32 0
  store i32 3, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** @CROS_EC_DEV_VERSION, align 8
  %59 = load %struct.ec_response_get_version*, %struct.ec_response_get_version** %8, align 8
  %60 = getelementptr inbounds %struct.ec_response_get_version, %struct.ec_response_get_version* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.ec_response_get_version*, %struct.ec_response_get_version** %8, align 8
  %63 = getelementptr inbounds %struct.ec_response_get_version, %struct.ec_response_get_version* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.ec_response_get_version*, %struct.ec_response_get_version** %8, align 8
  %66 = getelementptr inbounds %struct.ec_response_get_version, %struct.ec_response_get_version* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* @ec_get_version.current_image_name, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %61, i8* %64, i8* %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %55, %35
  %73 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %74 = call i32 @kfree(%struct.cros_ec_command* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.cros_ec_command* @kzalloc(i32, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
