; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_do_cros_ec_cmd_xfer_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_do_cros_ec_cmd_xfer_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i64*, i32, i64*, %struct.cros_ec_spi* }
%struct.cros_ec_spi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i32, i64, i64*, i64 }
%struct.spi_transfer = type { i64*, i64*, i32, i32 }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"prepared, len=%d\0A\00", align 1
@EC_SPI_RECOVERY_TIME_NS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@EC_SPI_PAST_END = common dso_local global i64 0, align 8
@EC_SPI_RX_BAD_DATA = common dso_local global i64 0, align 8
@EC_SPI_NOT_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EC_MSG_TX_PROTO_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"spi transfer failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"bad packet checksum, expected %02x, got %02x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@EC_CMD_REBOOT_EC = common dso_local global i64 0, align 8
@EC_REBOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @do_cros_ec_cmd_xfer_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cros_ec_cmd_xfer_spi(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca %struct.cros_ec_spi*, align 8
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %19 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %18, i32 0, i32 3
  %20 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %19, align 8
  store %struct.cros_ec_spi* %20, %struct.cros_ec_spi** %6, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %23 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %21, %struct.cros_ec_command* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %25 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i64 (...) @ktime_get_ns()
  %30 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %31 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* @EC_SPI_RECOVERY_TIME_NS, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i64, i64* @EC_SPI_RECOVERY_TIME_NS, align 8
  %39 = load i64, i64* %17, align 8
  %40 = sub i64 %38, %39
  %41 = call i32 @ndelay(i64 %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64* @kzalloc(i32 %43, i32 %44)
  store i64* %45, i64** %12, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %284

51:                                               ; preds = %42
  %52 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %53 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @spi_bus_lock(i32 %56)
  %58 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %59 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %62 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @debug_packet(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %63, i32 %64)
  %66 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 24)
  %67 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %68 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i64* %69, i64** %70, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i64* %71, i64** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = call i32 @spi_message_init(%struct.spi_message* %8)
  %77 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %8)
  %78 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %79 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @spi_sync_locked(%struct.TYPE_2__* %80, %struct.spi_message* %8)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %110, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i64*, i64** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @EC_SPI_PAST_END, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @EC_SPI_RX_BAD_DATA, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @EC_SPI_NOT_READY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98, %89
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %15, align 4
  br label %113

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %85

113:                                              ; preds = %106, %85
  br label %114

114:                                              ; preds = %113, %51
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %119 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %120 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @EC_MSG_TX_PROTO_BYTES, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @cros_ec_spi_receive_response(%struct.cros_ec_device* %118, i64 %124)
  store i32 %125, i32* %15, align 4
  br label %138

126:                                              ; preds = %114
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @EAGAIN, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %133 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %126
  br label %138

138:                                              ; preds = %137, %117
  %139 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %140 = call i32 @terminate_request(%struct.cros_ec_device* %139)
  store i32 %140, i32* %16, align 4
  %141 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %142 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @spi_bus_unlock(i32 %145)
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %271

155:                                              ; preds = %151
  %156 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %157 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  store i64* %158, i64** %11, align 8
  %159 = load i64*, i64** %11, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %163 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %165 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %166 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %164, %struct.cros_ec_command* %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %271

170:                                              ; preds = %155
  %171 = load i64*, i64** %11, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %10, align 4
  %175 = load i64*, i64** %11, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %11, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %185 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %170
  %189 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %190 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %194 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %195)
  %197 = load i32, i32* @ENOSPC, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %15, align 4
  br label %271

199:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %233, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %236

204:                                              ; preds = %200
  %205 = load i64*, i64** %11, align 8
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %205, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %14, align 4
  %215 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %216 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %204
  %220 = load i64*, i64** %11, align 8
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %227 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %226, i32 0, i32 2
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64 %225, i64* %231, align 8
  br label %232

232:                                              ; preds = %219, %204
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %200

236:                                              ; preds = %200
  %237 = load i32, i32* %14, align 4
  %238 = and i32 %237, 255
  store i32 %238, i32* %14, align 4
  %239 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %240 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i64*, i64** %11, align 8
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 3
  %245 = call i32 @debug_packet(i32 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %242, i32 %244)
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64*, i64** %11, align 8
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %247, %253
  br i1 %254, label %255, label %269

255:                                              ; preds = %236
  %256 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %257 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = load i64*, i64** %11, align 8
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 2
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %260, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %258, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %259, i64 %265)
  %267 = load i32, i32* @EBADMSG, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %15, align 4
  br label %271

269:                                              ; preds = %236
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %15, align 4
  br label %271

271:                                              ; preds = %269, %255, %188, %169, %154
  %272 = load i64*, i64** %12, align 8
  %273 = call i32 @kfree(i64* %272)
  %274 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %275 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @EC_CMD_REBOOT_EC, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load i32, i32* @EC_REBOOT_DELAY_MS, align 4
  %281 = call i32 @msleep(i32 %280)
  br label %282

282:                                              ; preds = %279, %271
  %283 = load i32, i32* %15, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %282, %48
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @ndelay(i64) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_bus_lock(i32) #1

declare dso_local i32 @debug_packet(i32, i8*, i64*, i32) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync_locked(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @cros_ec_spi_receive_response(%struct.cros_ec_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @terminate_request(%struct.cros_ec_device*) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
