; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_run_data_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_run_data_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.scb = type { i32 }
%struct.ahd_dma64_seg = type { i32, i32 }
%struct.ahd_dma_seg = type { i32, i32 }

@SEQINTSRC = common dso_local global i64 0, align 8
@CFG4DATA = common dso_local global i32 0, align 4
@SCB_SGPTR = common dso_local global i64 0, align 8
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SCB_DATACNT = common dso_local global i64 0, align 8
@AHD_DMA_LAST_SEG = common dso_local global i32 0, align 4
@LAST_SEG = common dso_local global i32 0, align 4
@SG_STATE = common dso_local global i64 0, align 8
@LOADING_NEEDED = common dso_local global i32 0, align 4
@HADDR = common dso_local global i32 0, align 4
@SCB_DATAPTR = common dso_local global i32 0, align 4
@HCNT = common dso_local global i64 0, align 8
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@SG_CACHE_PRE = common dso_local global i64 0, align 8
@DFCNTRL = common dso_local global i64 0, align 8
@PRELOADEN = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i32 0, align 4
@HDMAEN = common dso_local global i32 0, align 4
@SCB_RESIDUAL_DATACNT = common dso_local global i64 0, align 8
@SCB_RESIDUAL_SGPTR = common dso_local global i64 0, align 8
@SG_PTR_MASK = common dso_local global i32 0, align 4
@SCB_FIFO_USE_COUNT = common dso_local global i64 0, align 8
@LONGJMP_ADDR = common dso_local global i64 0, align 8
@CLRSEQINTSRC = common dso_local global i64 0, align 8
@CLRCFG4DATA = common dso_local global i32 0, align 4
@SAVEPTRS = common dso_local global i32 0, align 4
@INVALID_ADDR = common dso_local global i32 0, align 4
@FETCH_INPROG = common dso_local global i32 0, align 4
@CCSGCTL = common dso_local global i64 0, align 8
@FIFOFLUSH = common dso_local global i32 0, align 4
@SHCNT = common dso_local global i32 0, align 4
@SG_CACHE_SHADOW = common dso_local global i64 0, align 8
@SG_ADDR_MASK = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SHADDR = common dso_local global i32 0, align 4
@CLRSAVEPTRS = common dso_local global i32 0, align 4
@SEQIMODE = common dso_local global i64 0, align 8
@ENSAVEPTRS = common dso_local global i32 0, align 4
@DIRECTION = common dso_local global i32 0, align 4
@DFSTATUS = common dso_local global i64 0, align 8
@PRELOAD_AVAIL = common dso_local global i32 0, align 4
@HDMAENACK = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_SG_HIGH_ADDR_MASK = common dso_local global i32 0, align 4
@AHD_NEW_DFCNTRL_OPTS = common dso_local global i32 0, align 4
@SCSIENWRDIS = common dso_local global i32 0, align 4
@LAST_SEG_DONE = common dso_local global i32 0, align 4
@FIFOEMP = common dso_local global i32 0, align 4
@DFFSXFRCTL = common dso_local global i64 0, align 8
@CLRCHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_run_data_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_run_data_fifo(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ahd_dma64_seg*, align 8
  %15 = alloca %struct.ahd_dma_seg*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %17 = load i64, i64* @SEQINTSRC, align 8
  %18 = call i32 @ahd_inb(%struct.ahd_softc* %16, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CFG4DATA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %2
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = load i64, i64* @SCB_SGPTR, align 8
  %26 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %24, i64 %25)
  %27 = load i32, i32* @SG_FULL_RESID, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i64, i64* @SCB_SGPTR, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ahd_outb(%struct.ahd_softc* %30, i64 %31, i32 %32)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %35 = load i64, i64* @SCB_DATACNT, align 8
  %36 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %34, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load i32, i32* @LAST_SEG, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = load i64, i64* @SG_STATE, align 8
  %47 = call i32 @ahd_outb(%struct.ahd_softc* %45, i64 %46, i32 0)
  br label %53

48:                                               ; preds = %23
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %50 = load i64, i64* @SG_STATE, align 8
  %51 = load i32, i32* @LOADING_NEEDED, align 4
  %52 = call i32 @ahd_outb(%struct.ahd_softc* %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %55 = load i32, i32* @HADDR, align 4
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = load i32, i32* @SCB_DATAPTR, align 4
  %58 = call i32 @ahd_inq_scbram(%struct.ahd_softc* %56, i32 %57)
  %59 = call i32 @ahd_outq(%struct.ahd_softc* %54, i32 %55, i32 %58)
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load i64, i64* @HCNT, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @ahd_outl(%struct.ahd_softc* %60, i64 %61, i32 %64)
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %67 = load i64, i64* @SG_CACHE_PRE, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ahd_outb(%struct.ahd_softc* %66, i64 %67, i32 %68)
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %71 = load i64, i64* @DFCNTRL, align 8
  %72 = load i32, i32* @PRELOADEN, align 4
  %73 = load i32, i32* @SCSIEN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @HDMAEN, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @ahd_outb(%struct.ahd_softc* %70, i64 %71, i32 %76)
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %79 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %80 = add nsw i64 %79, 3
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 24
  %83 = call i32 @ahd_outb(%struct.ahd_softc* %78, i64 %80, i32 %82)
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %85 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SG_PTR_MASK, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @ahd_outl(%struct.ahd_softc* %84, i64 %85, i32 %88)
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = load i64, i64* @SCB_FIFO_USE_COUNT, align 8
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load i64, i64* @SCB_FIFO_USE_COUNT, align 8
  %94 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %92, i64 %93)
  %95 = add nsw i32 %94, 1
  %96 = call i32 @ahd_outb(%struct.ahd_softc* %90, i64 %91, i32 %95)
  %97 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %98 = load i64, i64* @LONGJMP_ADDR, align 8
  %99 = call i32 @ahd_outw(%struct.ahd_softc* %97, i64 %98, i32 0)
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = load i64, i64* @CLRSEQINTSRC, align 8
  %102 = load i32, i32* @CLRCFG4DATA, align 4
  %103 = call i32 @ahd_outb(%struct.ahd_softc* %100, i64 %101, i32 %102)
  br label %439

104:                                              ; preds = %2
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SAVEPTRS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %243

109:                                              ; preds = %104
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %111 = load i64, i64* @LONGJMP_ADDR, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @ahd_inb(%struct.ahd_softc* %110, i64 %112)
  %114 = load i32, i32* @INVALID_ADDR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %418

118:                                              ; preds = %109
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %120 = load i64, i64* @SG_STATE, align 8
  %121 = call i32 @ahd_inb(%struct.ahd_softc* %119, i64 %120)
  %122 = load i32, i32* @FETCH_INPROG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %127 = load i64, i64* @CCSGCTL, align 8
  %128 = call i32 @ahd_outb(%struct.ahd_softc* %126, i64 %127, i32 0)
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %131 = load i64, i64* @SG_STATE, align 8
  %132 = call i32 @ahd_outb(%struct.ahd_softc* %130, i64 %131, i32 0)
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %134 = load i64, i64* @DFCNTRL, align 8
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = load i64, i64* @DFCNTRL, align 8
  %137 = call i32 @ahd_inb(%struct.ahd_softc* %135, i64 %136)
  %138 = load i32, i32* @FIFOFLUSH, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @ahd_outb(%struct.ahd_softc* %133, i64 %134, i32 %139)
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %142 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %143 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %141, i64 %142)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %145 = load i32, i32* @SHCNT, align 4
  %146 = call i32 @ahd_inl(%struct.ahd_softc* %144, i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %148 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %149 = add nsw i64 %148, 3
  %150 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %147, i64 %149)
  %151 = shl i32 %150, 24
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %155 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @ahd_outl(%struct.ahd_softc* %154, i64 %155, i32 %156)
  %158 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %159 = load i64, i64* @SG_CACHE_SHADOW, align 8
  %160 = call i32 @ahd_inb(%struct.ahd_softc* %158, i64 %159)
  %161 = load i32, i32* @LAST_SEG, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %195

