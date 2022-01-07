; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_pkt_xfer_ish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_pkt_xfer_ish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i64, i64, i64, i64, %struct.ishtp_cl* }
%struct.ishtp_cl = type { i32 }
%struct.cros_ec_command = type { i32, i32, i64 }
%struct.ishtp_cl_data = type { i32 }
%struct.device = type { i32 }
%struct.cros_ish_in_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.cros_ish_out_msg = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Incoming payload size %zu is too large for ec_dev->din_size %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Outgoing payload size %zu is too large for ec_dev->dout_size %d\0A\00", align 1
@init_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Host is not ready to send messages to ISH. Try again\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CROS_EC_COMMAND = common dso_local global i32 0, align 4
@OUT_MSG_EC_REQUEST_PREAMBLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [84 x i8] c"out_msg: struct_ver=0x%x checksum=0x%x command=0x%x command_ver=0x%x data_len=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"in_msg: struct_ver=0x%x checksum=0x%x result=0x%x data_len=0x%x\0A\00", align 1
@EC_CMD_REBOOT_EC = common dso_local global i64 0, align 8
@EC_REBOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @cros_ec_pkt_xfer_ish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pkt_xfer_ish(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ishtp_cl*, align 8
  %8 = alloca %struct.ishtp_cl_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.cros_ish_in_msg*, align 8
  %11 = alloca %struct.cros_ish_out_msg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %15 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %14, i32 0, i32 4
  %16 = load %struct.ishtp_cl*, %struct.ishtp_cl** %15, align 8
  store %struct.ishtp_cl* %16, %struct.ishtp_cl** %7, align 8
  %17 = load %struct.ishtp_cl*, %struct.ishtp_cl** %7, align 8
  %18 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %17)
  store %struct.ishtp_cl_data* %18, %struct.ishtp_cl_data** %8, align 8
  %19 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %20 = call %struct.device* @cl_data_to_dev(%struct.ishtp_cl_data* %19)
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.cros_ish_in_msg*
  store %struct.cros_ish_in_msg* %24, %struct.cros_ish_in_msg** %10, align 8
  %25 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %26 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cros_ish_out_msg*
  store %struct.cros_ish_out_msg* %28, %struct.cros_ish_out_msg** %11, align 8
  %29 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %30 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 16, %32
  store i64 %33, i64* %12, align 8
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 40, %37
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %41 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49)
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %173

53:                                               ; preds = %2
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %56 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %63 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64)
  %66 = load i32, i32* @EMSGSIZE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %173

68:                                               ; preds = %53
  %69 = call i32 @down_read_trylock(i32* @init_lock)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = call i32 @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %173

76:                                               ; preds = %68
  %77 = load i32, i32* @CROS_EC_COMMAND, align 4
  %78 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %79 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %82 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* @OUT_MSG_EC_REQUEST_PREAMBLE, align 8
  %85 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %86 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %90 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %91 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %89, %struct.cros_ec_command* %90)
  %92 = load i64, i64* @OUT_MSG_EC_REQUEST_PREAMBLE, align 8
  %93 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %94 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %99 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %103 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %107 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %111 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %115 = getelementptr inbounds %struct.cros_ish_out_msg, %struct.cros_ish_out_msg* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i32 %113, i32 %117)
  %119 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %8, align 8
  %120 = load %struct.cros_ish_out_msg*, %struct.cros_ish_out_msg** %11, align 8
  %121 = bitcast %struct.cros_ish_out_msg* %120 to i32*
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %124 = bitcast %struct.cros_ish_in_msg* %123 to i32*
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @ish_send(%struct.ishtp_cl_data* %119, i32* %121, i64 %122, i32* %124, i64 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %76
  br label %161

130:                                              ; preds = %76
  %131 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %132 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %133 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %134 = call i32 @prepare_cros_ec_rx(%struct.cros_ec_device* %131, %struct.cros_ish_in_msg* %132, %struct.cros_ec_command* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %161

138:                                              ; preds = %130
  %139 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %140 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %6, align 4
  %143 = load %struct.device*, %struct.device** %9, align 8
  %144 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %145 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %149 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %153 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %10, align 8
  %157 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %151, i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %138, %137, %129
  %162 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %163 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @EC_CMD_REBOOT_EC, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* @EC_REBOOT_DELAY_MS, align 4
  %169 = call i32 @msleep(i32 %168)
  br label %170

170:                                              ; preds = %167, %161
  %171 = call i32 @up_read(i32* @init_lock)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %170, %71, %59, %44
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local %struct.device* @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ish_send(%struct.ishtp_cl_data*, i32*, i64, i32*, i64) #1

declare dso_local i32 @prepare_cros_ec_rx(%struct.cros_ec_device*, %struct.cros_ish_in_msg*, %struct.cros_ec_command*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
