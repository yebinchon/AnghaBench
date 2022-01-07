; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_host_command_proto_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_host_command_proto_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32 }
%struct.cros_ec_command = type { i32, i32, i64 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EC_CMD_GET_PROTOCOL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to check for EC[%d] protocol version: %d\0A\00", align 1
@EC_RES_INVALID_COMMAND = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32, %struct.cros_ec_command*)* @cros_ec_host_command_proto_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_host_command_proto_query(%struct.cros_ec_device* %0, i32 %1, %struct.cros_ec_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cros_ec_command*, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cros_ec_command* %2, %struct.cros_ec_command** %7, align 8
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPROTONOSUPPORT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %18 = call i32 @memset(%struct.cros_ec_command* %17, i32 0, i32 16)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @EC_CMD_PASSTHRU_OFFSET(i32 %19)
  %21 = load i32, i32* @EC_CMD_GET_PROTOCOL_INFO, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %24 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %26 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  %27 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %29 = call i32 @send_command(%struct.cros_ec_device* %27, %struct.cros_ec_command* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %34 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %65

40:                                               ; preds = %16
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %45 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EC_RES_INVALID_COMMAND, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %65

52:                                               ; preds = %43, %40
  %53 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %54 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EC_RES_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %60 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %58, %49, %32, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.cros_ec_command*, i32, i32) #1

declare dso_local i32 @EC_CMD_PASSTHRU_OFFSET(i32) #1

declare dso_local i32 @send_command(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
