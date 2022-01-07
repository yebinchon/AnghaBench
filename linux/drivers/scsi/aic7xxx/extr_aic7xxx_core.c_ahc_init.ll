; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.ahc_softc = type { i32, i32, i32, i32, i32, i32, i32, {}*, %struct.TYPE_6__*, i32, i32*, i32*, %struct.target_cmd*, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.target_cmd = type { i64 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i8*, i8*, i32 }
%struct.ahc_tmode_tstate = type { i64 }

@AHC_USEDEFAULTS = common dso_local global i32 0, align 4
@AHC_INITIATORROLE = common dso_local global i32 0, align 4
@AHC_TMODE_ENABLE = common dso_local global i32 0, align 4
@AHC_TARGETMODE = common dso_local global i32 0, align 4
@AHC_TMODE_CMDS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ahc_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: unable to allocate ahc_tmode_tstate.  Failing attach\0A\00", align 1
@AHC_TWIN = common dso_local global i32 0, align 4
@AHC_SCB_MAX_ALLOC = common dso_local global i64 0, align 8
@AHC_PAGESCBS = common dso_local global i32 0, align 4
@SCSICONF = common dso_local global i32 0, align 4
@RESET_SCSI = common dso_local global i32 0, align 4
@AHC_RESET_BUS_B = common dso_local global i32 0, align 4
@AHC_RESET_BUS_A = common dso_local global i32 0, align 4
@ALL_TARGETS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"%s: Host Adapter Bios disabled.  Using default SCSI device parameters\0A\00", align 1
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_B = common dso_local global i32 0, align 4
@AHC_TERM_ENB_A = common dso_local global i32 0, align 4
@AHC_TERM_ENB_B = common dso_local global i32 0, align 4
@AHC_ULTRA = common dso_local global i32 0, align 4
@DISC_DSB = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@ULTRA_ENB = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i8* null, align 8
@ahc_syncrates = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_OFFSET = common dso_local global i8* null, align 8
@TARG_SCSIRATE = common dso_local global i32 0, align 4
@SOFS = common dso_local global i32 0, align 4
@SXFR = common dso_local global i32 0, align 4
@WIDEXFER = common dso_local global i32 0, align 4
@MAX_OFFSET_ULTRA2 = common dso_local global i32 0, align 4
@TARG_OFFSET = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@AHC_SYNCRATE_DT = common dso_local global i32 0, align 4
@SXFR_ULTRA2 = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_FAST = common dso_local global i32 0, align 4
@AHC_DEBUG_SEQUENCER = common dso_local global i32 0, align 4
@AHC_MORE_SRAM = common dso_local global i32 0, align 4
@AHC_SEQUENCER_DEBUG = common dso_local global i32 0, align 4
@AHC_SHOW_MISC = common dso_local global i32 0, align 4
@CLRBRKADRINT = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRPARERR = common dso_local global i32 0, align 4
@ahc_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_init(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ahc_initiator_tinfo*, align 8
  %12 = alloca %struct.ahc_tmode_tstate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 15, i32* %4, align 4
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 3
  store i32 7, i32* %28, align 4
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 2
  store i32 7, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @AHC_INITIATORROLE, align 4
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @AHC_TMODE_ENABLE, align 4
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = and i32 %37, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i32, i32* @AHC_TARGETMODE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %31
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  store i64 2048, i64* %10, align 8
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AHC_TARGETMODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @AHC_TMODE_CMDS, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = add i64 %65, 1
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %62, %51
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %75 = add nsw i64 %74, 1
  %76 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %77 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 16
  %82 = call i64 @ahc_dma_tag_create(%struct.ahc_softc* %70, i32 %73, i32 1, i64 %75, i64 %76, i32 %77, i32* null, i32* null, i64 %78, i32 1, i32 %79, i32 0, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %679

86:                                               ; preds = %69
  %87 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %92 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %92, i32 0, i32 16
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %95, i32 0, i32 10
  %97 = bitcast i32** %96 to i8**
  %98 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %99, i32 0, i32 15
  %101 = call i64 @ahc_dmamem_alloc(%struct.ahc_softc* %91, i32 %94, i8** %97, i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %2, align 4
  br label %679

105:                                              ; preds = %86
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 16
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %114, i32 0, i32 15
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %117, i32 0, i32 10
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* @ahc_dmamap_cb, align 4
  %122 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %122, i32 0, i32 13
  %124 = call i32 @ahc_dmamap_load(%struct.ahc_softc* %110, i32 %113, i32 %116, i32* %119, i64 %120, i32 %121, i64* %123, i32 0)
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AHC_TARGETMODE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %181

131:                                              ; preds = %105
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %132, i32 0, i32 10
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to %struct.target_cmd*
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %137 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %136, i32 0, i32 12
  store %struct.target_cmd* %135, %struct.target_cmd** %137, align 8
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %138, i32 0, i32 12
  %140 = load %struct.target_cmd*, %struct.target_cmd** %139, align 8
  %141 = load i32, i32* @AHC_TMODE_CMDS, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %140, i64 %142
  %144 = bitcast %struct.target_cmd* %143 to i32*
  %145 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %146 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %145, i32 0, i32 10
  store i32* %144, i32** %146, align 8
  %147 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %147, i32 0, i32 13
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %149, %150
  %152 = sub i64 %151, 1
  %153 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %153, i32 0, i32 14
  store i64 %152, i64* %154, align 8
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %167, %131
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @AHC_TMODE_CMDS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %160, i32 0, i32 12
  %162 = load %struct.target_cmd*, %struct.target_cmd** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %162, i64 %164
  %166 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %159
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %155

170:                                              ; preds = %155
  %171 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %172 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %173 = call i32 @ahc_sync_tqinfifo(%struct.ahc_softc* %171, i32 %172)
  %174 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %175 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %174, i32 0, i32 12
  %176 = load %struct.target_cmd*, %struct.target_cmd** %175, align 8
  %177 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %176, i64 256
  %178 = bitcast %struct.target_cmd* %177 to i32*
  %179 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %179, i32 0, i32 10
  store i32* %178, i32** %180, align 8
  br label %181

181:                                              ; preds = %170, %105
  %182 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %183 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 256
  %186 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %187 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %186, i32 0, i32 11
  store i32* %185, i32** %187, align 8
  %188 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %193 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %192, i32 0, i32 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %181
  %199 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %200 = call i64 @ahc_init_scbdata(%struct.ahc_softc* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* @ENOMEM, align 4
  store i32 %203, i32* %2, align 4
  br label %679

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %181
  %206 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %207 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %208 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32* @ahc_alloc_tstate(%struct.ahc_softc* %206, i32 %209, i8 signext 65)
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %214 = call i32 @ahc_name(%struct.ahc_softc* %213)
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @ENOMEM, align 4
  store i32 %216, i32* %2, align 4
  br label %679

217:                                              ; preds = %205
  %218 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %219 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @AHC_TWIN, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %217
  %225 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %226 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %227 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32* @ahc_alloc_tstate(%struct.ahc_softc* %225, i32 %228, i8 signext 66)
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %224
  %232 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %233 = call i32 @ahc_name(%struct.ahc_softc* %232)
  %234 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ENOMEM, align 4
  store i32 %235, i32* %2, align 4
  br label %679

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236, %217
  %238 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %239 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %238, i32 0, i32 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @AHC_SCB_MAX_ALLOC, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %237
  %246 = load i32, i32* @AHC_PAGESCBS, align 4
  %247 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %248 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %258

251:                                              ; preds = %237
  %252 = load i32, i32* @AHC_PAGESCBS, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %255 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %251, %245
  %259 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %260 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @AHC_TWIN, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %288

265:                                              ; preds = %258
  %266 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %267 = load i32, i32* @SCSICONF, align 4
  %268 = add nsw i32 %267, 1
  %269 = call i32 @ahc_inb(%struct.ahc_softc* %266, i32 %268)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @RESET_SCSI, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %265
  %275 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %276 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @AHC_INITIATORROLE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = load i32, i32* @AHC_RESET_BUS_B, align 4
  %283 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %284 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %281, %274, %265
  br label %288

288:                                              ; preds = %287, %258
  %289 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %290 = load i32, i32* @SCSICONF, align 4
  %291 = call i32 @ahc_inb(%struct.ahc_softc* %289, i32 %290)
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @RESET_SCSI, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %288
  %297 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %298 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @AHC_INITIATORROLE, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %296
  %304 = load i32, i32* @AHC_RESET_BUS_A, align 4
  %305 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %306 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %303, %296, %288
  store i32 0, i32* %7, align 4
  %310 = load i32, i32* @ALL_TARGETS_MASK, align 4
  store i32 %310, i32* %9, align 4
  %311 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %312 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %342

317:                                              ; preds = %309
  %318 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %319 = call i32 @ahc_name(%struct.ahc_softc* %318)
  %320 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %322 = load i32, i32* @AHC_EXTENDED_TRANS_B, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @AHC_TERM_ENB_B, align 4
  %327 = or i32 %325, %326
  %328 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %329 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load i32, i32* @ALL_TARGETS_MASK, align 4
  store i32 %332, i32* %8, align 4
  %333 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %334 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @AHC_ULTRA, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %317
  %340 = load i32, i32* @ALL_TARGETS_MASK, align 4
  store i32 %340, i32* %7, align 4
  br label %341

341:                                              ; preds = %339, %317
  br label %372

342:                                              ; preds = %309
  %343 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %344 = load i32, i32* @DISC_DSB, align 4
  %345 = add nsw i32 %344, 1
  %346 = call i32 @ahc_inb(%struct.ahc_softc* %343, i32 %345)
  %347 = shl i32 %346, 8
  %348 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %349 = load i32, i32* @DISC_DSB, align 4
  %350 = call i32 @ahc_inb(%struct.ahc_softc* %348, i32 %349)
  %351 = or i32 %347, %350
  %352 = xor i32 %351, -1
  store i32 %352, i32* %8, align 4
  %353 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %354 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @AHC_ULTRA, align 4
  %357 = load i32, i32* @AHC_ULTRA2, align 4
  %358 = or i32 %356, %357
  %359 = and i32 %355, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %342
  %362 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %363 = load i32, i32* @ULTRA_ENB, align 4
  %364 = add nsw i32 %363, 1
  %365 = call i32 @ahc_inb(%struct.ahc_softc* %362, i32 %364)
  %366 = shl i32 %365, 8
  %367 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %368 = load i32, i32* @ULTRA_ENB, align 4
  %369 = call i32 @ahc_inb(%struct.ahc_softc* %367, i32 %368)
  %370 = or i32 %366, %369
  store i32 %370, i32* %7, align 4
  br label %371

371:                                              ; preds = %361, %342
  br label %372

372:                                              ; preds = %371, %341
  %373 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %374 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @AHC_WIDE, align 4
  %377 = load i32, i32* @AHC_TWIN, align 4
  %378 = or i32 %376, %377
  %379 = and i32 %375, %378
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %372
  store i32 7, i32* %4, align 4
  br label %382

382:                                              ; preds = %381, %372
  store i32 0, i32* %5, align 4
  br label %383

383:                                              ; preds = %663, %382
  %384 = load i32, i32* %5, align 4
  %385 = load i32, i32* %4, align 4
  %386 = icmp sle i32 %384, %385
  br i1 %386, label %387, label %666

387:                                              ; preds = %383
  store i8 65, i8* %15, align 1
  %388 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %389 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  store i32 %390, i32* %13, align 4
  %391 = load i32, i32* %5, align 4
  store i32 %391, i32* %14, align 4
  %392 = load i32, i32* %5, align 4
  %393 = icmp sgt i32 %392, 7
  br i1 %393, label %394, label %407

394:                                              ; preds = %387
  %395 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %396 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @AHC_TWIN, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %394
  store i8 66, i8* %15, align 1
  %402 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %403 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %13, align 4
  %405 = load i32, i32* %5, align 4
  %406 = srem i32 %405, 8
  store i32 %406, i32* %14, align 4
  br label %407

407:                                              ; preds = %401, %394, %387
  %408 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %409 = load i8, i8* %15, align 1
  %410 = load i32, i32* %13, align 4
  %411 = load i32, i32* %14, align 4
  %412 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %408, i8 signext %409, i32 %410, i32 %411, %struct.ahc_tmode_tstate** %12)
  store %struct.ahc_initiator_tinfo* %412, %struct.ahc_initiator_tinfo** %11, align 8
  %413 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %414 = call i32 @memset(%struct.ahc_initiator_tinfo* %413, i32 0, i32 56)
  %415 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %416 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %444

421:                                              ; preds = %407
  %422 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %423 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @AHC_WIDE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %421
  %429 = load i8*, i8** @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %430 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %431 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 3
  store i8* %429, i8** %432, align 8
  br label %433

433:                                              ; preds = %428, %421
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ahc_syncrates, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %438 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 0
  store i64 %436, i64* %439, align 8
  %440 = load i8*, i8** @MAX_OFFSET, align 8
  %441 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %442 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %441, i32 0, i32 2
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 4
  store i8* %440, i8** %443, align 8
  br label %660

444:                                              ; preds = %407
  %445 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %446 = load i32, i32* @TARG_SCSIRATE, align 4
  %447 = load i32, i32* %5, align 4
  %448 = add nsw i32 %446, %447
  %449 = call i32 @ahc_inb(%struct.ahc_softc* %445, i32 %448)
  store i32 %449, i32* %16, align 4
  %450 = load i32, i32* %5, align 4
  %451 = shl i32 1, %450
  store i32 %451, i32* %17, align 4
  %452 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %453 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @AHC_ULTRA2, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %548

458:                                              ; preds = %444
  %459 = load i32, i32* %16, align 4
  %460 = load i32, i32* @SOFS, align 4
  %461 = and i32 %459, %460
  %462 = icmp eq i32 %461, 15
  br i1 %462, label %463, label %482

463:                                              ; preds = %458
  %464 = load i32, i32* %16, align 4
  %465 = load i32, i32* @SXFR, align 4
  %466 = and i32 %464, %465
  %467 = ashr i32 %466, 4
  %468 = load i32, i32* %7, align 4
  %469 = load i32, i32* %17, align 4
  %470 = and i32 %468, %469
  %471 = or i32 %467, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %463
  br label %479

474:                                              ; preds = %463
  %475 = load i32, i32* %16, align 4
  %476 = load i32, i32* @WIDEXFER, align 4
  %477 = and i32 %475, %476
  %478 = or i32 0, %477
  br label %479

479:                                              ; preds = %474, %473
  %480 = phi i32 [ 8, %473 ], [ %478, %474 ]
  store i32 %480, i32* %16, align 4
  %481 = load i32, i32* @MAX_OFFSET_ULTRA2, align 4
  store i32 %481, i32* %18, align 4
  br label %488

482:                                              ; preds = %458
  %483 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %484 = load i32, i32* @TARG_OFFSET, align 4
  %485 = load i32, i32* %5, align 4
  %486 = add nsw i32 %484, %485
  %487 = call i32 @ahc_inb(%struct.ahc_softc* %483, i32 %486)
  store i32 %487, i32* %18, align 4
  br label %488

488:                                              ; preds = %482, %479
  %489 = load i32, i32* %16, align 4
  %490 = load i32, i32* @WIDEXFER, align 4
  %491 = xor i32 %490, -1
  %492 = and i32 %489, %491
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %488
  %495 = load i32, i32* %18, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %494
  %498 = load i32, i32* %16, align 4
  %499 = or i32 %498, 28
  store i32 %499, i32* %16, align 4
  br label %500

500:                                              ; preds = %497, %494, %488
  %501 = load i32, i32* @AHC_SYNCRATE_ULTRA2, align 4
  store i32 %501, i32* %19, align 4
  %502 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %503 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @AHC_DT, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %500
  %509 = load i32, i32* @AHC_SYNCRATE_DT, align 4
  store i32 %509, i32* %19, align 4
  br label %510

510:                                              ; preds = %508, %500
  %511 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %512 = load i32, i32* %16, align 4
  %513 = load i32, i32* %19, align 4
  %514 = call i8* @ahc_find_period(%struct.ahc_softc* %511, i32 %512, i32 %513)
  %515 = ptrtoint i8* %514 to i64
  %516 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %517 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 0
  store i64 %515, i64* %518, align 8
  %519 = load i32, i32* %18, align 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %525

521:                                              ; preds = %510
  %522 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %523 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 0
  store i64 0, i64* %524, align 8
  br label %530

525:                                              ; preds = %510
  %526 = load i8*, i8** @MAX_OFFSET, align 8
  %527 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %528 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %528, i32 0, i32 4
  store i8* %526, i8** %529, align 8
  br label %530

530:                                              ; preds = %525, %521
  %531 = load i32, i32* %16, align 4
  %532 = load i32, i32* @SXFR_ULTRA2, align 4
  %533 = and i32 %531, %532
  %534 = icmp sle i32 %533, 8
  br i1 %534, label %535, label %547

535:                                              ; preds = %530
  %536 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %537 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @AHC_DT, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %535
  %543 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %544 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %545 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 5
  store i32 %543, i32* %546, align 8
  br label %547

547:                                              ; preds = %542, %535, %530
  br label %602

548:                                              ; preds = %444
  %549 = load i32, i32* %16, align 4
  %550 = load i32, i32* @SOFS, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %601

553:                                              ; preds = %548
  %554 = load i32, i32* %16, align 4
  %555 = load i32, i32* @SXFR, align 4
  %556 = and i32 %554, %555
  %557 = icmp eq i32 %556, 64
  br i1 %557, label %558, label %572

558:                                              ; preds = %553
  %559 = load i32, i32* %7, align 4
  %560 = load i32, i32* %17, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %572

563:                                              ; preds = %558
  %564 = load i32, i32* @SXFR, align 4
  %565 = xor i32 %564, -1
  %566 = load i32, i32* %16, align 4
  %567 = and i32 %566, %565
  store i32 %567, i32* %16, align 4
  %568 = load i32, i32* %17, align 4
  %569 = xor i32 %568, -1
  %570 = load i32, i32* %7, align 4
  %571 = and i32 %570, %569
  store i32 %571, i32* %7, align 4
  br label %572

572:                                              ; preds = %563, %558, %553
  %573 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %574 = load i32, i32* %16, align 4
  %575 = load i32, i32* %7, align 4
  %576 = load i32, i32* %17, align 4
  %577 = and i32 %575, %576
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %581

579:                                              ; preds = %572
  %580 = load i32, i32* @AHC_SYNCRATE_ULTRA, align 4
  br label %583

581:                                              ; preds = %572
  %582 = load i32, i32* @AHC_SYNCRATE_FAST, align 4
  br label %583

583:                                              ; preds = %581, %579
  %584 = phi i32 [ %580, %579 ], [ %582, %581 ]
  %585 = call i8* @ahc_find_period(%struct.ahc_softc* %573, i32 %574, i32 %584)
  %586 = ptrtoint i8* %585 to i64
  %587 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %588 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %588, i32 0, i32 0
  store i64 %586, i64* %589, align 8
  %590 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %591 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %600

595:                                              ; preds = %583
  %596 = load i8*, i8** @MAX_OFFSET, align 8
  %597 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %598 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %597, i32 0, i32 2
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 4
  store i8* %596, i8** %599, align 8
  br label %600

600:                                              ; preds = %595, %583
  br label %601

601:                                              ; preds = %600, %548
  br label %602

602:                                              ; preds = %601, %547
  %603 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %604 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %612

608:                                              ; preds = %602
  %609 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %610 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 4
  store i8* null, i8** %611, align 8
  br label %612

612:                                              ; preds = %608, %602
  %613 = load i32, i32* %16, align 4
  %614 = load i32, i32* @WIDEXFER, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %629

617:                                              ; preds = %612
  %618 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %619 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 4
  %621 = load i32, i32* @AHC_WIDE, align 4
  %622 = and i32 %620, %621
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %629

624:                                              ; preds = %617
  %625 = load i8*, i8** @MSG_EXT_WDTR_BUS_16_BIT, align 8
  %626 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %627 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %627, i32 0, i32 3
  store i8* %625, i8** %628, align 8
  br label %629

629:                                              ; preds = %624, %617, %612
  %630 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %631 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %630, i32 0, i32 2
  %632 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %631, i32 0, i32 1
  store i32 4, i32* %632, align 8
  %633 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %634 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* @AHC_DT, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %643

639:                                              ; preds = %629
  %640 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %641 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %640, i32 0, i32 2
  %642 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %641, i32 0, i32 2
  store i32 3, i32* %642, align 4
  br label %647

643:                                              ; preds = %629
  %644 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %645 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %644, i32 0, i32 2
  %646 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %645, i32 0, i32 2
  store i32 2, i32* %646, align 4
  br label %647

647:                                              ; preds = %643, %639
  %648 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %649 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %649, i32 0, i32 0
  store i32 2, i32* %650, align 8
  %651 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %652 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %652, i32 0, i32 1
  store i32 2, i32* %653, align 4
  %654 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %655 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %655, i32 0, i32 0
  store i32 2, i32* %656, align 8
  %657 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %11, align 8
  %658 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %658, i32 0, i32 1
  store i32 2, i32* %659, align 4
  br label %660

660:                                              ; preds = %647, %433
  %661 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %12, align 8
  %662 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %661, i32 0, i32 0
  store i64 0, i64* %662, align 8
  br label %663

663:                                              ; preds = %660
  %664 = load i32, i32* %5, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %5, align 4
  br label %383

666:                                              ; preds = %383
  %667 = load i32, i32* %8, align 4
  %668 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %669 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %668, i32 0, i32 5
  store i32 %667, i32* %669, align 4
  %670 = load i32, i32* %9, align 4
  %671 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %672 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %671, i32 0, i32 6
  store i32 %670, i32* %672, align 8
  %673 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %674 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %673, i32 0, i32 7
  %675 = bitcast {}** %674 to i32 (%struct.ahc_softc*)**
  %676 = load i32 (%struct.ahc_softc*)*, i32 (%struct.ahc_softc*)** %675, align 8
  %677 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %678 = call i32 %676(%struct.ahc_softc* %677)
  store i32 %678, i32* %2, align 4
  br label %679

679:                                              ; preds = %666, %231, %212, %202, %103, %84
  %680 = load i32, i32* %2, align 4
  ret i32 %680
}

declare dso_local i64 @ahc_dma_tag_create(%struct.ahc_softc*, i32, i32, i64, i64, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @ahc_dmamem_alloc(%struct.ahc_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @ahc_dmamap_load(%struct.ahc_softc*, i32, i32, i32*, i64, i32, i64*, i32) #1

declare dso_local i32 @ahc_sync_tqinfifo(%struct.ahc_softc*, i32) #1

declare dso_local i64 @ahc_init_scbdata(%struct.ahc_softc*) #1

declare dso_local i32* @ahc_alloc_tstate(%struct.ahc_softc*, i32, i8 signext) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i8 signext, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @memset(%struct.ahc_initiator_tinfo*, i32, i32) #1

declare dso_local i8* @ahc_find_period(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
