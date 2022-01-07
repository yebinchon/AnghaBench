; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_sequence_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_sequence_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_params_lightbar = type { i32 }
%struct.ec_response_lightbar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cros_ec_command = type { i64, i64 }
%struct.cros_ec_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LIGHTBAR_CMD_GET_SEQ = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ERROR: EC returned %d\0A\00", align 1
@seqname = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sequence_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sequence_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ec_params_lightbar*, align 8
  %9 = alloca %struct.ec_response_lightbar*, align 8
  %10 = alloca %struct.cros_ec_command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cros_ec_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %13)
  store %struct.cros_ec_dev* %14, %struct.cros_ec_dev** %12, align 8
  %15 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %12, align 8
  %16 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %15)
  store %struct.cros_ec_command* %16, %struct.cros_ec_command** %10, align 8
  %17 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %18 = icmp ne %struct.cros_ec_command* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %3
  %23 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %24 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %26, %struct.ec_params_lightbar** %8, align 8
  %27 = load i32, i32* @LIGHTBAR_CMD_GET_SEQ, align 4
  %28 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %8, align 8
  %29 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @lb_throttle()
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %88

34:                                               ; preds = %22
  %35 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %12, align 8
  %36 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %39 = call i32 @cros_ec_cmd_xfer(i32 %37, %struct.cros_ec_command* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %88

43:                                               ; preds = %34
  %44 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %45 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EC_RES_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %53 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @scnprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %54)
  store i32 %55, i32* %11, align 4
  br label %88

56:                                               ; preds = %43
  %57 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %58 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ec_response_lightbar*
  store %struct.ec_response_lightbar* %60, %struct.ec_response_lightbar** %9, align 8
  %61 = load %struct.ec_response_lightbar*, %struct.ec_response_lightbar** %9, align 8
  %62 = getelementptr inbounds %struct.ec_response_lightbar, %struct.ec_response_lightbar* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** @seqname, align 8
  %66 = call i64 @ARRAY_SIZE(i64* %65)
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load %struct.ec_response_lightbar*, %struct.ec_response_lightbar** %9, align 8
  %72 = getelementptr inbounds %struct.ec_response_lightbar, %struct.ec_response_lightbar* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @scnprintf(i8* %69, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  store i32 %75, i32* %11, align 4
  br label %87

76:                                               ; preds = %56
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load i64*, i64** @seqname, align 8
  %80 = load %struct.ec_response_lightbar*, %struct.ec_response_lightbar** %9, align 8
  %81 = getelementptr inbounds %struct.ec_response_lightbar, %struct.ec_response_lightbar* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @scnprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %76, %68
  br label %88

88:                                               ; preds = %87, %49, %42, %33
  %89 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %90 = call i32 @kfree(%struct.cros_ec_command* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
