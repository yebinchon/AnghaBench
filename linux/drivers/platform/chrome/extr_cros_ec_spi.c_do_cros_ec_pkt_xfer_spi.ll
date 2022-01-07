; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_do_cros_ec_pkt_xfer_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_do_cros_ec_pkt_xfer_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i64*, i32, %struct.cros_ec_spi* }
%struct.cros_ec_spi = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i32, i64, i64*, i32 }
%struct.ec_host_response = type { i32, i32 }
%struct.spi_transfer = type { i64*, i32, i32, i32, i64 }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"prepared, len=%d\0A\00", align 1
@EC_SPI_RECOVERY_TIME_NS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_SPI_PAST_END = common dso_local global i64 0, align 8
@EC_SPI_RX_BAD_DATA = common dso_local global i64 0, align 8
@EC_SPI_NOT_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"spi transfer failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"bad packet checksum, calculated %x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@EC_CMD_REBOOT_EC = common dso_local global i64 0, align 8
@EC_REBOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @do_cros_ec_pkt_xfer_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cros_ec_pkt_xfer_spi(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca %struct.ec_host_response*, align 8
  %7 = alloca %struct.cros_ec_spi*, align 8
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %20 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %21 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %20, i32 0, i32 3
  %22 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %21, align 8
  store %struct.cros_ec_spi* %22, %struct.cros_ec_spi** %7, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %25 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %23, %struct.cros_ec_command* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i64 (...) @ktime_get_ns()
  %32 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %33 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* @EC_SPI_RECOVERY_TIME_NS, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load i64, i64* @EC_SPI_RECOVERY_TIME_NS, align 8
  %41 = load i64, i64* %19, align 8
  %42 = sub i64 %40, %41
  %43 = call i32 @ndelay(i64 %42)
  br label %44

44:                                               ; preds = %39, %2
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i64* @kzalloc(i32 %45, i32 %46)
  store i64* %47, i64** %14, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %267

53:                                               ; preds = %44
  %54 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %55 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spi_bus_lock(i32 %58)
  %60 = call i32 @spi_message_init(%struct.spi_message* %10)
  %61 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %62 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 32)
  %67 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %68 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i64 %69, i64* %70, align 8
  %71 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %10)
  br label %72

72:                                               ; preds = %65, %53
  %73 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 32)
  %74 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %75 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 3
  store i32 %76, i32* %77, align 8
  %78 = load i64*, i64** %14, align 8
  %79 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i64* %78, i64** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 1, i32* %82, align 4
  %83 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %10)
  %84 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %85 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i32 @spi_sync_locked(%struct.TYPE_2__* %86, %struct.spi_message* %10)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i64*, i64** %14, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* @EC_SPI_PAST_END, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %95
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* @EC_SPI_RX_BAD_DATA, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* @EC_SPI_NOT_READY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %104, %95
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %17, align 4
  br label %119

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %91

119:                                              ; preds = %112, %91
  br label %120

120:                                              ; preds = %119, %72
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %125 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %126 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add i64 %128, 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @cros_ec_spi_receive_packet(%struct.cros_ec_device* %124, i32 %130)
  store i32 %131, i32* %17, align 4
  br label %145

132:                                              ; preds = %120
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %139 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %137, %132
  br label %145

145:                                              ; preds = %144, %123
  %146 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %147 = call i32 @terminate_request(%struct.cros_ec_device* %146)
  store i32 %147, i32* %18, align 4
  %148 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %149 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @spi_bus_unlock(i32 %152)
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %156, %145
  %159 = load i32, i32* %17, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %254

162:                                              ; preds = %158
  %163 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %164 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  store i64* %165, i64** %13, align 8
  %166 = load i64*, i64** %13, align 8
  %167 = bitcast i64* %166 to %struct.ec_host_response*
  store %struct.ec_host_response* %167, %struct.ec_host_response** %6, align 8
  %168 = load %struct.ec_host_response*, %struct.ec_host_response** %6, align 8
  %169 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %172 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %174 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %175 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %173, %struct.cros_ec_command* %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  br label %254

179:                                              ; preds = %162
  %180 = load %struct.ec_host_response*, %struct.ec_host_response** %6, align 8
  %181 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %12, align 4
  store i64 0, i64* %15, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %185 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %179
  %189 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %190 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %195 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %193, i32 %196)
  %198 = load i32, i32* @EMSGSIZE, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %17, align 4
  br label %254

200:                                              ; preds = %179
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %213, %200
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp ult i64 %203, 8
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load i64*, i64** %13, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %15, align 8
  %212 = add nsw i64 %211, %210
  store i64 %212, i64* %15, align 8
  br label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %201

216:                                              ; preds = %201
  %217 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %218 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %217, i32 0, i32 2
  %219 = load i64*, i64** %218, align 8
  %220 = load i64*, i64** %13, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @memcpy(i64* %219, i64* %221, i32 %222)
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %238, %216
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %230 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %15, align 8
  %237 = add nsw i64 %236, %235
  store i64 %237, i64* %15, align 8
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %224

241:                                              ; preds = %224
  %242 = load i64, i64* %15, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %241
  %245 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %246 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i64, i64* %15, align 8
  %249 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %247, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %248)
  %250 = load i32, i32* @EBADMSG, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %17, align 4
  br label %254

252:                                              ; preds = %241
  %253 = load i32, i32* %12, align 4
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %252, %244, %188, %178, %161
  %255 = load i64*, i64** %14, align 8
  %256 = call i32 @kfree(i64* %255)
  %257 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %258 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @EC_CMD_REBOOT_EC, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load i32, i32* @EC_REBOOT_DELAY_MS, align 4
  %264 = call i32 @msleep(i32 %263)
  br label %265

265:                                              ; preds = %262, %254
  %266 = load i32, i32* %17, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %50
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @ndelay(i64) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_bus_lock(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync_locked(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @cros_ec_spi_receive_packet(%struct.cros_ec_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @terminate_request(%struct.cros_ec_device*) #1

declare dso_local i32 @spi_bus_unlock(i32) #1

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
