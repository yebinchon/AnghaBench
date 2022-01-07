; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_program_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_program_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_params_lightbar = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.cros_ec_command = type { i64, i64, i64 }
%struct.cros_ec_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EC_LB_PROG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Program is %u bytes, too long to send (max: %u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Copying %zu byte program to EC\00", align 1
@LIGHTBAR_CMD_SET_PROGRAM = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @program_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ec_params_lightbar*, align 8
  %14 = alloca %struct.cros_ec_command*, align 8
  %15 = alloca %struct.cros_ec_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %16)
  store %struct.cros_ec_dev* %17, %struct.cros_ec_dev** %15, align 8
  store i32 20, i32* %10, align 4
  %18 = load i32, i32* @EC_LB_PROG_LEN, align 4
  %19 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %15, align 8
  %20 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @min(i32 %18, i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %105

40:                                               ; preds = %4
  %41 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %15, align 8
  %42 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %41)
  store %struct.cros_ec_command* %42, %struct.cros_ec_command** %14, align 8
  %43 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %44 = icmp ne %struct.cros_ec_command* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %105

48:                                               ; preds = %40
  %49 = call i32 (...) @lb_throttle()
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %101

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %58 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %60, %struct.ec_params_lightbar** %13, align 8
  %61 = load i32, i32* @LIGHTBAR_CMD_SET_PROGRAM, align 4
  %62 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %13, align 8
  %63 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %13, align 8
  %66 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %13, align 8
  %69 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @memcpy(i32 %71, i8* %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %80 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %15, align 8
  %82 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %85 = call i32 @cros_ec_cmd_xfer(%struct.TYPE_4__* %83, %struct.cros_ec_command* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %53
  br label %101

89:                                               ; preds = %53
  %90 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %91 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EC_RES_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %101

98:                                               ; preds = %89
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %95, %88, %52
  %102 = load %struct.cros_ec_command*, %struct.cros_ec_command** %14, align 8
  %103 = call i32 @kfree(%struct.cros_ec_command* %102)
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %45, %32
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @cros_ec_cmd_xfer(%struct.TYPE_4__*, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
