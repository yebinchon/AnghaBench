; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_ma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32*, i64, i64 }
%struct.sym_pmc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sym_ccb = type { %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.sym_pmc, %struct.sym_pmc }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@FE_DFBC = common dso_local global i32 0, align 4
@nc_dfbc = common dso_local global i32 0, align 4
@nc_dfifo = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@nc_sstat0 = common dso_local global i32 0, align 4
@OLF = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@ORF = common dso_local global i32 0, align 4
@EWS = common dso_local global i32 0, align 4
@nc_sstat2 = common dso_local global i32 0, align 4
@OLF1 = common dso_local global i32 0, align 4
@ORF1 = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@DEBUG_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"P%x%x RL=%d D=%d \00", align 1
@nc_sbcl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\0ACP=%p DSP=%x NXT=%x VDSP=%p CMD=%x \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: interrupted SCRIPT address not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: SCSI phase error fixup: CCB already dequeued.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"OCMD=%x\0ATBLP=%p OLEN=%x OADR=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"internal error: cmd=%02x != %02x=(vdsp[0] >> 24)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"phase change %x-%x %d@%08x resid=%d.\0A\00", align 1
@HF_PRT = common dso_local global i32 0, align 4
@HF_IN_PM0 = common dso_local global i32 0, align 4
@HF_IN_PM1 = common dso_local global i32 0, align 4
@HF_DP_SAVED = common dso_local global i32 0, align 4
@HF_ACT_PM = common dso_local global i32 0, align 4
@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@nc_scntl2 = common dso_local global i32 0, align 4
@WSR = common dso_local global i32 0, align 4
@wsr_ma_helper = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"PM %x %x %x / %x %x %x.\0A\00", align 1
@send_ident = common dso_local global i32 0, align 4
@NO_TAG = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@ident_break_atn = common dso_local global i32 0, align 4
@ident_break = common dso_local global i32 0, align 4
@send_wdtr = common dso_local global i32 0, align 4
@send_sdtr = common dso_local global i32 0, align 4
@send_ppr = common dso_local global i32 0, align 4
@nego_bad_phase = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_int_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_ma(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sym_pmc*, align 8
  %18 = alloca %struct.sym_ccb*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scsi_device*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %25 = load i32, i32* @nc_dsp, align 4
  %26 = call i32 @INL(%struct.sym_hcb* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %28 = load i32, i32* @nc_dbc, align 4
  %29 = call i32 @INL(%struct.sym_hcb* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %31 = load i32, i32* @nc_dsa, align 4
  %32 = call i32 @INL(%struct.sym_hcb* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 24
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 16777215
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %37, i32 %38)
  store %struct.sym_ccb* %39, %struct.sym_ccb** %18, align 8
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %169

43:                                               ; preds = %1
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %44, 7
  %46 = icmp ne i32 %45, 5
  br i1 %46, label %47, label %169

47:                                               ; preds = %43
  %48 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %49 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FE_DFBC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %56 = load i32, i32* @nc_dfbc, align 4
  %57 = call i32 @INW(%struct.sym_hcb* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %84

58:                                               ; preds = %47
  %59 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %60 = load i32, i32* @nc_dfifo, align 4
  %61 = call i32 @INL(%struct.sym_hcb* %59, i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* @DFS, align 4
  %64 = shl i32 %63, 16
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = load i32, i32* %21, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 768
  %71 = load i32, i32* %21, align 4
  %72 = and i32 %71, 255
  %73 = or i32 %70, %72
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %73, %74
  %76 = and i32 %75, 1023
  store i32 %76, i32* %13, align 4
  br label %83

77:                                               ; preds = %58
  %78 = load i32, i32* %21, align 4
  %79 = and i32 %78, 255
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %79, %80
  %82 = and i32 %81, 127
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %77, %67
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %89 = load i32, i32* @nc_sstat0, align 4
  %90 = call i32 @INB(%struct.sym_hcb* %88, i32 %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @OLF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %84
  %99 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %100 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FE_C10, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @ORF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %98
  %115 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %116 = icmp ne %struct.sym_ccb* %115, null
  br i1 %116, label %117, label %154

117:                                              ; preds = %114
  %118 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %119 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @EWS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %117
  %127 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %128 = load i32, i32* @nc_sstat2, align 4
  %129 = call i32 @INB(%struct.sym_hcb* %127, i32 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @OLF1, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %126
  %138 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %139 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FE_C10, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* @ORF1, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %137
  br label %154

154:                                              ; preds = %153, %117, %114
  %155 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %156 = load i32, i32* @nc_ctest3, align 4
  %157 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %158 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CLF, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @OUTB(%struct.sym_hcb* %155, i32 %156, i32 %161)
  %163 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %164 = load i32, i32* @nc_stest3, align 4
  %165 = load i32, i32* @TE, align 4
  %166 = load i32, i32* @CSF, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @OUTB(%struct.sym_hcb* %163, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %154, %43, %1
  %170 = load i32, i32* @DEBUG_FLAGS, align 4
  %171 = load i32, i32* @DEBUG_TINY, align 4
  %172 = load i32, i32* @DEBUG_PHASE, align 4
  %173 = or i32 %171, %172
  %174 = and i32 %170, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load i32, i32* %14, align 4
  %178 = and i32 %177, 7
  %179 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %180 = load i32, i32* @nc_sbcl, align 4
  %181 = call i32 @INB(%struct.sym_hcb* %179, i32 %180)
  %182 = and i32 %181, 7
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %176, %169
  store i32* null, i32** %8, align 8
  store i32 0, i32* %7, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %189 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %187, %190
  br i1 %191, label %192, label %217

192:                                              ; preds = %186
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %195 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %198 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %196, %199
  %201 = icmp sle i32 %193, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %192
  %203 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %204 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %203, i32 0, i32 8
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %209 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %207, %210
  %212 = sub nsw i32 %211, 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %206, i64 %213
  %215 = bitcast i8* %214 to i32*
  store i32* %215, i32** %8, align 8
  %216 = load i32, i32* %5, align 4
  store i32 %216, i32* %7, align 4
  br label %249

217:                                              ; preds = %192, %186
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %220 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp sgt i32 %218, %221
  br i1 %222, label %223, label %248

223:                                              ; preds = %217
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %226 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %229 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %227, %230
  %232 = icmp sle i32 %224, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %223
  %234 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %235 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %240 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %238, %241
  %243 = sub nsw i32 %242, 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %237, i64 %244
  %246 = bitcast i8* %245 to i32*
  store i32* %246, i32** %8, align 8
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %233, %223, %217
  br label %249

249:                                              ; preds = %248, %202
  %250 = load i32, i32* @DEBUG_FLAGS, align 4
  %251 = load i32, i32* @DEBUG_PHASE, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32*, i32** %8, align 8
  %259 = load i32, i32* %14, align 4
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.sym_ccb* %255, i32 %256, i32 %257, i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %254, %249
  %262 = load i32*, i32** %8, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %266 = call i8* @sym_name(%struct.sym_hcb* %265)
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %266)
  br label %674

268:                                              ; preds = %261
  %269 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %270 = icmp ne %struct.sym_ccb* %269, null
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %273 = call i8* @sym_name(%struct.sym_hcb* %272)
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %273)
  br label %674

275:                                              ; preds = %268
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @scr_to_cpu(i32 %278)
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %14, align 4
  %281 = and i32 %280, 16
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %275
  %284 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %285 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %284, i32 0, i32 4
  %286 = bitcast %struct.TYPE_9__* %285 to i8*
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = bitcast i8* %289 to i32*
  store i32* %290, i32** %11, align 8
  %291 = load i32*, i32** %11, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @scr_to_cpu(i32 %293)
  store i32 %294, i32* %10, align 4
  %295 = load i32*, i32** %11, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @scr_to_cpu(i32 %297)
  store i32 %298, i32* %9, align 4
  br label %305

299:                                              ; preds = %275
  store i32* null, i32** %11, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @scr_to_cpu(i32 %302)
  %304 = and i32 %303, 16777215
  store i32 %304, i32* %10, align 4
  br label %305

305:                                              ; preds = %299, %283
  %306 = load i32, i32* @DEBUG_FLAGS, align 4
  %307 = load i32, i32* @DEBUG_PHASE, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %305
  %311 = load i32*, i32** %8, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @scr_to_cpu(i32 %313)
  %315 = ashr i32 %314, 24
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %9, align 4
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %315, i32* %316, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %310, %305
  %321 = load i32, i32* %14, align 4
  %322 = and i32 %321, 2
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load i32, i32* %14, align 4
  br label %329

326:                                              ; preds = %320
  %327 = load i32, i32* %14, align 4
  %328 = and i32 %327, -5
  br label %329

329:                                              ; preds = %326, %324
  %330 = phi i32 [ %325, %324 ], [ %328, %326 ]
  %331 = load i32*, i32** %8, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @scr_to_cpu(i32 %333)
  %335 = ashr i32 %334, 24
  %336 = icmp ne i32 %330, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %329
  %338 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %339 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %338, i32 0, i32 0
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = load i32, i32* %14, align 4
  %342 = load i32*, i32** %8, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @scr_to_cpu(i32 %344)
  %346 = ashr i32 %345, 24
  %347 = call i32 (%struct.TYPE_10__*, i8*, i32, i32, ...) @sym_print_addr(%struct.TYPE_10__* %340, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %341, i32 %346)
  br label %674

348:                                              ; preds = %329
  %349 = load i32, i32* %14, align 4
  %350 = and i32 %349, 2
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %366

352:                                              ; preds = %348
  %353 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %354 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %353, i32 0, i32 0
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = load i32, i32* %14, align 4
  %357 = and i32 %356, 7
  %358 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %359 = load i32, i32* @nc_sbcl, align 4
  %360 = call i32 @INB(%struct.sym_hcb* %358, i32 %359)
  %361 = and i32 %360, 7
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* %4, align 4
  %365 = call i32 (%struct.TYPE_10__*, i8*, i32, i32, ...) @sym_print_addr(%struct.TYPE_10__* %355, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %357, i32 %361, i32 %362, i32 %363, i32 %364)
  br label %582

366:                                              ; preds = %348
  %367 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %368 = load i32, i32* @HF_PRT, align 4
  %369 = call i32 @INB(%struct.sym_hcb* %367, i32 %368)
  store i32 %369, i32* %16, align 4
  %370 = load i32, i32* %16, align 4
  store i32 %370, i32* %15, align 4
  %371 = load i32, i32* %15, align 4
  %372 = load i32, i32* @HF_IN_PM0, align 4
  %373 = load i32, i32* @HF_IN_PM1, align 4
  %374 = or i32 %372, %373
  %375 = load i32, i32* @HF_DP_SAVED, align 4
  %376 = or i32 %374, %375
  %377 = and i32 %371, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %414

379:                                              ; preds = %366
  %380 = load i32, i32* %15, align 4
  %381 = load i32, i32* @HF_IN_PM0, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %379
  %385 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %386 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @scr_to_cpu(i32 %389)
  store i32 %390, i32* %7, align 4
  br label %404

391:                                              ; preds = %379
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* @HF_IN_PM1, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %391
  %397 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %398 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @scr_to_cpu(i32 %401)
  store i32 %402, i32* %7, align 4
  br label %403

403:                                              ; preds = %396, %391
  br label %404

404:                                              ; preds = %403, %384
  %405 = load i32, i32* %15, align 4
  %406 = load i32, i32* @HF_DP_SAVED, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %404
  %410 = load i32, i32* @HF_ACT_PM, align 4
  %411 = load i32, i32* %15, align 4
  %412 = xor i32 %411, %410
  store i32 %412, i32* %15, align 4
  br label %413

413:                                              ; preds = %409, %404
  br label %414

414:                                              ; preds = %413, %366
  %415 = load i32, i32* %15, align 4
  %416 = load i32, i32* @HF_ACT_PM, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %414
  %420 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %421 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 3
  store %struct.sym_pmc* %422, %struct.sym_pmc** %17, align 8
  %423 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %424 = load i32, i32* @pm0_data, align 4
  %425 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %423, i32 %424)
  store i32 %425, i32* %12, align 4
  br label %433

426:                                              ; preds = %414
  %427 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %428 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 2
  store %struct.sym_pmc* %429, %struct.sym_pmc** %17, align 8
  %430 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %431 = load i32, i32* @pm1_data, align 4
  %432 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %430, i32 %431)
  store i32 %432, i32* %12, align 4
  br label %433

433:                                              ; preds = %426, %419
  %434 = load i32, i32* @HF_IN_PM0, align 4
  %435 = load i32, i32* @HF_IN_PM1, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* @HF_DP_SAVED, align 4
  %438 = or i32 %436, %437
  %439 = xor i32 %438, -1
  %440 = load i32, i32* %15, align 4
  %441 = and i32 %440, %439
  store i32 %441, i32* %15, align 4
  %442 = load i32, i32* %15, align 4
  %443 = load i32, i32* %16, align 4
  %444 = icmp ne i32 %442, %443
  br i1 %444, label %445, label %450

445:                                              ; preds = %433
  %446 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %447 = load i32, i32* @HF_PRT, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 @OUTB(%struct.sym_hcb* %446, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %445, %433
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %10, align 4
  %453 = add nsw i32 %451, %452
  %454 = load i32, i32* %4, align 4
  %455 = sub nsw i32 %453, %454
  %456 = call i8* @cpu_to_scr(i32 %455)
  %457 = ptrtoint i8* %456 to i32
  %458 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %459 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 0
  store i32 %457, i32* %460, align 4
  %461 = load i32, i32* %4, align 4
  %462 = call i8* @cpu_to_scr(i32 %461)
  %463 = ptrtoint i8* %462 to i32
  %464 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %465 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 1
  store i32 %463, i32* %466, align 4
  %467 = load i32, i32* %7, align 4
  %468 = call i8* @cpu_to_scr(i32 %467)
  %469 = ptrtoint i8* %468 to i32
  %470 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %471 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 4
  %472 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %473 = load i32, i32* @dispatch, align 4
  %474 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %472, i32 %473)
  store i32 %474, i32* %7, align 4
  %475 = load i32, i32* %14, align 4
  %476 = and i32 %475, 7
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %547

478:                                              ; preds = %450
  %479 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %480 = icmp ne %struct.sym_ccb* %479, null
  br i1 %480, label %481, label %547

481:                                              ; preds = %478
  %482 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %483 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %482, i32 0, i32 4
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @EWS, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %547

490:                                              ; preds = %481
  %491 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %492 = load i32, i32* @nc_scntl2, align 4
  %493 = call i32 @INB(%struct.sym_hcb* %491, i32 %492)
  %494 = load i32, i32* @WSR, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %547

497:                                              ; preds = %490
  %498 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %499 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @scr_to_cpu(i32 %501)
  store i32 %502, i32* %22, align 4
  %503 = load i32, i32* %22, align 4
  %504 = call i8* @cpu_to_scr(i32 %503)
  %505 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %506 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %505, i32 0, i32 4
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 1
  store i8* %504, i8** %508, align 8
  %509 = load i32, i32* %22, align 4
  %510 = add nsw i32 %509, 1
  %511 = call i8* @cpu_to_scr(i32 %510)
  %512 = ptrtoint i8* %511 to i32
  %513 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %514 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 0, i32 0
  store i32 %512, i32* %515, align 4
  %516 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %517 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @scr_to_cpu(i32 %519)
  store i32 %520, i32* %22, align 4
  %521 = load i32, i32* %22, align 4
  %522 = and i32 %521, -16777216
  %523 = or i32 %522, 1
  %524 = call i8* @cpu_to_scr(i32 %523)
  %525 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %526 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 0
  store i8* %524, i8** %528, align 8
  %529 = load i32, i32* %22, align 4
  %530 = sub nsw i32 %529, 1
  %531 = call i8* @cpu_to_scr(i32 %530)
  %532 = ptrtoint i8* %531 to i32
  %533 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %534 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %534, i32 0, i32 1
  store i32 %532, i32* %535, align 4
  %536 = load i32, i32* %22, align 4
  %537 = and i32 %536, 16777215
  %538 = icmp eq i32 %537, 1
  br i1 %538, label %539, label %543

539:                                              ; preds = %497
  %540 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %541 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %12, align 4
  br label %543

543:                                              ; preds = %539, %497
  %544 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %545 = load i32, i32* @wsr_ma_helper, align 4
  %546 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %544, i32 %545)
  store i32 %546, i32* %7, align 4
  br label %547

547:                                              ; preds = %543, %490, %481, %478, %450
  %548 = load i32, i32* @DEBUG_FLAGS, align 4
  %549 = load i32, i32* @DEBUG_PHASE, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %574

552:                                              ; preds = %547
  %553 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %554 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %553, i32 0, i32 0
  %555 = load %struct.TYPE_10__*, %struct.TYPE_10__** %554, align 8
  %556 = load i32, i32* %16, align 4
  %557 = load i32, i32* %15, align 4
  %558 = load i32, i32* %12, align 4
  %559 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %560 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @scr_to_cpu(i32 %562)
  %564 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %565 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @scr_to_cpu(i32 %567)
  %569 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %570 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @scr_to_cpu(i32 %571)
  %573 = call i32 (%struct.TYPE_10__*, i8*, i32, i32, ...) @sym_print_addr(%struct.TYPE_10__* %555, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %556, i32 %557, i32 %558, i32 %563, i32 %568, i32 %572)
  br label %574

574:                                              ; preds = %552, %547
  %575 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %576 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %577 = load i32, i32* %12, align 4
  %578 = call i32 @sym_set_script_dp(%struct.sym_hcb* %575, %struct.sym_ccb* %576, i32 %577)
  %579 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %580 = load i32, i32* %7, align 4
  %581 = call i32 @OUTL_DSP(%struct.sym_hcb* %579, i32 %580)
  br label %677

582:                                              ; preds = %352
  %583 = load i32, i32* %5, align 4
  %584 = sub nsw i32 %583, 8
  store i32 %584, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %585 = load i32, i32* %14, align 4
  %586 = and i32 %585, 7
  switch i32 %586, label %666 [
    i32 2, label %587
    i32 6, label %591
  ]

587:                                              ; preds = %582
  %588 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %589 = load i32, i32* @dispatch, align 4
  %590 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %588, i32 %589)
  store i32 %590, i32* %7, align 4
  br label %666

591:                                              ; preds = %582
  %592 = load i32, i32* %5, align 4
  %593 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %594 = load i32, i32* @send_ident, align 4
  %595 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %593, i32 %594)
  %596 = icmp eq i32 %592, %595
  br i1 %596, label %597, label %628

597:                                              ; preds = %591
  %598 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %599 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 8
  %601 = load i32, i32* @NO_TAG, align 4
  %602 = icmp ne i32 %600, %601
  br i1 %602, label %603, label %623

603:                                              ; preds = %597
  %604 = load i32, i32* %10, align 4
  %605 = load i32, i32* %4, align 4
  %606 = sub nsw i32 %604, %605
  %607 = icmp sle i32 %606, 3
  br i1 %607, label %608, label %623

608:                                              ; preds = %603
  %609 = load i32, i32* @HS_BUSY, align 4
  %610 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %611 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %610, i32 0, i32 2
  store i32 %609, i32* %611, align 4
  %612 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %613 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 8
  %615 = call i32 @IDENTIFY(i32 0, i32 %614)
  %616 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %617 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %616, i32 0, i32 6
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 0
  store i32 %615, i32* %619, align 4
  %620 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %621 = load i32, i32* @ident_break_atn, align 4
  %622 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %620, i32 %621)
  store i32 %622, i32* %7, align 4
  br label %627

