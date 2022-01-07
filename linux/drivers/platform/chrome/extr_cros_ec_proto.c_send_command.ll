; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.0*)*, i32 }
%struct.cros_ec_command = type opaque
%struct.cros_ec_command.0 = type opaque
%struct.cros_ec_command.1 = type { i64, i32, i64, i64, i32, i64 }
%struct.ec_response_get_comms_status = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"missing EC transfer API, cannot send command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EC_RES_IN_PROGRESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_GET_COMMS_STATUS = common dso_local global i32 0, align 4
@EC_COMMAND_RETRIES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@EC_COMMS_STATUS_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(%struct.cros_ec_device* %0, %struct.cros_ec_command.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cros_ec_command.1*, align 8
  %10 = alloca %struct.ec_response_get_comms_status*, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command.1* %1, %struct.cros_ec_command.1** %5, align 8
  %11 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %5, align 8
  %12 = call i32 @trace_cros_ec_cmd(%struct.cros_ec_command.1* %11)
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %19 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %18, i32 0, i32 1
  %20 = load i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)** %19, align 8
  %21 = bitcast i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* %20 to i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*
  store i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)* %21, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)** %7, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %24 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %23, i32 0, i32 2
  %25 = load i32 (%struct.cros_ec_device*, %struct.cros_ec_command.0*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.0*)** %24, align 8
  %26 = bitcast i32 (%struct.cros_ec_device*, %struct.cros_ec_command.0*)* %25 to i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*
  store i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)* %26, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)** %7, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)** %7, align 8
  %29 = icmp ne i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %32 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err_once(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %117

37:                                               ; preds = %27
  %38 = load i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)** %7, align 8
  %39 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %40 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %5, align 8
  %41 = call i32 %38(%struct.cros_ec_device* %39, %struct.cros_ec_command.1* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %5, align 8
  %43 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EC_RES_IN_PROGRESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %37
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.cros_ec_command.1* @kmalloc(i32 52, i32 %48)
  store %struct.cros_ec_command.1* %49, %struct.cros_ec_command.1** %9, align 8
  %50 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %51 = icmp ne %struct.cros_ec_command.1* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %117

55:                                               ; preds = %47
  %56 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %57 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @EC_CMD_GET_COMMS_STATUS, align 4
  %59 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %60 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %62 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %61, i32 0, i32 1
  store i32 4, i32* %62, align 8
  %63 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %64 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %109, %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EC_COMMAND_RETRIES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = call i32 @usleep_range(i32 10000, i32 11000)
  %71 = load i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)*, i32 (%struct.cros_ec_device*, %struct.cros_ec_command.1*)** %7, align 8
  %72 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %73 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %74 = call i32 %71(%struct.cros_ec_device* %72, %struct.cros_ec_command.1* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %109

80:                                               ; preds = %69
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %112

84:                                               ; preds = %80
  %85 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %86 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %5, align 8
  %89 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %91 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EC_RES_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %112

96:                                               ; preds = %84
  %97 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %98 = getelementptr inbounds %struct.cros_ec_command.1, %struct.cros_ec_command.1* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.ec_response_get_comms_status*
  store %struct.ec_response_get_comms_status* %100, %struct.ec_response_get_comms_status** %10, align 8
  %101 = load %struct.ec_response_get_comms_status*, %struct.ec_response_get_comms_status** %10, align 8
  %102 = getelementptr inbounds %struct.ec_response_get_comms_status, %struct.ec_response_get_comms_status* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @EC_COMMS_STATUS_PROCESSING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %112

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %65

112:                                              ; preds = %107, %95, %83, %65
  %113 = load %struct.cros_ec_command.1*, %struct.cros_ec_command.1** %9, align 8
  %114 = call i32 @kfree(%struct.cros_ec_command.1* %113)
  br label %115

115:                                              ; preds = %112, %37
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %52, %30
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @trace_cros_ec_cmd(%struct.cros_ec_command.1*) #1

declare dso_local i32 @dev_err_once(i32, i8*) #1

declare dso_local %struct.cros_ec_command.1* @kmalloc(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
