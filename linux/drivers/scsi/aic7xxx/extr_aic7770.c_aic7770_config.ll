; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770.c_aic7770_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7770.c_aic7770_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aic7770_identity = type { i32 (%struct.ahc_softc.0*)*, i32 }
%struct.ahc_softc.0 = type opaque

@FALSE = common dso_local global i32 0, align 4
@aic7770_chip_init = common dso_local global i32 0, align 4
@INTDEF = common dso_local global i32 0, align 4
@VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"aic7770_config: invalid irq setting %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EDGE_TRIG = common dso_local global i32 0, align 4
@AHC_EDGE_INTERRUPT = common dso_local global i32 0, align 4
@HA_274_BIOSCTRL = common dso_local global i32 0, align 4
@SCSICONF = common dso_local global i32 0, align 4
@CHANNEL_B_PRIMARY = common dso_local global i32 0, align 4
@BIOSMODE = common dso_local global i32 0, align 4
@BIOSDISABLED = common dso_local global i32 0, align 4
@AHC_USEDEFAULTS = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@HWSCSIID = common dso_local global i32 0, align 4
@TERM_ENB = common dso_local global i32 0, align 4
@AHC_TERM_ENB_A = common dso_local global i32 0, align 4
@HSCSIID = common dso_local global i32 0, align 4
@AHC_TERM_ENB_B = common dso_local global i32 0, align 4
@HA_274_BIOSGLOBAL = common dso_local global i32 0, align 4
@HA_274_EXTENDED_TRANS = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_B = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@AUTOFLUSHDIS = common dso_local global i32 0, align 4
@HOSTCONF = common dso_local global i32 0, align 4
@BUSSPD = common dso_local global i32 0, align 4
@DFTHRSH = common dso_local global i32 0, align 4
@BUSTIME = common dso_local global i32 0, align 4
@BOFF = common dso_local global i32 0, align 4
@BCTL = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aic7770_config(%struct.ahc_softc* %0, %struct.aic7770_identity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.aic7770_identity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.aic7770_identity* %1, %struct.aic7770_identity** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.aic7770_identity*, %struct.aic7770_identity** %6, align 8
  %17 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %16, i32 0, i32 0
  %18 = load i32 (%struct.ahc_softc.0*)*, i32 (%struct.ahc_softc.0*)** %17, align 8
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %20 = bitcast %struct.ahc_softc* %19 to %struct.ahc_softc.0*
  %21 = call i32 %18(%struct.ahc_softc.0* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %273

26:                                               ; preds = %3
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @aic7770_map_registers(%struct.ahc_softc* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %273

34:                                               ; preds = %26
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ahc_intr_enable(%struct.ahc_softc* %35, i32 %36)
  %38 = load %struct.aic7770_identity*, %struct.aic7770_identity** %6, align 8
  %39 = getelementptr inbounds %struct.aic7770_identity, %struct.aic7770_identity* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %44 = call i32 @ahc_softc_init(%struct.ahc_softc* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %273

49:                                               ; preds = %34
  %50 = load i32, i32* @aic7770_chip_init, align 4
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @ahc_reset(%struct.ahc_softc* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %273

60:                                               ; preds = %49
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %62 = load i32, i32* @INTDEF, align 4
  %63 = call i32 @ahc_inb(%struct.ahc_softc* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @VECTOR, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %69 [
    i32 9, label %68
    i32 10, label %68
    i32 11, label %68
    i32 12, label %68
    i32 14, label %68
    i32 15, label %68
  ]

68:                                               ; preds = %60, %60, %60, %60, %60, %60
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %4, align 4
  br label %273

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @EDGE_TRIG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @AHC_EDGE_INTERRUPT, align 4
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 129
  switch i32 %88, label %198 [
    i32 129, label %89
    i32 128, label %195
  ]

89:                                               ; preds = %84
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %91 = load i32, i32* @HA_274_BIOSCTRL, align 4
  %92 = call i32 @ahc_inb(%struct.ahc_softc* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %94 = load i32, i32* @SCSICONF, align 4
  %95 = call i32 @ahc_inb(%struct.ahc_softc* %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %97 = load i32, i32* @SCSICONF, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @ahc_inb(%struct.ahc_softc* %96, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @CHANNEL_B_PRIMARY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %89
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %89
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @BIOSMODE, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @BIOSDISABLED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %118 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %179

121:                                              ; preds = %109
  %122 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %123 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AHC_WIDE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %121
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @HWSCSIID, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %133 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @TERM_ENB, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %140 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %141 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %128
  br label %178

145:                                              ; preds = %121
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @HSCSIID, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %150 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @HSCSIID, align 4
  %153 = and i32 %151, %152
  %154 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %155 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @TERM_ENB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %145
  %161 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %162 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %163 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %145
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @TERM_ENB, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @AHC_TERM_ENB_B, align 4
  %173 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %174 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %166
  br label %178

178:                                              ; preds = %177, %144
  br label %179

179:                                              ; preds = %178, %115
  %180 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %181 = load i32, i32* @HA_274_BIOSGLOBAL, align 4
  %182 = call i32 @ahc_inb(%struct.ahc_softc* %180, i32 %181)
  %183 = load i32, i32* @HA_274_EXTENDED_TRANS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %188 = load i32, i32* @AHC_EXTENDED_TRANS_B, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %191 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %179
  br label %199

195:                                              ; preds = %84
  %196 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %197 = call i32 @aha2840_load_seeprom(%struct.ahc_softc* %196)
  store i32 %197, i32* %9, align 4
  br label %199

198:                                              ; preds = %84
  br label %199

199:                                              ; preds = %198, %195, %194
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %204 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @kfree(i32* %205)
  %207 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %208 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %207, i32 0, i32 7
  store i32* null, i32** %208, align 8
  br label %209

209:                                              ; preds = %202, %199
  %210 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %211 = load i32, i32* @SBLKCTL, align 4
  %212 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %213 = load i32, i32* @SBLKCTL, align 4
  %214 = call i32 @ahc_inb(%struct.ahc_softc* %212, i32 %213)
  %215 = load i32, i32* @AUTOFLUSHDIS, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %214, %216
  %218 = call i32 @ahc_outb(%struct.ahc_softc* %210, i32 %211, i32 %217)
  %219 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %220 = load i32, i32* @HOSTCONF, align 4
  %221 = call i32 @ahc_inb(%struct.ahc_softc* %219, i32 %220)
  store i32 %221, i32* %10, align 4
  %222 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %223 = load i32, i32* @BUSSPD, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @DFTHRSH, align 4
  %226 = and i32 %224, %225
  %227 = call i32 @ahc_outb(%struct.ahc_softc* %222, i32 %223, i32 %226)
  %228 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %229 = load i32, i32* @BUSTIME, align 4
  %230 = load i32, i32* %10, align 4
  %231 = shl i32 %230, 2
  %232 = load i32, i32* @BOFF, align 4
  %233 = and i32 %231, %232
  %234 = call i32 @ahc_outb(%struct.ahc_softc* %228, i32 %229, i32 %233)
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @DFTHRSH, align 4
  %237 = and i32 %235, %236
  %238 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %239 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  store i32 %237, i32* %241, align 8
  %242 = load i32, i32* %10, align 4
  %243 = shl i32 %242, 2
  %244 = load i32, i32* @BOFF, align 4
  %245 = and i32 %243, %244
  %246 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %247 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i32 %245, i32* %249, align 4
  %250 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %251 = call i32 @ahc_init(%struct.ahc_softc* %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %209
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %4, align 4
  br label %273

256:                                              ; preds = %209
  %257 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @aic7770_map_int(%struct.ahc_softc* %257, i32 %258)
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %4, align 4
  br label %273

264:                                              ; preds = %256
  %265 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %266 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  %269 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %270 = load i32, i32* @BCTL, align 4
  %271 = load i32, i32* @ENABLE, align 4
  %272 = call i32 @ahc_outb(%struct.ahc_softc* %269, i32 %270, i32 %271)
  store i32 0, i32* %4, align 4
  br label %273

273:                                              ; preds = %264, %262, %254, %69, %58, %47, %32, %24
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i32 @aic7770_map_registers(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_intr_enable(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_softc_init(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_reset(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @aha2840_load_seeprom(%struct.ahc_softc*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_init(%struct.ahc_softc*) #1

declare dso_local i32 @aic7770_map_int(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