623:                                              ; preds = %603, %597
  %624 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %625 = load i32, i32* @ident_break, align 4
  %626 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %624, i32 %625)
  store i32 %626, i32* %7, align 4
  br label %627

627:                                              ; preds = %623, %608
  br label %665

628:                                              ; preds = %591
  %629 = load i32, i32* %5, align 4
  %630 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %631 = load i32, i32* @send_wdtr, align 4
  %632 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %630, i32 %631)
  %633 = icmp eq i32 %629, %632
  br i1 %633, label %646, label %634

634:                                              ; preds = %628
  %635 = load i32, i32* %5, align 4
  %636 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %637 = load i32, i32* @send_sdtr, align 4
  %638 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %636, i32 %637)
  %639 = icmp eq i32 %635, %638
  br i1 %639, label %646, label %640

640:                                              ; preds = %634
  %641 = load i32, i32* %5, align 4
  %642 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %643 = load i32, i32* @send_ppr, align 4
  %644 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %642, i32 %643)
  %645 = icmp eq i32 %641, %644
  br i1 %645, label %646, label %664

646:                                              ; preds = %640, %634, %628
  %647 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %648 = load i32, i32* @nego_bad_phase, align 4
  %649 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %647, i32 %648)
  store i32 %649, i32* %7, align 4
  %650 = load i32, i32* %5, align 4
  %651 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %652 = load i32, i32* @send_ppr, align 4
  %653 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %651, i32 %652)
  %654 = icmp eq i32 %650, %653
  br i1 %654, label %655, label %663

