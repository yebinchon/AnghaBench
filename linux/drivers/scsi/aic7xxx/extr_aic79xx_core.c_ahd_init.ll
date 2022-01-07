; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32, i32*, i32, i32, %struct.hardware_scb*, %struct.TYPE_2__, %struct.TYPE_2__*, %struct.target_cmd*, %struct.ahd_completion*, i32, i32, i32*, i32 }
%struct.hardware_scb = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.target_cmd = type { i32 }
%struct.ahd_completion = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Hardware SCB size is incorrect\00", align 1
@AHD_INITIATORROLE = common dso_local global i32 0, align 4
@AHD_TMODE_ENABLE = common dso_local global i32 0, align 4
@AHD_TARGETMODE = common dso_local global i32 0, align 4
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@AHD_TMODE_CMDS = common dso_local global i32 0, align 4
@AHD_PKT_BITBUCKET_BUG = common dso_local global i32 0, align 4
@PKT_OVERRUN_BUFSIZE = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_QOUT_SIZE = common dso_local global i64 0, align 8
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@AHD_CURRENT_SENSING = common dso_local global i32 0, align 4
@FLXADDR_ROMSTAT_CURSENSECTL = common dso_local global i32 0, align 4
@CURSENSE_ENB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 1\0A\00", align 1
@FLX_FSTAT_BUSY = common dso_local global i32 0, align 4
@FLXADDR_FLEXSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Timedout during current-sensing test\0A\00", align 1
@FLXADDR_CURRENT_STAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 3\0A\00", align 1
@FLX_CSTAT_MASK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %s Channel %s\0A\00", align 1
@channel_strings = common dso_local global i32* null, align 8
@termstat_strings = common dso_local global i32* null, align 8
@FLX_CSTAT_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [98 x i8] c"%s: WARNING. Termination is not configured correctly.\0A%s: WARNING. SCSI bus operations may FAIL.\0A\00", align 1
@AHD_STAT_UPDATE_US = common dso_local global i32 0, align 4
@AHD_DEBUG_SEQUENCER = common dso_local global i32 0, align 4
@AHD_SEQUENCER_DEBUG = common dso_local global i32 0, align 4
@AHD_SHOW_TERMCTL = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_init(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %16 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = call i32 @ahd_probe_stack_size(%struct.ahd_softc* %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32* @kmalloc_array(i32 %23, i32 4, i32 %24)
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 14
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %28, i32 0, i32 14
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %374

34:                                               ; preds = %1
  %35 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AHD_INITIATORROLE, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @AHD_TMODE_ENABLE, align 4
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %41, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load i32, i32* @AHD_TARGETMODE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %34
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @AHD_SCB_MAX, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = add i64 %62, 4
  store i64 %63, i64* %6, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AHD_TARGETMODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %70, %55
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %83, %76
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %93 = add nsw i64 %92, 1
  %94 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 12
  %100 = call i64 @ahd_dma_tag_create(%struct.ahd_softc* %88, i32 %91, i32 1, i64 %93, i64 %94, i32 %95, i32* null, i32* null, i64 %96, i32 1, i32 %97, i32 0, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %374

104:                                              ; preds = %87
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = bitcast i64* %115 to i8**
  %117 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %109, i32 %112, i8** %116, i32 %117, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = load i32, i32* @ENOMEM, align 4
  store i32 %124, i32* %2, align 4
  br label %374

125:                                              ; preds = %104
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %131, i32 0, i32 12
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i32, i32* @ahd_dmamap_cb, align 4
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %145 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %130, i32 %133, i32 %137, i64 %141, i64 %142, i32 %143, i64* %146, i32 0)
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.ahd_completion*
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %153, i32 0, i32 11
  store %struct.ahd_completion* %152, %struct.ahd_completion** %154, align 8
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %155, i32 0, i32 11
  %157 = load %struct.ahd_completion*, %struct.ahd_completion** %156, align 8
  %158 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %159 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %157, i64 %158
  %160 = bitcast %struct.ahd_completion* %159 to i32*
  store i32* %160, i32** %4, align 8
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %162 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %166 = mul i64 %165, 4
  %167 = add i64 %164, %166
  store i64 %167, i64* %5, align 8
  %168 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %169 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @AHD_TARGETMODE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %125
  %175 = load i32*, i32** %4, align 8
  %176 = bitcast i32* %175 to %struct.target_cmd*
  %177 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %178 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %177, i32 0, i32 10
  store %struct.target_cmd* %176, %struct.target_cmd** %178, align 8
  %179 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = load i32*, i32** %4, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %4, align 8
  %184 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 4
  %187 = load i64, i64* %5, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %174, %125
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %189
  %197 = load i32*, i32** %4, align 8
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %199 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %198, i32 0, i32 4
  store i32* %197, i32** %199, align 8
  %200 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 %200
  store i32* %202, i32** %4, align 8
  %203 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %204 = load i64, i64* %5, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %5, align 8
  br label %206

206:                                              ; preds = %196, %189
  %207 = load i32*, i32** %4, align 8
  %208 = bitcast i32* %207 to %struct.hardware_scb*
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %209, i32 0, i32 7
  store %struct.hardware_scb* %208, %struct.hardware_scb** %210, align 8
  %211 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %212 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %211, i32 0, i32 8
  %213 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %214 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %213, i32 0, i32 9
  store %struct.TYPE_2__* %212, %struct.TYPE_2__** %214, align 8
  %215 = load i64, i64* %5, align 8
  %216 = call i32 @ahd_htole32(i64 %215)
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %218 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %217, i32 0, i32 7
  %219 = load %struct.hardware_scb*, %struct.hardware_scb** %218, align 8
  %220 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 4
  %221 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %222 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %226 = call i64 @ahd_init_scbdata(%struct.ahd_softc* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %206
  %229 = load i32, i32* @ENOMEM, align 4
  store i32 %229, i32* %2, align 4
  br label %374

230:                                              ; preds = %206
  %231 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %232 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @AHD_INITIATORROLE, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %241 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %237, %230
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %246 = call i32 @ahd_platform_init(%struct.ahd_softc* %245)
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %248 = call i32 @ahd_chip_init(%struct.ahd_softc* %247)
  %249 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %250 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %251 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %252 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %249, i32 %250, i32 %251)
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @AHD_CURRENT_SENSING, align 4
  %257 = and i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %244
  br label %367

260:                                              ; preds = %244
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %262 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %263 = load i32, i32* @CURSENSE_ENB, align 4
  %264 = call i32 @ahd_write_flexport(%struct.ahd_softc* %261, i32 %262, i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %260
  %268 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %269 = call i32 @ahd_name(%struct.ahd_softc* %268)
  %270 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %269)
  br label %367

271:                                              ; preds = %260
  store i32 20, i32* %7, align 4
  %272 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %294, %271
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br label %281

281:                                              ; preds = %278, %273
  %282 = phi i1 [ false, %273 ], [ %280, %278 ]
  br i1 %282, label %283, label %297

283:                                              ; preds = %281
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %285 = load i32, i32* @FLXADDR_FLEXSTAT, align 4
  %286 = call i32 @ahd_read_flexport(%struct.ahd_softc* %284, i32 %285, i32* %11)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %291 = call i32 @ahd_name(%struct.ahd_softc* %290)
  %292 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %291)
  br label %367

293:                                              ; preds = %283
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %7, align 4
  br label %273

297:                                              ; preds = %281
  %298 = load i32, i32* %7, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %302 = call i32 @ahd_name(%struct.ahd_softc* %301)
  %303 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %302)
  br label %367

