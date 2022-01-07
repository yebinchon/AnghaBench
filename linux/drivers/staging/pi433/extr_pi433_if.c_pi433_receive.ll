; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i32, i64, i32, i64, i32, i64, i32, %struct.spi_device*, i32*, i32, i32, %struct.TYPE_2__, i32*, i32*, i32, i32 }
%struct.spi_device = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"rx: going to wait for any tx to finish\00", align 1
@FIFO_SIZE = common dso_local global i64 0, align 8
@rssi_exceeded_threshold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"rx: going to wait for high RSSI level\00", align 1
@DIO0 = common dso_local global i64 0, align 8
@DIO_PAYLOAD_READY = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"rx: msg len set to %d by fixed length\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"rx: msg len set to %d as requested by read\00", align 1
@OPTION_ON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"rx: msg len reset to %d due to length byte\00", align 1
@filtering_off = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"rx: address byte stripped off\00", align 1
@payload_ready = common dso_local global i32 0, align 4
@standby = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"rf69_set_mode(): radio module failed to go standby\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pi433_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi433_receive(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pi433_device*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.pi433_device*
  store %struct.pi433_device* %11, %struct.pi433_device** %4, align 8
  %12 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %13 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %12, i32 0, i32 7
  %14 = load %struct.spi_device*, %struct.spi_device** %13, align 8
  store %struct.spi_device* %14, %struct.spi_device** %5, align 8
  %15 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %16 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %18 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %22 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %25 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @wait_event_interruptible(i32 %23, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %35 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %37 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %36, i32 0, i32 6
  %38 = call i32 @wake_up_interruptible(i32* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %358

40:                                               ; preds = %1
  %41 = load i64, i64* @FIFO_SIZE, align 8
  %42 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %43 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %45 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %47 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %49 = call i32 @pi433_start_rx(%struct.pi433_device* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %358

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %93, %54
  %56 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %57 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %56, i32 0, i32 7
  %58 = load %struct.spi_device*, %struct.spi_device** %57, align 8
  %59 = load i32, i32* @rssi_exceeded_threshold, align 4
  %60 = call i32 @rf69_get_flag(%struct.spi_device* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %94

63:                                               ; preds = %55
  %64 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %65 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %67 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %66, i32 0, i32 6
  %68 = call i32 @wake_up_interruptible(i32* %67)
  %69 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %70 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %74 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %77 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %76, i32 0, i32 7
  %78 = load %struct.spi_device*, %struct.spi_device** %77, align 8
  %79 = load i32, i32* @rssi_exceeded_threshold, align 4
  %80 = call i32 @rf69_get_flag(%struct.spi_device* %78, i32 %79)
  %81 = call i32 @wait_event_interruptible(i32 %75, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %63
  br label %337

85:                                               ; preds = %63
  %86 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %87 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %89 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %94

93:                                               ; preds = %85
  br label %55

94:                                               ; preds = %92, %55
  %95 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %96 = load i64, i64* @DIO0, align 8
  %97 = load i32, i32* @DIO_PAYLOAD_READY, align 4
  %98 = call i32 @rf69_set_dio_mapping(%struct.spi_device* %95, i64 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %337

102:                                              ; preds = %94
  %103 = load i32, i32* @DIO_PAYLOAD_READY, align 4
  %104 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %105 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %104, i32 0, i32 13
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @DIO0, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %110 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %109, i32 0, i32 12
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @DIO0, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %116 = call i32 @irq_set_irq_type(i32 %114, i32 %115)
  %117 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %118 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %102
  %123 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %124 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %123, i32 0, i32 11
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %128 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 -1, i32* %8, align 4
  br label %337

132:                                              ; preds = %122
  %133 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %134 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %7, align 4
  %137 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %138 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  br label %151

142:                                              ; preds = %102
  %143 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %144 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %7, align 4
  %146 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %147 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %142, %132
  %152 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %153 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %152, i32 0, i32 11
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @OPTION_ON, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %191

158:                                              ; preds = %151
  %159 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %160 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %163 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @FIFO_SIZE, align 8
  %166 = icmp slt i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @wait_event_interruptible(i32 %161, i32 %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  br label %337

172:                                              ; preds = %158
  %173 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %174 = call i32 @rf69_read_fifo(%struct.spi_device* %173, i32* %7, i32 1)
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %177 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  store i32 -1, i32* %8, align 4
  br label %337

181:                                              ; preds = %172
  %182 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %183 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %187 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (i32, i8*, ...) @dev_dbg(i32 %188, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %181, %151
  %192 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %193 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %192, i32 0, i32 11
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @filtering_off, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %191
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %7, align 4
  %201 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %202 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %205 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @FIFO_SIZE, align 8
  %208 = icmp slt i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @wait_event_interruptible(i32 %203, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %198
  br label %337

214:                                              ; preds = %198
  %215 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %216 = call i32 @rf69_read_fifo(%struct.spi_device* %215, i32* %9, i32 1)
  %217 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %218 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %222 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32, i8*, ...) @dev_dbg(i32 %223, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %225

225:                                              ; preds = %214, %191
  br label %226

226:                                              ; preds = %335, %225
  %227 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %228 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %336

232:                                              ; preds = %226
  %233 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %234 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %233, i32 0, i32 7
  %235 = load %struct.spi_device*, %struct.spi_device** %234, align 8
  %236 = load i32, i32* @payload_ready, align 4
  %237 = call i32 @rf69_get_flag(%struct.spi_device* %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %232
  %240 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %241 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %244 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @FIFO_SIZE, align 8
  %247 = icmp slt i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @wait_event_interruptible(i32 %242, i32 %248)
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %239
  br label %337

253:                                              ; preds = %239
  br label %254

254:                                              ; preds = %253, %232
  %255 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %256 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %259 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp sgt i64 %257, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %254
  %263 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %264 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %267 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %265, %268
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %6, align 4
  br label %277

271:                                              ; preds = %254
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %274 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %272, %275
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %271, %262
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* @FIFO_SIZE, align 8
  %281 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %282 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = sub nsw i64 %280, %283
  %285 = icmp sgt i64 %279, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load i64, i64* @FIFO_SIZE, align 8
  %288 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %289 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %287, %290
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %286, %277
  %294 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %295 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %296 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %295, i32 0, i32 8
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %299 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @rf69_read_fifo(%struct.spi_device* %294, i32* %302, i32 %303)
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %293
  br label %337

308:                                              ; preds = %293
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %312 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %313, %310
  store i64 %314, i64* %312, align 8
  %315 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %316 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %319 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = icmp sgt i64 %317, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %308
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %326 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, %324
  store i64 %328, i64* %326, align 8
  br label %335

329:                                              ; preds = %308
  %330 = load i32, i32* %6, align 4
  %331 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %332 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %333, %330
  store i32 %334, i32* %332, align 8
  br label %335

335:                                              ; preds = %329, %322
  br label %226

336:                                              ; preds = %226
  br label %337

337:                                              ; preds = %336, %307, %252, %213, %180, %171, %131, %101, %84
  %338 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %339 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  %340 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %341 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %340, i32 0, i32 7
  %342 = load %struct.spi_device*, %struct.spi_device** %341, align 8
  %343 = load i32, i32* @standby, align 4
  %344 = call i64 @rf69_set_mode(%struct.spi_device* %342, i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %337
  %347 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %348

348:                                              ; preds = %346, %337
  %349 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %350 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %349, i32 0, i32 6
  %351 = call i32 @wake_up_interruptible(i32* %350)
  %352 = load i32, i32* %8, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %348
  %355 = load i32, i32* %8, align 4
  store i32 %355, i32* %2, align 4
  br label %358

356:                                              ; preds = %348
  %357 = load i32, i32* %7, align 4
  store i32 %357, i32* %2, align 4
  br label %358

358:                                              ; preds = %356, %354, %52, %33
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pi433_start_rx(%struct.pi433_device*) #1

declare dso_local i32 @rf69_get_flag(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_set_dio_mapping(%struct.spi_device*, i64, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @rf69_read_fifo(%struct.spi_device*, i32*, i32) #1

declare dso_local i64 @rf69_set_mode(%struct.spi_device*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
