; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axis_fifo = type { i64, i32, i32, i32 }

@XLLF_IER_OFFSET = common dso_local global i64 0, align 8
@XLLF_ISR_OFFSET = common dso_local global i64 0, align 8
@XLLF_INT_RC_MASK = common dso_local global i32 0, align 4
@XLLF_INT_ALL_MASK = common dso_local global i32 0, align 4
@XLLF_INT_TC_MASK = common dso_local global i32 0, align 4
@XLLF_INT_TFPF_MASK = common dso_local global i32 0, align 4
@XLLF_INT_TFPE_MASK = common dso_local global i32 0, align 4
@XLLF_INT_RFPF_MASK = common dso_local global i32 0, align 4
@XLLF_INT_RFPE_MASK = common dso_local global i32 0, align 4
@XLLF_INT_TRC_MASK = common dso_local global i32 0, align 4
@XLLF_INT_RRC_MASK = common dso_local global i32 0, align 4
@XLLF_INT_RPURE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"receive under-read interrupt\0A\00", align 1
@XLLF_INT_RPORE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"receive over-read interrupt\0A\00", align 1
@XLLF_INT_RPUE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"receive underrun error interrupt\0A\00", align 1
@XLLF_INT_TPOE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"transmit overrun error interrupt\0A\00", align 1
@XLLF_INT_TSE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"transmit length mismatch error interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unknown interrupt(s) 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @axis_fifo_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axis_fifo_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.axis_fifo*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.axis_fifo*
  store %struct.axis_fifo* %8, %struct.axis_fifo** %5, align 8
  br label %9

9:                                                ; preds = %273, %2
  %10 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %11 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XLLF_IER_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  %16 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %17 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32(i64 %20)
  %22 = and i32 %15, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @XLLF_INT_RC_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %9
  %28 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %29 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %28, i32 0, i32 3
  %30 = call i32 @wake_up(i32* %29)
  %31 = load i32, i32* @XLLF_INT_RC_MASK, align 4
  %32 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %35 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 %33, i64 %38)
  br label %272

40:                                               ; preds = %9
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @XLLF_INT_TC_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %47 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %46, i32 0, i32 2
  %48 = call i32 @wake_up(i32* %47)
  %49 = load i32, i32* @XLLF_INT_TC_MASK, align 4
  %50 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %53 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %51, i64 %56)
  br label %271

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @XLLF_INT_TFPF_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32, i32* @XLLF_INT_TFPF_MASK, align 4
  %65 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %68 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @iowrite32(i32 %66, i64 %71)
  br label %270

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @XLLF_INT_TFPE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* @XLLF_INT_TFPE_MASK, align 4
  %80 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %83 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @iowrite32(i32 %81, i64 %86)
  br label %269

88:                                               ; preds = %73
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @XLLF_INT_RFPF_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* @XLLF_INT_RFPF_MASK, align 4
  %95 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %98 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i32 %96, i64 %101)
  br label %268

103:                                              ; preds = %88
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @XLLF_INT_RFPE_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* @XLLF_INT_RFPE_MASK, align 4
  %110 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %113 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @iowrite32(i32 %111, i64 %116)
  br label %267

118:                                              ; preds = %103
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @XLLF_INT_TRC_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32, i32* @XLLF_INT_TRC_MASK, align 4
  %125 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %128 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @iowrite32(i32 %126, i64 %131)
  br label %266

133:                                              ; preds = %118
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @XLLF_INT_RRC_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32, i32* @XLLF_INT_RRC_MASK, align 4
  %140 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %141 = and i32 %139, %140
  %142 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %143 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @iowrite32(i32 %141, i64 %146)
  br label %265

148:                                              ; preds = %133
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @XLLF_INT_RPURE_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %155 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @XLLF_INT_RPURE_MASK, align 4
  %159 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %162 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @iowrite32(i32 %160, i64 %165)
  br label %264

167:                                              ; preds = %148
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @XLLF_INT_RPORE_MASK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %174 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @dev_err(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32, i32* @XLLF_INT_RPORE_MASK, align 4
  %178 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %181 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @iowrite32(i32 %179, i64 %184)
  br label %263

186:                                              ; preds = %167
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @XLLF_INT_RPUE_MASK, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %193 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i8*, ...) @dev_err(i32 %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @XLLF_INT_RPUE_MASK, align 4
  %197 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %200 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @iowrite32(i32 %198, i64 %203)
  br label %262

205:                                              ; preds = %186
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @XLLF_INT_TPOE_MASK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %212 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, ...) @dev_err(i32 %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i32, i32* @XLLF_INT_TPOE_MASK, align 4
  %216 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %217 = and i32 %215, %216
  %218 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %219 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @iowrite32(i32 %217, i64 %222)
  br label %261

224:                                              ; preds = %205
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @XLLF_INT_TSE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %224
  %230 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %231 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i32, i8*, ...) @dev_err(i32 %232, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %234 = load i32, i32* @XLLF_INT_TSE_MASK, align 4
  %235 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %236 = and i32 %234, %235
  %237 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %238 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @iowrite32(i32 %236, i64 %241)
  br label %260

243:                                              ; preds = %224
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %248 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 (i32, i8*, ...) @dev_err(i32 %249, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @XLLF_INT_ALL_MASK, align 4
  %253 = load %struct.axis_fifo*, %struct.axis_fifo** %5, align 8
  %254 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @XLLF_ISR_OFFSET, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @iowrite32(i32 %252, i64 %257)
  br label %259

259:                                              ; preds = %246, %243
  br label %260

260:                                              ; preds = %259, %229
  br label %261

261:                                              ; preds = %260, %210
  br label %262

262:                                              ; preds = %261, %191
  br label %263

263:                                              ; preds = %262, %172
  br label %264

264:                                              ; preds = %263, %153
  br label %265

265:                                              ; preds = %264, %138
  br label %266

266:                                              ; preds = %265, %123
  br label %267

267:                                              ; preds = %266, %108
  br label %268

268:                                              ; preds = %267, %93
  br label %269

269:                                              ; preds = %268, %78
  br label %270

270:                                              ; preds = %269, %63
  br label %271

271:                                              ; preds = %270, %45
  br label %272

272:                                              ; preds = %271, %27
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %9, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %277
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