164:                                              ; preds = %129
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %166 = load i64, i64* @SG_CACHE_SHADOW, align 8
  %167 = call i32 @ahd_inb(%struct.ahd_softc* %165, i64 %166)
  %168 = and i32 %167, 128
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, 128
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = sub nsw i32 %175, 256
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %174, %170, %164
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, -256
  store i32 %179, i32* %8, align 4
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %181 = load i64, i64* @SG_CACHE_SHADOW, align 8
  %182 = call i32 @ahd_inb(%struct.ahd_softc* %180, i64 %181)
  %183 = load i32, i32* @SG_ADDR_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %8, align 4
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @ahd_outl(%struct.ahd_softc* %187, i64 %188, i32 %189)
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %192 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %193 = add nsw i64 %192, 3
  %194 = call i32 @ahd_outb(%struct.ahd_softc* %191, i64 %193, i32 0)
  br label %208

195:                                              ; preds = %129
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %202 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @SG_LIST_NULL, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @ahd_outb(%struct.ahd_softc* %201, i64 %202, i32 %205)
  br label %207

207:                                              ; preds = %200, %195
  br label %208

208:                                              ; preds = %207, %177
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %210 = load i32, i32* @SCB_DATAPTR, align 4
  %211 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %212 = load i32, i32* @SHADDR, align 4
  %213 = call i32 @ahd_inq(%struct.ahd_softc* %211, i32 %212)
  %214 = call i32 @ahd_outq(%struct.ahd_softc* %209, i32 %210, i32 %213)
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %216 = load i64, i64* @SCB_DATACNT, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @ahd_outl(%struct.ahd_softc* %215, i64 %216, i32 %217)
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %220 = load i64, i64* @SCB_SGPTR, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @ahd_outl(%struct.ahd_softc* %219, i64 %220, i32 %221)
  %223 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %224 = load i64, i64* @CLRSEQINTSRC, align 8
  %225 = load i32, i32* @CLRSAVEPTRS, align 4
  %226 = call i32 @ahd_outb(%struct.ahd_softc* %223, i64 %224, i32 %225)
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = load i64, i64* @SEQIMODE, align 8
  %229 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %230 = load i64, i64* @SEQIMODE, align 8
  %231 = call i32 @ahd_inb(%struct.ahd_softc* %229, i64 %230)
  %232 = load i32, i32* @ENSAVEPTRS, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @ahd_outb(%struct.ahd_softc* %227, i64 %228, i32 %233)
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %236 = load i64, i64* @DFCNTRL, align 8
  %237 = call i32 @ahd_inb(%struct.ahd_softc* %235, i64 %236)
  %238 = load i32, i32* @DIRECTION, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %208
  br label %418