304:                                              ; preds = %297
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %306 = load i32, i32* @FLXADDR_CURRENT_STAT, align 4
  %307 = call i32 @ahd_read_flexport(%struct.ahd_softc* %305, i32 %306, i32* %10)
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %8, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %312 = call i32 @ahd_name(%struct.ahd_softc* %311)
  %313 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %312)
  br label %367

314:                                              ; preds = %304
  %315 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %316 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %317 = call i32 @ahd_write_flexport(%struct.ahd_softc* %315, i32 %316, i32 0)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %351, %314
  %319 = load i32, i32* %7, align 4
  %320 = icmp slt i32 %319, 4
  br i1 %320, label %321, label %357

321:                                              ; preds = %318
  %322 = load i32, i32* %10, align 4
  %323 = load i32, i32* @FLX_CSTAT_MASK, align 4
  %324 = and i32 %322, %323
  store i32 %324, i32* %12, align 4
  %325 = load i32, i32* %12, align 4
  switch i32 %325, label %350 [
    i32 129, label %326
    i32 128, label %326
    i32 131, label %329
    i32 130, label %329
  ]

326:                                              ; preds = %321, %321
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  br label %329

329:                                              ; preds = %321, %321, %326
  %330 = load i32, i32* %9, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load i32, i32* @bootverbose, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  br label %350

336:                                              ; preds = %332, %329
  %337 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %338 = call i32 @ahd_name(%struct.ahd_softc* %337)
  %339 = load i32*, i32** @channel_strings, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** @termstat_strings, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %338, i32 %343, i32 %348)
  br label %350

350:                                              ; preds = %321, %336, %335
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %7, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %7, align 4
  %354 = load i32, i32* @FLX_CSTAT_SHIFT, align 4
  %355 = load i32, i32* %10, align 4
  %356 = ashr i32 %355, %354
  store i32 %356, i32* %10, align 4
  br label %318

357:                                              ; preds = %318
  %358 = load i32, i32* %9, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %357
  %361 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %362 = call i32 @ahd_name(%struct.ahd_softc* %361)
  %363 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %364 = call i32 @ahd_name(%struct.ahd_softc* %363)
  %365 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0), i32 %362, i32 %364)
  br label %366

366:                                              ; preds = %360, %357
  br label %367

367:                                              ; preds = %366, %310, %300, %289, %267, %259
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %369 = call i32 @ahd_restart(%struct.ahd_softc* %368)
  %370 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %371 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %370, i32 0, i32 5
  %372 = load i32, i32* @AHD_STAT_UPDATE_US, align 4
  %373 = call i32 @ahd_timer_reset(i32* %371, i32 %372)
  store i32 0, i32* %2, align 4
  br label %374

374:                                              ; preds = %367, %228, %123, %102, %32
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_probe_stack_size(%struct.ahd_softc*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_dma_tag_create(%struct.ahd_softc*, i32, i32, i64, i64, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @ahd_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @ahd_dmamap_load(%struct.ahd_softc*, i32, i32, i64, i64, i32, i64*, i32) #1

declare dso_local i32 @ahd_htole32(i64) #1

declare dso_local i64 @ahd_init_scbdata(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_platform_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_chip_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_write_flexport(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_read_flexport(%struct.ahd_softc*, i32, i32*) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_timer_reset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