655:                                              ; preds = %646
  %656 = load %struct.sym_ccb*, %struct.sym_ccb** %18, align 8
  %657 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %656, i32 0, i32 0
  %658 = load %struct.TYPE_10__*, %struct.TYPE_10__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %658, i32 0, i32 0
  %660 = load %struct.scsi_device*, %struct.scsi_device** %659, align 8
  store %struct.scsi_device* %660, %struct.scsi_device** %23, align 8
  %661 = load %struct.scsi_device*, %struct.scsi_device** %23, align 8
  %662 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %661, i32 0, i32 0
  store i32 0, i32* %662, align 4
  br label %663

663:                                              ; preds = %655, %646
  br label %664

664:                                              ; preds = %663, %640
  br label %665

665:                                              ; preds = %664, %627
  br label %666

666:                                              ; preds = %582, %665, %587
  %667 = load i32, i32* %7, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %673

669:                                              ; preds = %666
  %670 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %671 = load i32, i32* %7, align 4
  %672 = call i32 @OUTL_DSP(%struct.sym_hcb* %670, i32 %671)
  br label %677

673:                                              ; preds = %666
  br label %674

674:                                              ; preds = %673, %337, %271, %264
  %675 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %676 = call i32 @sym_start_reset(%struct.sym_hcb* %675)
  br label %677

677:                                              ; preds = %674, %669, %574
  ret void
}

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @sym_print_addr(%struct.TYPE_10__*, i8*, i32, i32, ...) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_set_script_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @sym_start_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
