; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_cmd_xfer_lpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_cmd_xfer_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32, i64*)*, i32 (i32, i32, i64*)* }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_command = type { i64, i64, i64, i64, i64*, i64 }
%struct.ec_lpc_host_args = type { i64, i64, i64, i64 }

@EC_PROTO2_MAX_PARAM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid buffer sizes (out %d, in %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EC_HOST_ARGS_FLAG_FROM_HOST = common dso_local global i64 0, align 8
@cros_ec_lpc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EC_LPC_ADDR_HOST_PARAM = common dso_local global i32 0, align 4
@EC_LPC_ADDR_HOST_ARGS = common dso_local global i32 0, align 4
@EC_LPC_ADDR_HOST_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"EC responsed timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EC_LPC_ADDR_HOST_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"bad packet checksum, expected %02x, got %02x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @cros_ec_cmd_xfer_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_cmd_xfer_lpc(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca %struct.ec_lpc_host_args, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %10 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EC_PROTO2_MAX_PARAM_SIZE, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %16 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EC_PROTO2_MAX_PARAM_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14, %2
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %28 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %169

33:                                               ; preds = %14
  %34 = load i64, i64* @EC_HOST_ARGS_FLAG_FROM_HOST, align 8
  %35 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %37 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %41 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %45 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  %53 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %7, align 8
  %56 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %57 = load i32, i32* @EC_LPC_ADDR_HOST_PARAM, align 4
  %58 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %59 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %63 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 %56(i32 %57, i32 %61, i64* %64)
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 3
  store i64 %69, i64* %70, align 8
  %71 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %72 = load i32, i32* @EC_LPC_ADDR_HOST_ARGS, align 4
  %73 = bitcast %struct.ec_lpc_host_args* %6 to i64*
  %74 = call i32 %71(i32 %72, i32 32, i64* %73)
  %75 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %76 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  %78 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %79 = load i32, i32* @EC_LPC_ADDR_HOST_CMD, align 4
  %80 = call i32 %78(i32 %79, i32 1, i64* %7)
  %81 = call i64 (...) @ec_response_timed_out()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %33
  %84 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %85 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %167

90:                                               ; preds = %33
  %91 = load i64 (i32, i32, i64*)*, i64 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %92 = load i32, i32* @EC_LPC_ADDR_HOST_DATA, align 4
  %93 = call i64 %91(i32 %92, i32 1, i64* %7)
  %94 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %95 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %97 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %98 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %96, %struct.cros_ec_command* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %167

102:                                              ; preds = %90
  %103 = load i64 (i32, i32, i64*)*, i64 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %104 = load i32, i32* @EC_LPC_ADDR_HOST_ARGS, align 4
  %105 = bitcast %struct.ec_lpc_host_args* %6 to i64*
  %106 = call i64 %103(i32 %104, i32 32, i64* %105)
  %107 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %110 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %108, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %102
  %114 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %115 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %120 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %118, i64 %121)
  %123 = load i32, i32* @ENOSPC, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %167

125:                                              ; preds = %102
  %126 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %127 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %128, %130
  %132 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %131, %133
  %135 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %134, %136
  store i64 %137, i64* %7, align 8
  %138 = load i64 (i32, i32, i64*)*, i64 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %139 = load i32, i32* @EC_LPC_ADDR_HOST_PARAM, align 4
  %140 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %144 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = call i64 %138(i32 %139, i32 %142, i64* %145)
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %7, align 8
  %149 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %125
  %154 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %155 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @dev_err(i32 %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %158, i64 %159)
  %161 = load i32, i32* @EBADMSG, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %8, align 4
  br label %167

163:                                              ; preds = %125
  %164 = getelementptr inbounds %struct.ec_lpc_host_args, %struct.ec_lpc_host_args* %6, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %163, %153, %113, %101, %83
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %20
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i64 @ec_response_timed_out(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
