; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_parse_pci_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_parse_pci_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32 }
%struct.seeprom_config = type { i32, i32, i32*, i32, i32, i64 }

@CFMAXTARG = common dso_local global i32 0, align 4
@CFULTRAEN = common dso_local global i32 0, align 4
@CFSYNCHISULTRA = common dso_local global i32 0, align 4
@AHC_NEWEEPROM_FMT = common dso_local global i32 0, align 4
@CFDISC = common dso_local global i32 0, align 4
@CFXFER = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@CFSYNCH = common dso_local global i32 0, align 4
@MAX_OFFSET_ULTRA2 = common dso_local global i32 0, align 4
@TARG_OFFSET = common dso_local global i64 0, align 8
@CFWIDEB = common dso_local global i32 0, align 4
@WIDEXFER = common dso_local global i32 0, align 4
@SOFS = common dso_local global i32 0, align 4
@TARG_SCSIRATE = common dso_local global i64 0, align 8
@CFSCSIID = common dso_local global i32 0, align 4
@CFSPARITY = common dso_local global i32 0, align 4
@ENSPCHK = common dso_local global i32 0, align 4
@CFRESETB = common dso_local global i32 0, align 4
@RESET_SCSI = common dso_local global i32 0, align 4
@CFBOOTCHAN = common dso_local global i32 0, align 4
@CFBOOTCHANSHIFT = common dso_local global i32 0, align 4
@CFEXTEND = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@CFBIOSEN = common dso_local global i32 0, align 4
@AHC_BIOS_ENABLED = common dso_local global i32 0, align 4
@AHC_ULTRA = common dso_local global i32 0, align 4
@CFSIGNATURE = common dso_local global i64 0, align 8
@CFSIGNATURE2 = common dso_local global i64 0, align 8
@DEVCONFIG = common dso_local global i32 0, align 4
@STPWLEVEL = common dso_local global i32 0, align 4
@CFSTPWLEVEL = common dso_local global i32 0, align 4
@SCSICONF = common dso_local global i64 0, align 8
@DISC_DSB = common dso_local global i64 0, align 8
@ULTRA_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.seeprom_config*)* @ahc_parse_pci_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_parse_pci_eeprom(%struct.ahc_softc* %0, %struct.seeprom_config* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.seeprom_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.seeprom_config* %1, %struct.seeprom_config** %4, align 8
  %14 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %15 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CFMAXTARG, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %20 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CFULTRAEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %32 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CFSYNCHISULTRA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %51

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %26

51:                                               ; preds = %41, %26
  br label %52

52:                                               ; preds = %51, %2
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %249, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %252

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %61 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CFDISC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %83 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CFSYNCHISULTRA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %81
  br label %109

97:                                               ; preds = %74
  %98 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %99 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CFULTRAEN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %97
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %111 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CFXFER, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %120, label %140

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load i32, i32* @CFXFER, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %129 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %127
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %11, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %125, %120, %109
  %141 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AHC_ULTRA2, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %200

147:                                              ; preds = %140
  %148 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %149 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CFSYNCH, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* @MAX_OFFSET_ULTRA2, align 4
  store i32 %159, i32* %12, align 4
  br label %161

160:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %160, %158
  %162 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %163 = load i64, i64* @TARG_OFFSET, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @ahc_outb(%struct.ahc_softc* %162, i64 %166, i32 %167)
  %169 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %170 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CFXFER, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %11, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 8, i32 0
  %184 = or i32 %177, %183
  store i32 %184, i32* %10, align 4
  %185 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %186 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CFWIDEB, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %161
  %196 = load i32, i32* @WIDEXFER, align 4
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %195, %161
  br label %241

200:                                              ; preds = %140
  %201 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %202 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CFXFER, align 4
  %209 = and i32 %207, %208
  %210 = shl i32 %209, 4
  store i32 %210, i32* %10, align 4
  %211 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %212 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @CFSYNCH, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %200
  %222 = load i32, i32* @SOFS, align 4
  %223 = load i32, i32* %10, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %10, align 4
  br label %225

225:                                              ; preds = %221, %200
  %226 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %227 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CFWIDEB, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %225
  %237 = load i32, i32* @WIDEXFER, align 4
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %236, %225
  br label %241

241:                                              ; preds = %240, %199
  %242 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %243 = load i64, i64* @TARG_SCSIRATE, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %243, %245
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @ahc_outb(%struct.ahc_softc* %242, i64 %246, i32 %247)
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %5, align 4
  br label %53

252:                                              ; preds = %53
  %253 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %254 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @CFSCSIID, align 4
  %257 = and i32 %255, %256
  %258 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %259 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %261 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 7
  store i32 %263, i32* %7, align 4
  %264 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %265 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @CFSPARITY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %252
  %271 = load i32, i32* @ENSPCHK, align 4
  %272 = load i32, i32* %7, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %270, %252
  %275 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %276 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @CFRESETB, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load i32, i32* @RESET_SCSI, align 4
  %283 = load i32, i32* %7, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %281, %274
  %286 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %287 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @CFBOOTCHAN, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* @CFBOOTCHANSHIFT, align 4
  %292 = ashr i32 %290, %291
  %293 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %294 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %298 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @CFEXTEND, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %285
  %304 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %305 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %306 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %303, %285
  %310 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %311 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @CFBIOSEN, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %309
  %317 = load i32, i32* @AHC_BIOS_ENABLED, align 4
  %318 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %319 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %316, %309
  %323 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %324 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @AHC_ULTRA, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %322
  %330 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %331 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %334 = and i32 %332, %333
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %345

336:                                              ; preds = %329
  %337 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %338 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @CFULTRAEN, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %336
  store i32 0, i32* %9, align 4
  br label %344

344:                                              ; preds = %343, %336
  br label %345

345:                                              ; preds = %344, %329, %322
  %346 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %347 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CFSIGNATURE, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %357, label %351

351:                                              ; preds = %345
  %352 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %353 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %352, i32 0, i32 5
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @CFSIGNATURE2, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %384

357:                                              ; preds = %351, %345
  %358 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %359 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DEVCONFIG, align 4
  %362 = call i32 @ahc_pci_read_config(i32 %360, i32 %361, i32 4)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* @STPWLEVEL, align 4
  %364 = xor i32 %363, -1
  %365 = load i32, i32* %13, align 4
  %366 = and i32 %365, %364
  store i32 %366, i32* %13, align 4
  %367 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %368 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @CFSTPWLEVEL, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %357
  %374 = load i32, i32* @STPWLEVEL, align 4
  %375 = load i32, i32* %13, align 4
  %376 = or i32 %375, %374
  store i32 %376, i32* %13, align 4
  br label %377

377:                                              ; preds = %373, %357
  %378 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %379 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @DEVCONFIG, align 4
  %382 = load i32, i32* %13, align 4
  %383 = call i32 @ahc_pci_write_config(i32 %380, i32 %381, i32 %382, i32 4)
  br label %384

384:                                              ; preds = %377, %351
  %385 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %386 = load i64, i64* @SCSICONF, align 8
  %387 = load i32, i32* %7, align 4
  %388 = call i32 @ahc_outb(%struct.ahc_softc* %385, i64 %386, i32 %387)
  %389 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %390 = load i64, i64* @DISC_DSB, align 8
  %391 = load i32, i32* %8, align 4
  %392 = and i32 %391, 255
  %393 = xor i32 %392, -1
  %394 = call i32 @ahc_outb(%struct.ahc_softc* %389, i64 %390, i32 %393)
  %395 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %396 = load i64, i64* @DISC_DSB, align 8
  %397 = add nsw i64 %396, 1
  %398 = load i32, i32* %8, align 4
  %399 = ashr i32 %398, 8
  %400 = and i32 %399, 255
  %401 = xor i32 %400, -1
  %402 = call i32 @ahc_outb(%struct.ahc_softc* %395, i64 %397, i32 %401)
  %403 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %404 = load i64, i64* @ULTRA_ENB, align 8
  %405 = load i32, i32* %9, align 4
  %406 = and i32 %405, 255
  %407 = call i32 @ahc_outb(%struct.ahc_softc* %403, i64 %404, i32 %406)
  %408 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %409 = load i64, i64* @ULTRA_ENB, align 8
  %410 = add nsw i64 %409, 1
  %411 = load i32, i32* %9, align 4
  %412 = ashr i32 %411, 8
  %413 = and i32 %412, 255
  %414 = call i32 @ahc_outb(%struct.ahc_softc* %408, i64 %410, i32 %413)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i32) #1

declare dso_local i32 @ahc_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ahc_pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
