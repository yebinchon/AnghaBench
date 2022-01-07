; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_host_command_proto_query_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_host_command_proto_query_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }
%struct.cros_ec_command = type { i32, i32, i32, i64, i32, i64 }
%struct.ec_params_hello = type { i32 }
%struct.ec_response_hello = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_HELLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EC failed to respond to v2 hello: %d\0A\00", align 1
@EC_RES_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EC responded to v2 hello with error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"EC responded to v2 hello with bad result: %u\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*)* @cros_ec_host_command_proto_query_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_host_command_proto_query_v2(%struct.cros_ec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca %struct.cros_ec_command*, align 8
  %5 = alloca %struct.ec_params_hello*, align 8
  %6 = alloca %struct.ec_response_hello*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  %9 = call i32 @max(i32 4, i32 4)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 40, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cros_ec_command* @kmalloc(i32 %13, i32 %14)
  store %struct.cros_ec_command* %15, %struct.cros_ec_command** %4, align 8
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %17 = icmp ne %struct.cros_ec_command* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @EC_CMD_HELLO, align 4
  %25 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %26 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %28 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ec_params_hello*
  store %struct.ec_params_hello* %30, %struct.ec_params_hello** %5, align 8
  %31 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %32 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %34 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ec_response_hello*
  store %struct.ec_response_hello* %36, %struct.ec_response_hello** %6, align 8
  %37 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %38 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load %struct.ec_params_hello*, %struct.ec_params_hello** %5, align 8
  %40 = getelementptr inbounds %struct.ec_params_hello, %struct.ec_params_hello* %39, i32 0, i32 0
  store i32 -1599029040, i32* %40, align 4
  %41 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %42 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %43 = call i32 @send_command(%struct.cros_ec_device* %41, %struct.cros_ec_command* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %87

52:                                               ; preds = %21
  %53 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %54 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EC_RES_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %60 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %63 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %67 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  br label %87

69:                                               ; preds = %52
  %70 = load %struct.ec_response_hello*, %struct.ec_response_hello** %6, align 8
  %71 = getelementptr inbounds %struct.ec_response_hello, %struct.ec_response_hello* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, -1582119980
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %76 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ec_response_hello*, %struct.ec_response_hello** %6, align 8
  %79 = getelementptr inbounds %struct.ec_response_hello, %struct.ec_response_hello* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EBADMSG, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %87

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %74, %58, %46
  %88 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %89 = call i32 @kfree(%struct.cros_ec_command* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.cros_ec_command* @kmalloc(i32, i32) #1

declare dso_local i32 @send_command(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
