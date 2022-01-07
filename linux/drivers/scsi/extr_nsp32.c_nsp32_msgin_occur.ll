; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_msgin_occur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_msgin_occur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_13__ = type { i8*, i32, i64, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SCSI_DATA_IN = common dso_local global i32 0, align 4
@NSP32_DEBUG_MSGINOCCUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"enter: msglen: 0x%x msgin: 0x%x msgtype: 0x%x\00", align 1
@IRQSTATUS_RESELECT_OCCUER = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"unexpected message of AutoSCSI MsgIn: 0x%x\00", align 1
@DATA_IN_PHASE = common dso_local global i16 0, align 2
@DATA_OUT_PHASE = common dso_local global i16 0, align 2
@SAVED_SACK_CNT = common dso_local global i32 0, align 4
@MSGIN_02_VALID = common dso_local global i16 0, align 2
@FALSE = common dso_local global i8* null, align 8
@CLR_COUNTER = common dso_local global i32 0, align 4
@CLRCOUNTER_ALLMASK = common dso_local global i64 0, align 8
@SGT_ADR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"unexpected message of AutoSCSI MsgIn: SAVE_POINTERS\00", align 1
@SDTR_INITIATOR = common dso_local global i32 0, align 4
@SDTR_TARGET = common dso_local global i32 0, align 4
@SDTR_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported message: 0x%x\00", align 1
@EXTENDED_SDTR_LEN = common dso_local global i32 0, align 4
@SCSI_MSG_OUT = common dso_local global i32 0, align 4
@AUTO_ATN = common dso_local global i16 0, align 2
@AUTO_MSGIN_00_OR_04 = common dso_local global i16 0, align 2
@AUTO_MSGIN_02 = common dso_local global i16 0, align 2
@AUTO_MSGIN_03 = common dso_local global i16 0, align 2
@NEGATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"invalid or unsupported MessageIn, rejected. current msg: 0x%x (len: 0x%x), processing msg: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i64, i16)* @nsp32_msgin_occur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_msgin_occur(%struct.scsi_cmnd* %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16 %2, i16* %6, align 2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i16 0, i16* %12, align 2
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SCSI_DATA_IN, align 4
  %35 = call zeroext i8 @nsp32_read1(i32 %33, i32 %34)
  store i8 %35, i8* %9, align 1
  %36 = load i8, i8* %9, align 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = trunc i32 %42 to i8
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  store i8 %36, i8* %45, align 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  %51 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = call i32 @nsp32_sack_assert(%struct.TYPE_13__* %60)
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %3
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @IRQSTATUS_RESELECT_OCCUER, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %322

72:                                               ; preds = %66
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %11, align 1
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = load i8, i8* %11, align 1
  %79 = call i32 @nsp32_reselection(%struct.scsi_cmnd* %77, i8 zeroext %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %254

84:                                               ; preds = %72
  br label %322

85:                                               ; preds = %3
  %86 = load i8, i8* %10, align 1
  %87 = zext i8 %86 to i32
  switch i32 %87, label %252 [
    i32 141, label %88
    i32 140, label %88
    i32 130, label %93
    i32 129, label %155
    i32 131, label %158
    i32 133, label %191
    i32 132, label %191
    i32 134, label %196
    i32 128, label %197
    i32 35, label %197
    i32 138, label %206
  ]

88:                                               ; preds = %85, %85
  %89 = load i32, i32* @KERN_WARNING, align 4
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %253

93:                                               ; preds = %85
  %94 = load i16, i16* %6, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @DATA_IN_PHASE, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load i16, i16* %6, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @DATA_OUT_PHASE, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100, %93
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SAVED_SACK_CNT, align 4
  %110 = call i32 @nsp32_read4(i32 %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i16, i16* %6, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* @MSGIN_02_VALID, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load i32, i32* %16, align 4
  %119 = icmp ugt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @nsp32_adjust_busfree(%struct.scsi_cmnd* %121, i32 %122)
  br label %125

124:                                              ; preds = %117, %107
  br label %125

125:                                              ; preds = %124, %120
  br label %126

126:                                              ; preds = %125, %100
  %127 = load i8*, i8** @FALSE, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @CLR_COUNTER, align 4
  %135 = load i64, i64* @CLRCOUNTER_ALLMASK, align 8
  %136 = call i32 @nsp32_write4(i32 %133, i32 %134, i64 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = add i64 %142, %149
  store i64 %150, i64* %14, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @SGT_ADR, align 4
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @nsp32_write4(i32 %151, i32 %152, i64 %153)
  br label %253

155:                                              ; preds = %85
  %156 = load i32, i32* @KERN_WARNING, align 4
  %157 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %156, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %253

158:                                              ; preds = %85
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SDTR_INITIATOR, align 4
  %165 = load i32, i32* @SDTR_TARGET, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %158
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = call i32 @nsp32_set_async(%struct.TYPE_13__* %170, %struct.TYPE_14__* %173)
  %175 = load i32, i32* @SDTR_INITIATOR, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %176
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @SDTR_DONE, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %169, %158
  br label %253

191:                                              ; preds = %85, %85
  %192 = load i32, i32* @KERN_WARNING, align 4
  %193 = load i8, i8* %10, align 1
  %194 = zext i8 %193 to i32
  %195 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %253

196:                                              ; preds = %85
  br label %322

197:                                              ; preds = %85, %85
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp sge i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %322

203:                                              ; preds = %197
  %204 = load i8*, i8** @FALSE, align 8
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %13, align 4
  br label %253

206:                                              ; preds = %85
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** @FALSE, align 8
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %13, align 4
  br label %253

214:                                              ; preds = %206
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %220, 1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %221, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %214
  %227 = load i8*, i8** @FALSE, align 8
  %228 = ptrtoint i8* %227 to i32
  store i32 %228, i32* %13, align 4
  br label %253

229:                                              ; preds = %214
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 2
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  switch i32 %235, label %250 [
    i32 137, label %236
    i32 136, label %237
    i32 139, label %248
    i32 135, label %249
  ]

236:                                              ; preds = %229
  br label %322

237:                                              ; preds = %229
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @EXTENDED_SDTR_LEN, align 4
  %242 = add nsw i32 %241, 1
  %243 = icmp ne i32 %240, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %322

245:                                              ; preds = %237
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = call i32 @nsp32_analyze_sdtr(%struct.scsi_cmnd* %246)
  br label %251

248:                                              ; preds = %229
  br label %322

249:                                              ; preds = %229
  br label %322

250:                                              ; preds = %229
  br label %322

251:                                              ; preds = %245
  br label %253

252:                                              ; preds = %85
  br label %322

253:                                              ; preds = %251, %226, %211, %203, %191, %190, %155, %126, %88
  br label %254

254:                                              ; preds = %322, %253, %83
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* @TRUE, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %306

258:                                              ; preds = %254
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  store i32 0, i32* %260, align 8
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %258
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @SCSI_MSG_OUT, align 4
  %268 = call i32 @nsp32_write4(i32 %266, i32 %267, i64 0)
  %269 = load i16, i16* @AUTO_ATN, align 2
  %270 = zext i16 %269 to i32
  %271 = load i16, i16* %12, align 2
  %272 = zext i16 %271 to i32
  %273 = or i32 %272, %270
  %274 = trunc i32 %273 to i16
  store i16 %274, i16* %12, align 2
  br label %275

275:                                              ; preds = %265, %258
  %276 = load i16, i16* @AUTO_MSGIN_00_OR_04, align 2
  %277 = zext i16 %276 to i32
  %278 = load i16, i16* @AUTO_MSGIN_02, align 2
  %279 = zext i16 %278 to i32
  %280 = or i32 %277, %279
  %281 = load i16, i16* %12, align 2
  %282 = zext i16 %281 to i32
  %283 = or i32 %282, %280
  %284 = trunc i32 %283 to i16
  store i16 %284, i16* %12, align 2
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @TRUE, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %275
  %293 = load i16, i16* @AUTO_MSGIN_03, align 2
  %294 = zext i16 %293 to i32
  %295 = load i16, i16* %12, align 2
  %296 = zext i16 %295 to i32
  %297 = or i32 %296, %294
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %12, align 2
  br label %299

299:                                              ; preds = %292, %275
  %300 = load i8*, i8** @FALSE, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  store i32 %301, i32* %305, align 4
  br label %311

306:                                              ; preds = %254
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %306, %299
  %312 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %313 = load i16, i16* %12, align 2
  %314 = call i32 @nsp32_restart_autoscsi(%struct.scsi_cmnd* %312, i16 zeroext %313)
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %316 = load i32, i32* @NEGATE, align 4
  %317 = call i32 @nsp32_wait_req(%struct.TYPE_13__* %315, i32 %316)
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %319 = call i32 @nsp32_sack_negate(%struct.TYPE_13__* %318)
  %320 = load i32, i32* @NSP32_DEBUG_MSGINOCCUR, align 4
  %321 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void

322:                                              ; preds = %252, %250, %249, %248, %244, %236, %202, %196, %84, %71
  %323 = load i32, i32* @KERN_WARNING, align 4
  %324 = load i8, i8* %9, align 1
  %325 = zext i8 %324 to i32
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i8, i8* %10, align 1
  %330 = zext i8 %329 to i32
  %331 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %323, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0), i32 %325, i32 %328, i32 %330)
  %332 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %333 = call i32 @nsp32_build_reject(%struct.scsi_cmnd* %332)
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 1
  store i32 0, i32* %335, align 8
  br label %254
}

declare dso_local zeroext i8 @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_sack_assert(%struct.TYPE_13__*) #1

declare dso_local i32 @nsp32_reselection(%struct.scsi_cmnd*, i8 zeroext) #1

declare dso_local i32 @nsp32_msg(i32, i8*, ...) #1

declare dso_local i32 @nsp32_read4(i32, i32) #1

declare dso_local i32 @nsp32_adjust_busfree(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @nsp32_write4(i32, i32, i64) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @nsp32_analyze_sdtr(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_restart_autoscsi(%struct.scsi_cmnd*, i16 zeroext) #1

declare dso_local i32 @nsp32_wait_req(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @nsp32_sack_negate(%struct.TYPE_13__*) #1

declare dso_local i32 @nsp32_build_reject(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
