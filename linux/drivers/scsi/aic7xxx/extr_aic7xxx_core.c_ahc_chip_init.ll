; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SEQ_FLAGS = common dso_local global i64 0, align 8
@SEQ_FLAGS2 = common dso_local global i64 0, align 8
@AHC_TWIN = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i64 0, align 8
@SELBUSB = common dso_local global i32 0, align 4
@AHC_TERM_ENB_B = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@SCSIID = common dso_local global i64 0, align 8
@SCSICONF = common dso_local global i64 0, align 8
@SXFRCTL1 = common dso_local global i64 0, align 8
@ENSPCHK = common dso_local global i32 0, align 4
@STIMESEL = common dso_local global i32 0, align 4
@ENSTIMER = common dso_local global i32 0, align 4
@ACTNEGEN = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i64 0, align 8
@ENIOERR = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i64 0, align 8
@ENSELTIMO = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@ENSCSIPERR = common dso_local global i32 0, align 4
@SXFRCTL0 = common dso_local global i64 0, align 8
@DFON = common dso_local global i32 0, align 4
@SPIOEN = common dso_local global i32 0, align 4
@AHC_TERM_ENB_A = common dso_local global i32 0, align 4
@SCSIID_ULTRA2 = common dso_local global i64 0, align 8
@AHC_SCB_BTT = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AHC_MULTI_TID = common dso_local global i32 0, align 4
@TARGID = common dso_local global i64 0, align 8
@HSCB_ADDR = common dso_local global i64 0, align 8
@SHARED_DATA_ADDR = common dso_local global i64 0, align 8
@CMDSIZE_TABLE = common dso_local global i64 0, align 8
@AHC_HS_MAILBOX = common dso_local global i32 0, align 4
@HS_MAILBOX = common dso_local global i64 0, align 8
@AHC_TARGETMODE = common dso_local global i32 0, align 4
@KERNEL_TQINPOS = common dso_local global i64 0, align 8
@TQINPOS = common dso_local global i64 0, align 8
@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@QOFF_CTLSTA = common dso_local global i64 0, align 8
@SCB_QSIZE_256 = common dso_local global i32 0, align 4
@HNSCB_QOFF = common dso_local global i64 0, align 8
@SNSCB_QOFF = common dso_local global i64 0, align 8
@SDSCB_QOFF = common dso_local global i64 0, align 8
@KERNEL_QINPOS = common dso_local global i64 0, align 8
@QINPOS = common dso_local global i64 0, align 8
@QOUTPOS = common dso_local global i64 0, align 8
@WAITING_SCBH = common dso_local global i64 0, align 8
@DISCONNECTED_SCBH = common dso_local global i64 0, align 8
@MSG_OUT = common dso_local global i64 0, align 8
@MSG_NOOP = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@ENAUTOATNO = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@AHC_INITIATORROLE = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@SCSISEQ_TEMPLATE = common dso_local global i64 0, align 8
@NEXT_QUEUED_SCB = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: Downloading Sequencer Program...\00", align 1
@ENAB40 = common dso_local global i32 0, align 4
@ENAB20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_chip_init(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = load i64, i64* @SEQ_FLAGS, align 8
  %14 = call i32 @ahc_outb(%struct.ahc_softc* %12, i64 %13, i32 0)
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %16 = load i64, i64* @SEQ_FLAGS2, align 8
  %17 = call i32 @ahc_outb(%struct.ahc_softc* %15, i64 %16, i32 0)
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AHC_TWIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %1
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %26 = load i64, i64* @SBLKCTL, align 8
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %28 = load i64, i64* @SBLKCTL, align 8
  %29 = call i32 @ahc_inb(%struct.ahc_softc* %27, i64 %28)
  %30 = load i32, i32* @SELBUSB, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ahc_outb(%struct.ahc_softc* %25, i64 %26, i32 %31)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AHC_TERM_ENB_B, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @STPWEN, align 4
  br label %42

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %45 = load i64, i64* @SCSIID, align 8
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ahc_outb(%struct.ahc_softc* %44, i64 %45, i32 %48)
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %51 = load i64, i64* @SCSICONF, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @ahc_inb(%struct.ahc_softc* %50, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %55 = load i64, i64* @SXFRCTL1, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ENSPCHK, align 4
  %58 = load i32, i32* @STIMESEL, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = load i32, i32* @ENSTIMER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ACTNEGEN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ahc_outb(%struct.ahc_softc* %54, i64 %55, i32 %70)
  %72 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @AHC_ULTRA2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %42
  %79 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %80 = load i64, i64* @SIMODE0, align 8
  %81 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %82 = load i64, i64* @SIMODE0, align 8
  %83 = call i32 @ahc_inb(%struct.ahc_softc* %81, i64 %82)
  %84 = load i32, i32* @ENIOERR, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @ahc_outb(%struct.ahc_softc* %79, i64 %80, i32 %85)
  br label %87

87:                                               ; preds = %78, %42
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %89 = load i64, i64* @SIMODE1, align 8
  %90 = load i32, i32* @ENSELTIMO, align 4
  %91 = load i32, i32* @ENSCSIRST, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ENSCSIPERR, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @ahc_outb(%struct.ahc_softc* %88, i64 %89, i32 %94)
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %97 = load i64, i64* @SXFRCTL0, align 8
  %98 = load i32, i32* @DFON, align 4
  %99 = load i32, i32* @SPIOEN, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ahc_outb(%struct.ahc_softc* %96, i64 %97, i32 %100)
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %103 = load i64, i64* @SBLKCTL, align 8
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %105 = load i64, i64* @SBLKCTL, align 8
  %106 = call i32 @ahc_inb(%struct.ahc_softc* %104, i64 %105)
  %107 = load i32, i32* @SELBUSB, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @ahc_outb(%struct.ahc_softc* %102, i64 %103, i32 %109)
  br label %111

111:                                              ; preds = %87, %1
  %112 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @STPWEN, align 4
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  store i32 %122, i32* %4, align 4
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AHC_ULTRA2, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %131 = load i64, i64* @SCSIID_ULTRA2, align 8
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ahc_outb(%struct.ahc_softc* %130, i64 %131, i32 %134)
  br label %143

136:                                              ; preds = %121
  %137 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %138 = load i64, i64* @SCSIID, align 8
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ahc_outb(%struct.ahc_softc* %137, i64 %138, i32 %141)
  br label %143

143:                                              ; preds = %136, %129
  %144 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %145 = load i64, i64* @SCSICONF, align 8
  %146 = call i32 @ahc_inb(%struct.ahc_softc* %144, i64 %145)
  store i32 %146, i32* %7, align 4
  %147 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %148 = load i64, i64* @SXFRCTL1, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ENSPCHK, align 4
  %151 = load i32, i32* @STIMESEL, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %149, %152
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %157 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %155, %158
  %160 = load i32, i32* @ENSTIMER, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @ACTNEGEN, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @ahc_outb(%struct.ahc_softc* %147, i64 %148, i32 %163)
  %165 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %166 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @AHC_ULTRA2, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %143
  %172 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %173 = load i64, i64* @SIMODE0, align 8
  %174 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %175 = load i64, i64* @SIMODE0, align 8
  %176 = call i32 @ahc_inb(%struct.ahc_softc* %174, i64 %175)
  %177 = load i32, i32* @ENIOERR, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @ahc_outb(%struct.ahc_softc* %172, i64 %173, i32 %178)
  br label %180

180:                                              ; preds = %171, %143
  %181 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %182 = load i64, i64* @SIMODE1, align 8
  %183 = load i32, i32* @ENSELTIMO, align 4
  %184 = load i32, i32* @ENSCSIRST, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @ENSCSIPERR, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @ahc_outb(%struct.ahc_softc* %181, i64 %182, i32 %187)
  %189 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %190 = load i64, i64* @SXFRCTL0, align 8
  %191 = load i32, i32* @DFON, align 4
  %192 = load i32, i32* @SPIOEN, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @ahc_outb(%struct.ahc_softc* %189, i64 %190, i32 %193)
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %227, %180
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 16
  br i1 %197, label %198, label %230

198:                                              ; preds = %195
  %199 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %200 = load i32, i32* %6, align 4
  %201 = shl i32 %200, 4
  %202 = call i32 @BUILD_TCL(i32 %201, i32 0)
  %203 = call i32 @ahc_unbusy_tcl(%struct.ahc_softc* %199, i32 %202)
  %204 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %205 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @AHC_SCB_BTT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  br label %211

211:                                              ; preds = %222, %210
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @AHC_NUM_LUNS, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %217 = load i32, i32* %6, align 4
  %218 = shl i32 %217, 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @BUILD_TCL(i32 %218, i32 %219)
  %221 = call i32 @ahc_unbusy_tcl(%struct.ahc_softc* %216, i32 %220)
  br label %222

222:                                              ; preds = %215
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %211

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %198
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %195

230:                                              ; preds = %195
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %242, %230
  %232 = load i32, i32* %6, align 4
  %233 = icmp slt i32 %232, 256
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i32, i32* @SCB_LIST_NULL, align 4
  %236 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %237 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %236, i32 0, i32 6
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %235, i32* %241, align 4
  br label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %231

245:                                              ; preds = %231
  %246 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %247 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %248 = call i32 @ahc_sync_qoutfifo(%struct.ahc_softc* %246, i32 %247)
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %260, %245
  %250 = load i32, i32* %6, align 4
  %251 = icmp slt i32 %250, 256
  br i1 %251, label %252, label %263

252:                                              ; preds = %249
  %253 = load i32, i32* @SCB_LIST_NULL, align 4
  %254 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %255 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %254, i32 0, i32 7
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %253, i32* %259, align 4
  br label %260

260:                                              ; preds = %252
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %249

263:                                              ; preds = %249
  %264 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %265 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @AHC_MULTI_TID, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %263
  %271 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %272 = load i64, i64* @TARGID, align 8
  %273 = call i32 @ahc_outb(%struct.ahc_softc* %271, i64 %272, i32 0)
  %274 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %275 = load i64, i64* @TARGID, align 8
  %276 = add nsw i64 %275, 1
  %277 = call i32 @ahc_outb(%struct.ahc_softc* %274, i64 %276, i32 0)
  br label %278

278:                                              ; preds = %270, %263
  %279 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %280 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %279, i32 0, i32 13
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %9, align 4
  %284 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %285 = load i64, i64* @HSCB_ADDR, align 8
  %286 = load i32, i32* %9, align 4
  %287 = and i32 %286, 255
  %288 = call i32 @ahc_outb(%struct.ahc_softc* %284, i64 %285, i32 %287)
  %289 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %290 = load i64, i64* @HSCB_ADDR, align 8
  %291 = add nsw i64 %290, 1
  %292 = load i32, i32* %9, align 4
  %293 = ashr i32 %292, 8
  %294 = and i32 %293, 255
  %295 = call i32 @ahc_outb(%struct.ahc_softc* %289, i64 %291, i32 %294)
  %296 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %297 = load i64, i64* @HSCB_ADDR, align 8
  %298 = add nsw i64 %297, 2
  %299 = load i32, i32* %9, align 4
  %300 = ashr i32 %299, 16
  %301 = and i32 %300, 255
  %302 = call i32 @ahc_outb(%struct.ahc_softc* %296, i64 %298, i32 %301)
  %303 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %304 = load i64, i64* @HSCB_ADDR, align 8
  %305 = add nsw i64 %304, 3
  %306 = load i32, i32* %9, align 4
  %307 = ashr i32 %306, 24
  %308 = and i32 %307, 255
  %309 = call i32 @ahc_outb(%struct.ahc_softc* %303, i64 %305, i32 %308)
  %310 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %311 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  store i32 %312, i32* %9, align 4
  %313 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %314 = load i64, i64* @SHARED_DATA_ADDR, align 8
  %315 = load i32, i32* %9, align 4
  %316 = and i32 %315, 255
  %317 = call i32 @ahc_outb(%struct.ahc_softc* %313, i64 %314, i32 %316)
  %318 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %319 = load i64, i64* @SHARED_DATA_ADDR, align 8
  %320 = add nsw i64 %319, 1
  %321 = load i32, i32* %9, align 4
  %322 = ashr i32 %321, 8
  %323 = and i32 %322, 255
  %324 = call i32 @ahc_outb(%struct.ahc_softc* %318, i64 %320, i32 %323)
  %325 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %326 = load i64, i64* @SHARED_DATA_ADDR, align 8
  %327 = add nsw i64 %326, 2
  %328 = load i32, i32* %9, align 4
  %329 = ashr i32 %328, 16
  %330 = and i32 %329, 255
  %331 = call i32 @ahc_outb(%struct.ahc_softc* %325, i64 %327, i32 %330)
  %332 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %333 = load i64, i64* @SHARED_DATA_ADDR, align 8
  %334 = add nsw i64 %333, 3
  %335 = load i32, i32* %9, align 4
  %336 = ashr i32 %335, 24
  %337 = and i32 %336, 255
  %338 = call i32 @ahc_outb(%struct.ahc_softc* %332, i64 %334, i32 %337)
  %339 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %340 = load i64, i64* @CMDSIZE_TABLE, align 8
  %341 = call i32 @ahc_outb(%struct.ahc_softc* %339, i64 %340, i32 5)
  %342 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %343 = load i64, i64* @CMDSIZE_TABLE, align 8
  %344 = add nsw i64 %343, 1
  %345 = call i32 @ahc_outb(%struct.ahc_softc* %342, i64 %344, i32 9)
  %346 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %347 = load i64, i64* @CMDSIZE_TABLE, align 8
  %348 = add nsw i64 %347, 2
  %349 = call i32 @ahc_outb(%struct.ahc_softc* %346, i64 %348, i32 9)
  %350 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %351 = load i64, i64* @CMDSIZE_TABLE, align 8
  %352 = add nsw i64 %351, 3
  %353 = call i32 @ahc_outb(%struct.ahc_softc* %350, i64 %352, i32 0)
  %354 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %355 = load i64, i64* @CMDSIZE_TABLE, align 8
  %356 = add nsw i64 %355, 4
  %357 = call i32 @ahc_outb(%struct.ahc_softc* %354, i64 %356, i32 15)
  %358 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %359 = load i64, i64* @CMDSIZE_TABLE, align 8
  %360 = add nsw i64 %359, 5
  %361 = call i32 @ahc_outb(%struct.ahc_softc* %358, i64 %360, i32 11)
  %362 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %363 = load i64, i64* @CMDSIZE_TABLE, align 8
  %364 = add nsw i64 %363, 6
  %365 = call i32 @ahc_outb(%struct.ahc_softc* %362, i64 %364, i32 0)
  %366 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %367 = load i64, i64* @CMDSIZE_TABLE, align 8
  %368 = add nsw i64 %367, 7
  %369 = call i32 @ahc_outb(%struct.ahc_softc* %366, i64 %368, i32 0)
  %370 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %371 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @AHC_HS_MAILBOX, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %278
  %377 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %378 = load i64, i64* @HS_MAILBOX, align 8
  %379 = call i32 @ahc_outb(%struct.ahc_softc* %377, i64 %378, i32 0)
  br label %380

380:                                              ; preds = %376, %278
  %381 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %382 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @AHC_TARGETMODE, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %403

387:                                              ; preds = %380
  %388 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %389 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %388, i32 0, i32 9
  store i32 1, i32* %389, align 4
  %390 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %391 = load i64, i64* @KERNEL_TQINPOS, align 8
  %392 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %393 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %392, i32 0, i32 9
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, 1
  %396 = call i32 @ahc_outb(%struct.ahc_softc* %390, i64 %391, i32 %395)
  %397 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %398 = load i64, i64* @TQINPOS, align 8
  %399 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %400 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %399, i32 0, i32 9
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @ahc_outb(%struct.ahc_softc* %397, i64 %398, i32 %401)
  br label %403

403:                                              ; preds = %387, %380
  %404 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %405 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %404, i32 0, i32 10
  store i32 0, i32* %405, align 8
  %406 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %407 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %406, i32 0, i32 11
  store i32 0, i32* %407, align 4
  %408 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %409 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %434

414:                                              ; preds = %403
  %415 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %416 = load i64, i64* @QOFF_CTLSTA, align 8
  %417 = load i32, i32* @SCB_QSIZE_256, align 4
  %418 = call i32 @ahc_outb(%struct.ahc_softc* %415, i64 %416, i32 %417)
  %419 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %420 = load i64, i64* @HNSCB_QOFF, align 8
  %421 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %422 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %421, i32 0, i32 10
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @ahc_outb(%struct.ahc_softc* %419, i64 %420, i32 %423)
  %425 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %426 = load i64, i64* @SNSCB_QOFF, align 8
  %427 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %428 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %427, i32 0, i32 10
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @ahc_outb(%struct.ahc_softc* %425, i64 %426, i32 %429)
  %431 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %432 = load i64, i64* @SDSCB_QOFF, align 8
  %433 = call i32 @ahc_outb(%struct.ahc_softc* %431, i64 %432, i32 0)
  br label %453

434:                                              ; preds = %403
  %435 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %436 = load i64, i64* @KERNEL_QINPOS, align 8
  %437 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %438 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %437, i32 0, i32 10
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @ahc_outb(%struct.ahc_softc* %435, i64 %436, i32 %439)
  %441 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %442 = load i64, i64* @QINPOS, align 8
  %443 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %444 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %443, i32 0, i32 10
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @ahc_outb(%struct.ahc_softc* %441, i64 %442, i32 %445)
  %447 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %448 = load i64, i64* @QOUTPOS, align 8
  %449 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %450 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %449, i32 0, i32 11
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @ahc_outb(%struct.ahc_softc* %447, i64 %448, i32 %451)
  br label %453

453:                                              ; preds = %434, %414
  %454 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %455 = load i64, i64* @WAITING_SCBH, align 8
  %456 = load i32, i32* @SCB_LIST_NULL, align 4
  %457 = call i32 @ahc_outb(%struct.ahc_softc* %454, i64 %455, i32 %456)
  %458 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %459 = load i64, i64* @DISCONNECTED_SCBH, align 8
  %460 = load i32, i32* @SCB_LIST_NULL, align 4
  %461 = call i32 @ahc_outb(%struct.ahc_softc* %458, i64 %459, i32 %460)
  %462 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %463 = load i64, i64* @MSG_OUT, align 8
  %464 = load i32, i32* @MSG_NOOP, align 4
  %465 = call i32 @ahc_outb(%struct.ahc_softc* %462, i64 %463, i32 %464)
  %466 = load i32, i32* @ENSELO, align 4
  %467 = load i32, i32* @ENAUTOATNO, align 4
  %468 = or i32 %466, %467
  %469 = load i32, i32* @ENAUTOATNP, align 4
  %470 = or i32 %468, %469
  store i32 %470, i32* %8, align 4
  %471 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %472 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @AHC_INITIATORROLE, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %453
  %478 = load i32, i32* @ENRSELI, align 4
  %479 = load i32, i32* %8, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %8, align 4
  br label %481

481:                                              ; preds = %477, %453
  %482 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %483 = load i64, i64* @SCSISEQ_TEMPLATE, align 8
  %484 = load i32, i32* %8, align 4
  %485 = call i32 @ahc_outb(%struct.ahc_softc* %482, i64 %483, i32 %484)
  %486 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %487 = call i32 @ahc_build_free_scb_list(%struct.ahc_softc* %486)
  %488 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %489 = load i64, i64* @NEXT_QUEUED_SCB, align 8
  %490 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %491 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %490, i32 0, i32 12
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_4__*, %struct.TYPE_4__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @ahc_outb(%struct.ahc_softc* %488, i64 %489, i32 %496)
  %498 = load i64, i64* @bootverbose, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %481
  %501 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %502 = call i32 @ahc_name(%struct.ahc_softc* %501)
  %503 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %502)
  br label %504

504:                                              ; preds = %500, %481
  %505 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %506 = call i32 @ahc_loadseq(%struct.ahc_softc* %505)
  store i32 %506, i32* %5, align 4
  %507 = load i32, i32* %5, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %504
  %510 = load i32, i32* %5, align 4
  store i32 %510, i32* %2, align 4
  br label %542

511:                                              ; preds = %504
  %512 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %513 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @AHC_ULTRA2, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %539

518:                                              ; preds = %511
  store i32 5000, i32* %11, align 4
  br label %519

519:                                              ; preds = %535, %518
  %520 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %521 = load i64, i64* @SBLKCTL, align 8
  %522 = call i32 @ahc_inb(%struct.ahc_softc* %520, i64 %521)
  %523 = load i32, i32* @ENAB40, align 4
  %524 = load i32, i32* @ENAB20, align 4
  %525 = or i32 %523, %524
  %526 = and i32 %522, %525
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %519
  %529 = load i32, i32* %11, align 4
  %530 = icmp ne i32 %529, 0
  br label %531

531:                                              ; preds = %528, %519
  %532 = phi i1 [ false, %519 ], [ %530, %528 ]
  br i1 %532, label %533, label %538

533:                                              ; preds = %531
  %534 = call i32 @ahc_delay(i32 100)
  br label %535

535:                                              ; preds = %533
  %536 = load i32, i32* %11, align 4
  %537 = add nsw i32 %536, -1
  store i32 %537, i32* %11, align 4
  br label %519

538:                                              ; preds = %531
  br label %539

539:                                              ; preds = %538, %511
  %540 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %541 = call i32 @ahc_restart(%struct.ahc_softc* %540)
  store i32 0, i32* %2, align 4
  br label %542

542:                                              ; preds = %539, %509
  %543 = load i32, i32* %2, align 4
  ret i32 %543
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_unbusy_tcl(%struct.ahc_softc*, i32) #1

declare dso_local i32 @BUILD_TCL(i32, i32) #1

declare dso_local i32 @ahc_sync_qoutfifo(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_build_free_scb_list(%struct.ahc_softc*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_loadseq(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_delay(i32) #1

declare dso_local i32 @ahc_restart(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