242:                                              ; preds = %208
  br label %438

243:                                              ; preds = %104
  %244 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %245 = load i64, i64* @SG_STATE, align 8
  %246 = call i32 @ahd_inb(%struct.ahd_softc* %244, i64 %245)
  %247 = load i32, i32* @LOADING_NEEDED, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %394

250:                                              ; preds = %243
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %252 = load i64, i64* @SG_STATE, align 8
  %253 = call i32 @ahd_inb(%struct.ahd_softc* %251, i64 %252)
  %254 = load i32, i32* @FETCH_INPROG, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %250
  %258 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %259 = load i64, i64* @CCSGCTL, align 8
  %260 = call i32 @ahd_outb(%struct.ahd_softc* %258, i64 %259, i32 0)
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %262 = load i64, i64* @SG_STATE, align 8
  %263 = load i32, i32* @LOADING_NEEDED, align 4
  %264 = call i32 @ahd_outb(%struct.ahd_softc* %261, i64 %262, i32 %263)
  br label %265

265:                                              ; preds = %257, %250
  %266 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %267 = load i64, i64* @DFSTATUS, align 8
  %268 = call i32 @ahd_inb(%struct.ahd_softc* %266, i64 %267)
  %269 = load i32, i32* @PRELOAD_AVAIL, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %393

272:                                              ; preds = %265
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %274 = load i64, i64* @DFCNTRL, align 8
  %275 = call i32 @ahd_inb(%struct.ahd_softc* %273, i64 %274)
  %276 = load i32, i32* @HDMAENACK, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %393

279:                                              ; preds = %272
  %280 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %281 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %282 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %280, i64 %281)
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* @SG_PTR_MASK, align 4
  %284 = load i32, i32* %10, align 4
  %285 = and i32 %284, %283
  store i32 %285, i32* %10, align 4
  %286 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %287 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %308

292:                                              ; preds = %279
  %293 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %294 = load %struct.scb*, %struct.scb** %4, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i8* @ahd_sg_bus_to_virt(%struct.ahd_softc* %293, %struct.scb* %294, i32 %295)
  %297 = bitcast i8* %296 to %struct.ahd_dma64_seg*
  store %struct.ahd_dma64_seg* %297, %struct.ahd_dma64_seg** %14, align 8
  %298 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %14, align 8
  %299 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %11, align 4
  %301 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %14, align 8
  %302 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = add i64 %305, 8
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %10, align 4
  br label %333

308:                                              ; preds = %279
  %309 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %310 = load %struct.scb*, %struct.scb** %4, align 8
  %311 = load i32, i32* %10, align 4
  %312 = call i8* @ahd_sg_bus_to_virt(%struct.ahd_softc* %309, %struct.scb* %310, i32 %311)
  %313 = bitcast i8* %312 to %struct.ahd_dma_seg*
  store %struct.ahd_dma_seg* %313, %struct.ahd_dma_seg** %15, align 8
  %314 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %15, align 8
  %315 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @AHD_SG_HIGH_ADDR_MASK, align 4
  %318 = and i32 %316, %317
  store i32 %318, i32* %11, align 4
  %319 = load i32, i32* %11, align 4
  %320 = shl i32 %319, 8
  store i32 %320, i32* %11, align 4
  %321 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %15, align 8
  %322 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %11, align 4
  %326 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %15, align 8
  %327 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = add i64 %330, 8
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %10, align 4
  br label %333

