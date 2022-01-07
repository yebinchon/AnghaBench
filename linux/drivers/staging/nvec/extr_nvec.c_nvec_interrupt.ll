; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32, i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@I2C_SL_IRQ = common dso_local global i64 0, align 8
@END_TRANS = common dso_local global i64 0, align 8
@RCVD = common dso_local global i64 0, align 8
@RNW = common dso_local global i64 0, align 8
@I2C_SL_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unexpected irq mask %lx\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Spurious IRQ\0A\00", align 1
@I2C_SL_RCVD = common dso_local global i64 0, align 8
@NVEC_MSG_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Read without prior read command\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"tx buffer underflow on %p (%u > %u)\0A\00", align 1
@NVEC_MSG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"RX buffer overflow on %p: Trying to write byte %u of %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"received address 0x%02x, expected 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Handled: %s 0x%02x, %s 0x%02x in state %u [%s%s%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"R=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"S=\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" END_TRANS\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" RCVD\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" RNW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nvec_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvec_chip*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i8 -1, i8* %8, align 1
  %12 = load i64, i64* @I2C_SL_IRQ, align 8
  %13 = load i64, i64* @END_TRANS, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @RCVD, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @RNW, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.nvec_chip*
  store %struct.nvec_chip* %20, %struct.nvec_chip** %10, align 8
  %21 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %22 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %25 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I2C_SL_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i8* @readl(i64 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %31, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %43 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %484

48:                                               ; preds = %35, %2
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @I2C_SL_IRQ, align 8
  %51 = and i64 %49, %50
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %55 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %484

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @RNW, align 8
  %62 = and i64 %60, %61
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %66 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @I2C_SL_RCVD, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i8* @readl(i64 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @RCVD, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %78 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @I2C_SL_RCVD, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i8 zeroext 0, i64 %81)
  br label %83

83:                                               ; preds = %76, %64
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @I2C_SL_IRQ, align 8
  %87 = load i64, i64* @RCVD, align 8
  %88 = or i64 %86, %87
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %92 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %95 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %386 [
    i32 0, label %97
    i32 1, label %108
    i32 2, label %148
    i32 3, label %218
    i32 4, label %311
  ]

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @I2C_SL_IRQ, align 8
  %100 = load i64, i64* @RCVD, align 8
  %101 = or i64 %99, %100
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @nvec_invalid_flags(%struct.nvec_chip* %104, i64 %105, i32 0)
  br label %107

107:                                              ; preds = %103, %97
  br label %389

108:                                              ; preds = %93
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @I2C_SL_IRQ, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @nvec_invalid_flags(%struct.nvec_chip* %113, i64 %114, i32 1)
  br label %147

116:                                              ; preds = %108
  %117 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %118 = load i32, i32* @NVEC_MSG_RX, align 4
  %119 = call %struct.TYPE_5__* @nvec_msg_alloc(%struct.nvec_chip* %117, i32 %118)
  %120 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %121 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %120, i32 0, i32 4
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %121, align 8
  %122 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %123 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %122, i32 0, i32 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = icmp ne %struct.TYPE_5__* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @unlikely(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %132 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  br label %389

133:                                              ; preds = %116
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %136 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %134, i32* %140, align 4
  %141 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %142 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %141, i32 0, i32 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 8
  %145 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %146 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %145, i32 0, i32 0
  store i32 2, i32* %146, align 8
  br label %147

147:                                              ; preds = %133, %112
  br label %389

148:                                              ; preds = %93
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @I2C_SL_IRQ, align 8
  %151 = load i64, i64* @RNW, align 8
  %152 = or i64 %150, %151
  %153 = load i64, i64* @RCVD, align 8
  %154 = or i64 %152, %153
  %155 = icmp eq i64 %149, %154
  br i1 %155, label %156, label %194

156:                                              ; preds = %148
  %157 = call i32 @udelay(i32 33)
  %158 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %159 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %158, i32 0, i32 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %173

166:                                              ; preds = %156
  %167 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %168 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @dev_err(i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %172 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  br label %389

173:                                              ; preds = %156
  %174 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %175 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %176 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %175, i32 0, i32 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = call i32 @nvec_msg_free(%struct.nvec_chip* %174, %struct.TYPE_5__* %177)
  %179 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %180 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %179, i32 0, i32 0
  store i32 3, i32* %180, align 8
  %181 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %182 = call i32 @nvec_tx_set(%struct.nvec_chip* %181)
  %183 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %184 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %183, i32 0, i32 5
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  store i8 %189, i8* %8, align 1
  %190 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %191 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %190, i32 0, i32 5
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 8
  br label %217

194:                                              ; preds = %148
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* @I2C_SL_IRQ, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %201 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %200, i32 0, i32 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 %199, i32* %205, align 4
  %206 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %207 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %206, i32 0, i32 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  store i32 2, i32* %209, align 8
  %210 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %211 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %210, i32 0, i32 0
  store i32 4, i32* %211, align 8
  br label %216

212:                                              ; preds = %194
  %213 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %214 = load i64, i64* %6, align 8
  %215 = call i32 @nvec_invalid_flags(%struct.nvec_chip* %213, i64 %214, i32 1)
  br label %216

216:                                              ; preds = %212, %198
  br label %217

217:                                              ; preds = %216, %173
  br label %389

218:                                              ; preds = %93
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* @END_TRANS, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %225 = call i32 @nvec_tx_completed(%struct.nvec_chip* %224)
  br label %310

226:                                              ; preds = %218
  %227 = load i64, i64* %6, align 8
  %228 = load i64, i64* @RNW, align 8
  %229 = and i64 %227, %228
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* @RCVD, align 8
  %234 = and i64 %232, %233
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231, %226
  %237 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %238 = load i64, i64* %6, align 8
  %239 = call i32 @nvec_invalid_flags(%struct.nvec_chip* %237, i64 %238, i32 1)
  br label %309

240:                                              ; preds = %231
  %241 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %242 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %241, i32 0, i32 5
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = icmp ne %struct.TYPE_4__* %243, null
  br i1 %244, label %245, label %272

245:                                              ; preds = %240
  %246 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %247 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %246, i32 0, i32 5
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %252 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %251, i32 0, i32 5
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %250, %255
  br i1 %256, label %257, label %272

257:                                              ; preds = %245
  %258 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %259 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %258, i32 0, i32 5
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %264 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %263, i32 0, i32 5
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %262, i64 %269
  %271 = load i8, i8* %270, align 1
  store i8 %271, i8* %8, align 1
  br label %308

272:                                              ; preds = %245, %240
  %273 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %274 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %277 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %276, i32 0, i32 5
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %280 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %279, i32 0, i32 5
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = icmp ne %struct.TYPE_4__* %281, null
  br i1 %282, label %283, label %289

283:                                              ; preds = %272
  %284 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %285 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %284, i32 0, i32 5
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  br label %290

289:                                              ; preds = %272
  br label %290

290:                                              ; preds = %289, %283
  %291 = phi i32 [ %288, %283 ], [ 0, %289 ]
  %292 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %293 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %292, i32 0, i32 5
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = icmp ne %struct.TYPE_4__* %294, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %290
  %297 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %298 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %297, i32 0, i32 5
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  br label %303

302:                                              ; preds = %290
  br label %303

303:                                              ; preds = %302, %296
  %304 = phi i32 [ %301, %296 ], [ 0, %302 ]
  %305 = call i32 (i32, i8*, ...) @dev_err(i32 %275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %278, i32 %291, i32 %304)
  %306 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %307 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %306, i32 0, i32 0
  store i32 0, i32* %307, align 8
  br label %308

308:                                              ; preds = %303, %257
  br label %309

309:                                              ; preds = %308, %236
  br label %310

310:                                              ; preds = %309, %223
  br label %389

311:                                              ; preds = %93
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* @END_TRANS, align 8
  %314 = load i64, i64* @RNW, align 8
  %315 = or i64 %313, %314
  %316 = and i64 %312, %315
  %317 = load i64, i64* @END_TRANS, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %311
  %320 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %321 = call i32 @nvec_rx_completed(%struct.nvec_chip* %320)
  br label %385

322:                                              ; preds = %311
  %323 = load i64, i64* %6, align 8
  %324 = load i64, i64* @RNW, align 8
  %325 = load i64, i64* @RCVD, align 8
  %326 = or i64 %324, %325
  %327 = and i64 %323, %326
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %322
  %330 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %331 = load i64, i64* %6, align 8
  %332 = call i32 @nvec_invalid_flags(%struct.nvec_chip* %330, i64 %331, i32 1)
  br label %384

333:                                              ; preds = %322
  %334 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %335 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %334, i32 0, i32 4
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %335, align 8
  %337 = icmp ne %struct.TYPE_5__* %336, null
  br i1 %337, label %338, label %361

338:                                              ; preds = %333
  %339 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %340 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %339, i32 0, i32 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @NVEC_MSG_SIZE, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %361

346:                                              ; preds = %338
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %349 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %348, i32 0, i32 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %354 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %353, i32 0, i32 4
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %356, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %352, i64 %359
  store i32 %347, i32* %360, align 4
  br label %383

361:                                              ; preds = %338, %333
  %362 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %363 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %366 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %365, i32 0, i32 4
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %369 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %368, i32 0, i32 4
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %369, align 8
  %371 = icmp ne %struct.TYPE_5__* %370, null
  br i1 %371, label %372, label %378

372:                                              ; preds = %361
  %373 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %374 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %373, i32 0, i32 4
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  br label %379

378:                                              ; preds = %361
  br label %379

379:                                              ; preds = %378, %372
  %380 = phi i32 [ %377, %372 ], [ 0, %378 ]
  %381 = load i32, i32* @NVEC_MSG_SIZE, align 4
  %382 = call i32 (i32, i8*, ...) @dev_err(i32 %364, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %367, i32 %380, i32 %381)
  br label %383

383:                                              ; preds = %379, %346
  br label %384

384:                                              ; preds = %383, %329
  br label %385

385:                                              ; preds = %384, %319
  br label %389

386:                                              ; preds = %93
  %387 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %388 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %387, i32 0, i32 0
  store i32 0, i32* %388, align 8
  br label %389

389:                                              ; preds = %386, %385, %310, %217, %166, %147, %130, %107
  %390 = load i64, i64* %6, align 8
  %391 = load i64, i64* @RCVD, align 8
  %392 = load i64, i64* @RNW, align 8
  %393 = or i64 %391, %392
  %394 = and i64 %390, %393
  %395 = load i64, i64* @RCVD, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %415

397:                                              ; preds = %389
  %398 = load i32, i32* %7, align 4
  %399 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %400 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %398, %401
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %405 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %7, align 4
  %408 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %409 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 (i32, i8*, ...) @dev_err(i32 %406, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %407, i32 %410)
  br label %412

412:                                              ; preds = %403, %397
  %413 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %414 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %413, i32 0, i32 0
  store i32 1, i32* %414, align 8
  br label %415

415:                                              ; preds = %412, %389
  %416 = load i64, i64* %6, align 8
  %417 = load i64, i64* @RNW, align 8
  %418 = load i64, i64* @END_TRANS, align 8
  %419 = or i64 %417, %418
  %420 = and i64 %416, %419
  %421 = load i64, i64* @RNW, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %431

423:                                              ; preds = %415
  %424 = load i8, i8* %8, align 1
  %425 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %426 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @I2C_SL_RCVD, align 8
  %429 = add nsw i64 %427, %428
  %430 = call i32 @writel(i8 zeroext %424, i64 %429)
  br label %431

431:                                              ; preds = %423, %415
  %432 = load i64, i64* %6, align 8
  %433 = load i64, i64* @I2C_SL_IRQ, align 8
  %434 = load i64, i64* @RNW, align 8
  %435 = or i64 %433, %434
  %436 = load i64, i64* @RCVD, align 8
  %437 = or i64 %435, %436
  %438 = icmp eq i64 %432, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %431
  %440 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %441 = call i32 @nvec_gpio_set_value(%struct.nvec_chip* %440, i32 1)
  br label %442

442:                                              ; preds = %439, %431
  %443 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %444 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i64, i64* %6, align 8
  %447 = load i64, i64* @RNW, align 8
  %448 = and i64 %446, %447
  %449 = icmp eq i64 %448, 0
  %450 = zext i1 %449 to i64
  %451 = select i1 %449, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %452 = load i32, i32* %7, align 4
  %453 = load i64, i64* %6, align 8
  %454 = load i64, i64* @RNW, align 8
  %455 = load i64, i64* @END_TRANS, align 8
  %456 = or i64 %454, %455
  %457 = and i64 %453, %456
  %458 = icmp ne i64 %457, 0
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %461 = load i8, i8* %8, align 1
  %462 = load i32, i32* %11, align 4
  %463 = load i64, i64* %6, align 8
  %464 = load i64, i64* @END_TRANS, align 8
  %465 = and i64 %463, %464
  %466 = icmp ne i64 %465, 0
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %469 = load i64, i64* %6, align 8
  %470 = load i64, i64* @RCVD, align 8
  %471 = and i64 %469, %470
  %472 = icmp ne i64 %471, 0
  %473 = zext i1 %472 to i64
  %474 = select i1 %472, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %475 = load i64, i64* %6, align 8
  %476 = load i64, i64* @RNW, align 8
  %477 = and i64 %475, %476
  %478 = icmp ne i64 %477, 0
  %479 = zext i1 %478 to i64
  %480 = select i1 %478, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %481 = call i32 @dev_dbg(i32 %445, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %451, i32 %452, i8* %460, i8 zeroext %461, i32 %462, i8* %468, i8* %474, i8* %480)
  %482 = call i32 @udelay(i32 100)
  %483 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %483, i32* %3, align 4
  br label %484

484:                                              ; preds = %442, %53, %41
  %485 = load i32, i32* %3, align 4
  ret i32 %485
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @nvec_invalid_flags(%struct.nvec_chip*, i64, i32) #1

declare dso_local %struct.TYPE_5__* @nvec_msg_alloc(%struct.nvec_chip*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nvec_msg_free(%struct.nvec_chip*, %struct.TYPE_5__*) #1

declare dso_local i32 @nvec_tx_set(%struct.nvec_chip*) #1

declare dso_local i32 @nvec_tx_completed(%struct.nvec_chip*) #1

declare dso_local i32 @nvec_rx_completed(%struct.nvec_chip*) #1

declare dso_local i32 @nvec_gpio_set_value(%struct.nvec_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i8*, i8 zeroext, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
