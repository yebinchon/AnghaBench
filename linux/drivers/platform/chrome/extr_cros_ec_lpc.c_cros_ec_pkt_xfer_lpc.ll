; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_pkt_xfer_lpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_pkt_xfer_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i32, i64*)*, i32 (i64, i32, i64*)* }
%struct.cros_ec_device = type { i32, i64* }
%struct.cros_ec_command = type { i32, i64*, i64 }
%struct.ec_host_response = type { i32, i32, i64 }

@cros_ec_lpc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EC_LPC_ADDR_HOST_PACKET = common dso_local global i64 0, align 8
@EC_COMMAND_PROTOCOL_3 = common dso_local global i64 0, align 8
@EC_LPC_ADDR_HOST_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"EC responsed timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EC_LPC_ADDR_HOST_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"bad packet checksum %02x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @cros_ec_pkt_xfer_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pkt_xfer_lpc(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca %struct.cros_ec_command*, align 8
  %5 = alloca %struct.ec_host_response, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %10 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %11 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %9, %struct.cros_ec_command* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32 (i64, i32, i64*)*, i32 (i64, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %13 = load i64, i64* @EC_LPC_ADDR_HOST_PACKET, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %16 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 %12(i64 %13, i32 %14, i64* %17)
  %19 = load i64, i64* @EC_COMMAND_PROTOCOL_3, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32 (i64, i32, i64*)*, i32 (i64, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %21 = load i64, i64* @EC_LPC_ADDR_HOST_CMD, align 8
  %22 = call i32 %20(i64 %21, i32 1, i64* %6)
  %23 = call i64 (...) @ec_response_timed_out()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %98

32:                                               ; preds = %2
  %33 = load i64 (i64, i32, i64*)*, i64 (i64, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %34 = load i64, i64* @EC_LPC_ADDR_HOST_DATA, align 8
  %35 = call i64 %33(i64 %34, i32 1, i64* %6)
  %36 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %37 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %39 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %40 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %38, %struct.cros_ec_command* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %98

44:                                               ; preds = %32
  %45 = bitcast %struct.ec_host_response* %5 to i64*
  store i64* %45, i64** %8, align 8
  %46 = load i64 (i64, i32, i64*)*, i64 (i64, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %47 = load i64, i64* @EC_LPC_ADDR_HOST_PACKET, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = call i64 %46(i64 %47, i32 16, i64* %48)
  store i64 %49, i64* %6, align 8
  %50 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %53 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %57 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %44
  %61 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %62 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %67 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %98

72:                                               ; preds = %44
  %73 = load i64 (i64, i32, i64*)*, i64 (i64, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %74 = load i64, i64* @EC_LPC_ADDR_HOST_PACKET, align 8
  %75 = add i64 %74, 16
  %76 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %79 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = call i64 %73(i64 %75, i32 %77, i64* %80)
  %82 = load i64, i64* %6, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %72
  %87 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %88 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EBADMSG, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %98

95:                                               ; preds = %72
  %96 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %86, %60, %43, %25
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i64 @ec_response_timed_out(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