333:                                              ; preds = %308, %292
  %334 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %335 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %336 = add nsw i64 %335, 3
  %337 = load i32, i32* %12, align 4
  %338 = ashr i32 %337, 24
  %339 = call i32 @ahd_outb(%struct.ahd_softc* %334, i64 %336, i32 %338)
  %340 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %341 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %342 = load i32, i32* %10, align 4
  %343 = call i32 @ahd_outl(%struct.ahd_softc* %340, i64 %341, i32 %342)
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %333
  %349 = load i32, i32* @LAST_SEG, align 4
  %350 = load i32, i32* %10, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %10, align 4
  %352 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %353 = load i64, i64* @SG_STATE, align 8
  %354 = call i32 @ahd_outb(%struct.ahd_softc* %352, i64 %353, i32 0)
  br label %355

355:                                              ; preds = %348, %333
  %356 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %357 = load i32, i32* @HADDR, align 4
  %358 = load i32, i32* %11, align 4
  %359 = call i32 @ahd_outq(%struct.ahd_softc* %356, i32 %357, i32 %358)
  %360 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %361 = load i64, i64* @HCNT, align 8
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %364 = and i32 %362, %363
  %365 = call i32 @ahd_outl(%struct.ahd_softc* %360, i64 %361, i32 %364)
  %366 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %367 = load i64, i64* @SG_CACHE_PRE, align 8
  %368 = load i32, i32* %10, align 4
  %369 = and i32 %368, 255
  %370 = call i32 @ahd_outb(%struct.ahd_softc* %366, i64 %367, i32 %369)
  %371 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %372 = load i64, i64* @DFCNTRL, align 8
  %373 = call i32 @ahd_inb(%struct.ahd_softc* %371, i64 %372)
  %374 = load i32, i32* @PRELOADEN, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @HDMAEN, align 4
  %377 = or i32 %375, %376
  store i32 %377, i32* %13, align 4
  %378 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %379 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @AHD_NEW_DFCNTRL_OPTS, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %355
  %385 = load i32, i32* @SCSIENWRDIS, align 4
  %386 = load i32, i32* %13, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %13, align 4
  br label %388

388:                                              ; preds = %384, %355
  %389 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %390 = load i64, i64* @DFCNTRL, align 8
  %391 = load i32, i32* %13, align 4
  %392 = call i32 @ahd_outb(%struct.ahd_softc* %389, i64 %390, i32 %391)
  br label %393

393:                                              ; preds = %388, %272, %265
  br label %437

394:                                              ; preds = %243
  %395 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %396 = load i64, i64* @SG_CACHE_SHADOW, align 8
  %397 = call i32 @ahd_inb(%struct.ahd_softc* %395, i64 %396)
  %398 = load i32, i32* @LAST_SEG_DONE, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %403 = load i64, i64* @SCB_SGPTR, align 8
  %404 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %405 = load i64, i64* @SCB_SGPTR, align 8
  %406 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %404, i64 %405)
  %407 = load i32, i32* @SG_LIST_NULL, align 4
  %408 = or i32 %406, %407
  %409 = call i32 @ahd_outb(%struct.ahd_softc* %402, i64 %403, i32 %408)
  br label %418

410:                                              ; preds = %394
  %411 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %412 = load i64, i64* @DFSTATUS, align 8
  %413 = call i32 @ahd_inb(%struct.ahd_softc* %411, i64 %412)
  %414 = load i32, i32* @FIFOEMP, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %435

417:                                              ; preds = %410
  br label %418

418:                                              ; preds = %417, %401, %241, %117
  %419 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %420 = load i64, i64* @LONGJMP_ADDR, align 8
  %421 = add nsw i64 %420, 1
  %422 = load i32, i32* @INVALID_ADDR, align 4
  %423 = call i32 @ahd_outb(%struct.ahd_softc* %419, i64 %421, i32 %422)
  %424 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %425 = load i64, i64* @SCB_FIFO_USE_COUNT, align 8
  %426 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %427 = load i64, i64* @SCB_FIFO_USE_COUNT, align 8
  %428 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %426, i64 %427)
  %429 = sub nsw i32 %428, 1
  %430 = call i32 @ahd_outb(%struct.ahd_softc* %424, i64 %425, i32 %429)
  %431 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %432 = load i64, i64* @DFFSXFRCTL, align 8
  %433 = load i32, i32* @CLRCHN, align 4
  %434 = call i32 @ahd_outb(%struct.ahd_softc* %431, i64 %432, i32 %433)
  br label %435

435:                                              ; preds = %418, %410
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436, %393
  br label %438

438:                                              ; preds = %437, %242
  br label %439

439:                                              ; preds = %438, %53
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_inl_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_outq(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inq_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_inl(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inq(%struct.ahd_softc*, i32) #1

declare dso_local i8* @ahd_sg_bus_to_virt(%struct.ahd_softc*, %struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
