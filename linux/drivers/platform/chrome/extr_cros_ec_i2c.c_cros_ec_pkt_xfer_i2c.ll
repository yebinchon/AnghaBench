; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_i2c.c_cros_ec_pkt_xfer_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_i2c.c_cros_ec_pkt_xfer_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32, i32, i64*, i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.cros_ec_command = type { i32, i32, i64, i64*, i32 }
%struct.i2c_msg = type { i32, i8*, i64, i32 }
%struct.ec_host_response = type { i32 }
%struct.ec_host_request_i2c = type { i32 }
%struct.ec_host_response_i2c = type { i32, i32, %struct.ec_host_response }

@ENOMEM = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EC_COMMAND_PROTOCOL_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i2c transfer failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get response: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"command 0x%02x in progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"command 0x%02x returned %d\0A\00", align 1
@EC_RES_INVALID_COMMAND = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"response of %u bytes too short; not a full header\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"response data size is too large: expected %u, got %u\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"bad packet checksum\0A\00", align 1
@EC_CMD_REBOOT_EC = common dso_local global i64 0, align 8
@EC_REBOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @cros_ec_pkt_xfer_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pkt_xfer_i2c(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca %struct.cros_ec_command*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x %struct.i2c_msg], align 16
  %13 = alloca %struct.ec_host_response*, align 8
  %14 = alloca %struct.ec_host_request_i2c*, align 8
  %15 = alloca %struct.ec_host_response_i2c*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %3, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %4, align 8
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %19 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %18, i32 0, i32 5
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %5, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  store i64* null, i64** %9, align 8
  store i64* null, i64** %10, align 8
  store i32 4, i32* %16, align 4
  store i32 12, i32* %17, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  store i64 0, i64* %29, align 16
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @I2C_M_RD, align 8
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 16
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %39 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %45 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %51 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  store i64* %52, i64** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 16
  %56 = load i64*, i64** %10, align 8
  %57 = bitcast i64* %56 to i8*
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %61 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %67 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %73 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 16
  %78 = load i64*, i64** %9, align 8
  %79 = bitcast i64* %78 to i8*
  %80 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = bitcast i64* %82 to %struct.ec_host_request_i2c*
  store %struct.ec_host_request_i2c* %83, %struct.ec_host_request_i2c** %14, align 8
  %84 = load i32, i32* @EC_COMMAND_PROTOCOL_3, align 4
  %85 = load %struct.ec_host_request_i2c*, %struct.ec_host_request_i2c** %14, align 8
  %86 = getelementptr inbounds %struct.ec_host_request_i2c, %struct.ec_host_request_i2c* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %88 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %88, align 8
  %91 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %92 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %93 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %91, %struct.cros_ec_command* %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %95 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %94, i32 0, i32 3
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 -1
  store i64* %97, i64** %95, align 8
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %102 = call i32 @i2c_transfer(i32 %100, %struct.i2c_msg* %101, i32 2)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %2
  %106 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %107 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %110)
  br label %272

112:                                              ; preds = %2
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 2
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %117 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %272

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123
  %125 = load i64*, i64** %10, align 8
  %126 = bitcast i64* %125 to %struct.ec_host_response_i2c*
  store %struct.ec_host_response_i2c* %126, %struct.ec_host_response_i2c** %15, align 8
  %127 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %128 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %131 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %133 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %132, i32 0, i32 2
  store %struct.ec_host_response* %133, %struct.ec_host_response** %13, align 8
  %134 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %135 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %148 [
    i32 128, label %137
    i32 129, label %138
  ]

137:                                              ; preds = %124
  br label %173

138:                                              ; preds = %124
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  %141 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %142 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %145 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  br label %272

148:                                              ; preds = %124
  %149 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %150 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %153 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %156 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %154, i32 %157)
  %159 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %160 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @EC_RES_INVALID_COMMAND, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %148
  %165 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %166 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @EPROTONOSUPPORT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %272

172:                                              ; preds = %164, %148
  br label %173

173:                                              ; preds = %172, %137
  %174 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %175 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %177, 4
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %181 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ec_host_response_i2c*, %struct.ec_host_response_i2c** %15, align 8
  %184 = getelementptr inbounds %struct.ec_host_response_i2c, %struct.ec_host_response_i2c* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, i8*, ...) @dev_err(i32 %182, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @EBADMSG, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %6, align 4
  br label %272

189:                                              ; preds = %173
  %190 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %191 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %194 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %189
  %198 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %199 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %202 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %205 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @dev_err(i32 %200, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %203, i32 %206)
  %208 = load i32, i32* @EMSGSIZE, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %6, align 4
  br label %272

210:                                              ; preds = %189
  store i64 0, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %224, %210
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ult i64 %213, 4
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %217 = bitcast %struct.ec_host_response* %216 to i64*
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %11, align 8
  %223 = add nsw i64 %222, %221
  store i64 %223, i64* %11, align 8
  br label %224

224:                                              ; preds = %215
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %211

227:                                              ; preds = %211
  %228 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %229 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %228, i32 0, i32 3
  %230 = load i64*, i64** %229, align 8
  %231 = load i64*, i64** %10, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %236 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @memcpy(i64* %230, i64* %234, i32 %237)
  store i32 0, i32* %7, align 4
  br label %239

239:                                              ; preds = %255, %227
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %242 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %247 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %246, i32 0, i32 3
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %11, align 8
  %254 = add nsw i64 %253, %252
  store i64 %254, i64* %11, align 8
  br label %255

255:                                              ; preds = %245
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %239

258:                                              ; preds = %239
  %259 = load i64, i64* %11, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %263 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i32, i8*, ...) @dev_err(i32 %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %266 = load i32, i32* @EBADMSG, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %6, align 4
  br label %272

268:                                              ; preds = %258
  %269 = load %struct.ec_host_response*, %struct.ec_host_response** %13, align 8
  %270 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %6, align 4
  br label %272

272:                                              ; preds = %268, %261, %197, %179, %169, %138, %115, %105
  %273 = load %struct.cros_ec_command*, %struct.cros_ec_command** %4, align 8
  %274 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @EC_CMD_REBOOT_EC, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %272
  %279 = load i32, i32* @EC_REBOOT_DELAY_MS, align 4
  %280 = call i32 @msleep(i32 %279)
  br label %281

281:                                              ; preds = %278, %272
  %282 = load i32, i32* %6, align 4
  ret i32 %282
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
