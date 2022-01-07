; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_rf69_set_rx_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_rf69_set_rx_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i32, i32 }
%struct.pi433_rx_cfg = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OPTION_ON = common dso_local global i64 0, align 8
@after_sync_interrupt = common dso_local global i32 0, align 4
@always = common dso_local global i32 0, align 4
@packet_length_var = common dso_local global i32 0, align 4
@packet_length_fix = common dso_local global i32 0, align 4
@filtering_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pi433_device*, %struct.pi433_rx_cfg*)* @rf69_set_rx_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf69_set_rx_cfg(%struct.pi433_device* %0, %struct.pi433_rx_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pi433_device*, align 8
  %5 = alloca %struct.pi433_rx_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pi433_device* %0, %struct.pi433_device** %4, align 8
  store %struct.pi433_rx_cfg* %1, %struct.pi433_rx_cfg** %5, align 8
  %8 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %9 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rf69_set_frequency(i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %365

19:                                               ; preds = %2
  %20 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %21 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %24 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rf69_set_bit_rate(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %365

31:                                               ; preds = %19
  %32 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %33 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %35, i32 0, i32 16
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rf69_set_modulation(i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %365

43:                                               ; preds = %31
  %44 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %45 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rf69_set_antenna_impedance(i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %365

55:                                               ; preds = %43
  %56 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %57 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rf69_set_rssi_threshold(i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %365

67:                                               ; preds = %55
  %68 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %69 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rf69_set_ook_threshold_dec(i32 %70, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %365

79:                                               ; preds = %67
  %80 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %81 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %87 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rf69_set_bandwidth(i32 %82, i32 %85, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %365

94:                                               ; preds = %79
  %95 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %96 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %99 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %102 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rf69_set_bandwidth_during_afc(i32 %97, i32 %100, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %365

109:                                              ; preds = %94
  %110 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %111 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @rf69_set_dagc(i32 %112, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %365

121:                                              ; preds = %109
  %122 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %123 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %126 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %128 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @OPTION_ON, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %121
  %133 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %134 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rf69_enable_sync(i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %365

141:                                              ; preds = %132
  %142 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %143 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @after_sync_interrupt, align 4
  %146 = call i32 @rf69_set_fifo_fill_condition(i32 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %365

151:                                              ; preds = %141
  br label %172

152:                                              ; preds = %121
  %153 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %154 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rf69_disable_sync(i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %365

161:                                              ; preds = %152
  %162 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %163 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @always, align 4
  %166 = call i32 @rf69_set_fifo_fill_condition(i32 %164, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %365

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %151
  %173 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %174 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @OPTION_ON, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %180 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @packet_length_var, align 4
  %183 = call i32 @rf69_set_packet_format(i32 %181, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %365

188:                                              ; preds = %178
  br label %200

189:                                              ; preds = %172
  %190 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %191 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @packet_length_fix, align 4
  %194 = call i32 @rf69_set_packet_format(i32 %192, i32 %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %365

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %188
  %201 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %202 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %205 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @rf69_set_address_filtering(i32 %203, i64 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %365

212:                                              ; preds = %200
  %213 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %214 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @OPTION_ON, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %212
  %219 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %220 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @rf69_enable_crc(i32 %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %365

227:                                              ; preds = %218
  br label %238

228:                                              ; preds = %212
  %229 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %230 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @rf69_disable_crc(i32 %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %228
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* %3, align 4
  br label %365

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %227
  %239 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %240 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %243 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @rf69_set_sync_size(i32 %241, i32 %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %3, align 4
  br label %365

250:                                              ; preds = %238
  %251 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %252 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @OPTION_ON, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %250
  %257 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %258 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @rf69_set_payload_length(i32 %259, i32 255)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %256
  %264 = load i32, i32* %6, align 4
  store i32 %264, i32* %3, align 4
  br label %365

265:                                              ; preds = %256
  br label %314

266:                                              ; preds = %250
  %267 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %268 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %303

271:                                              ; preds = %266
  %272 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %273 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  store i32 %274, i32* %7, align 4
  %275 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %276 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @OPTION_ON, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %7, align 4
  br label %283

283:                                              ; preds = %280, %271
  %284 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %285 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @filtering_off, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %283
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %289, %283
  %293 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %294 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %7, align 4
  %297 = call i32 @rf69_set_payload_length(i32 %295, i32 %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %3, align 4
  br label %365

302:                                              ; preds = %292
  br label %313

303:                                              ; preds = %266
  %304 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %305 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @rf69_set_payload_length(i32 %306, i32 0)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* %6, align 4
  store i32 %311, i32* %3, align 4
  br label %365

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %312, %302
  br label %314

314:                                              ; preds = %313, %265
  %315 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %316 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @OPTION_ON, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %333

320:                                              ; preds = %314
  %321 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %322 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %325 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @rf69_set_sync_values(i32 %323, i32 %326)
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* %6, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %320
  %331 = load i32, i32* %6, align 4
  store i32 %331, i32* %3, align 4
  br label %365

332:                                              ; preds = %320
  br label %333

333:                                              ; preds = %332, %314
  %334 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %335 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @filtering_off, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %364

339:                                              ; preds = %333
  %340 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %341 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %344 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @rf69_set_node_address(i32 %342, i32 %345)
  store i32 %346, i32* %6, align 4
  %347 = load i32, i32* %6, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %339
  %350 = load i32, i32* %6, align 4
  store i32 %350, i32* %3, align 4
  br label %365

351:                                              ; preds = %339
  %352 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %353 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.pi433_rx_cfg*, %struct.pi433_rx_cfg** %5, align 8
  %356 = getelementptr inbounds %struct.pi433_rx_cfg, %struct.pi433_rx_cfg* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @rf69_set_broadcast_address(i32 %354, i32 %357)
  store i32 %358, i32* %6, align 4
  %359 = load i32, i32* %6, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %351
  %362 = load i32, i32* %6, align 4
  store i32 %362, i32* %3, align 4
  br label %365

363:                                              ; preds = %351
  br label %364

364:                                              ; preds = %363, %333
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %364, %361, %349, %330, %310, %300, %263, %248, %235, %225, %210, %197, %186, %169, %159, %149, %139, %119, %107, %92, %77, %65, %53, %41, %29, %17
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @rf69_set_frequency(i32, i32) #1

declare dso_local i32 @rf69_set_bit_rate(i32, i32) #1

declare dso_local i32 @rf69_set_modulation(i32, i32) #1

declare dso_local i32 @rf69_set_antenna_impedance(i32, i32) #1

declare dso_local i32 @rf69_set_rssi_threshold(i32, i32) #1

declare dso_local i32 @rf69_set_ook_threshold_dec(i32, i32) #1

declare dso_local i32 @rf69_set_bandwidth(i32, i32, i32) #1

declare dso_local i32 @rf69_set_bandwidth_during_afc(i32, i32, i32) #1

declare dso_local i32 @rf69_set_dagc(i32, i32) #1

declare dso_local i32 @rf69_enable_sync(i32) #1

declare dso_local i32 @rf69_set_fifo_fill_condition(i32, i32) #1

declare dso_local i32 @rf69_disable_sync(i32) #1

declare dso_local i32 @rf69_set_packet_format(i32, i32) #1

declare dso_local i32 @rf69_set_address_filtering(i32, i64) #1

declare dso_local i32 @rf69_enable_crc(i32) #1

declare dso_local i32 @rf69_disable_crc(i32) #1

declare dso_local i32 @rf69_set_sync_size(i32, i32) #1

declare dso_local i32 @rf69_set_payload_length(i32, i32) #1

declare dso_local i32 @rf69_set_sync_values(i32, i32) #1

declare dso_local i32 @rf69_set_node_address(i32, i32) #1

declare dso_local i32 @rf69_set_broadcast_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
