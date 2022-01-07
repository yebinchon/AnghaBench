; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DIG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_10__, i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"odm_DIG() ===========================>\0A\0A\00", align 1
@DM_DIG_MIN_NIC = common dso_local global i32 0, align 4
@DM_DIG_MAX_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"odm_DIG(): Absolutely upper bound = 0x%x, lower bound = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"odm_DIG(): Coex. case: Force upper bound to RSSI + %d !!!!!!\0A\00", align 1
@ODM_BB_ANT_DIV = common dso_local global i32 0, align 4
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8
@S0S1_SW_ANTDIV = common dso_local global i64 0, align 8
@ODM_COMP_ANT_DIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"odm_DIG(): Antenna diversity case: Force lower bound to 0x%x !!!!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"odm_DIG(): Antenna diversity case: RSSI_max = 0x%x !!!!!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"odm_DIG(): Adjust boundary by RSSI Upper bound = 0x%x, Lower bound = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [93 x i8] c"odm_DIG(): Link status: bLinked = %d, RSSI = %d, bFirstConnect = %d, bFirsrDisConnect = %d\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"odm_DIG(): Abnormal #beacon (%d) case in STA mode: Force lower bound to 0x%x !!!!!!\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"odm_DIG(): Abnormal lower bound case: Force lower bound to 0x%x !!!!!!\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"odm_DIG(): False alarm threshold = %d, %d, %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"odm_DIG(): Adjust IGI after link\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"odm_DIG(): First connect case: IGI does on-shot to 0x%x\0A\00", align 1
@DM_DIG_FA_TH1 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [66 x i8] c"odm_DIG(): Abnormal #beacon (%d) case: IGI does one-shot to 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"odm_DIG(): Adjust IGI before link\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"odm_DIG(): First disconnect case: IGI does on-shot to lower bound\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"odm_DIG(): CurIGValue = 0x%x, TotalFA = %d\0A\0A\00", align 1
@ODM_BB_ADAPTIVITY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [62 x i8] c"odm_DIG(): Adaptivity case: Force upper bound to 0x%x !!!!!!\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"odm_DIG(): Adaptivity case: Force lower bound to 0x%x !!!!!!\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DIG(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 15
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 14
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i64 @odm_DigAbort(%struct.TYPE_13__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %675

35:                                               ; preds = %1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = load i32, i32* @ODM_COMP_DIG, align 4
  %38 = load i32, i32* @ODM_DBG_LOUD, align 4
  %39 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %56, %48
  %62 = phi i1 [ false, %48 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br label %73

73:                                               ; preds = %68, %61
  %74 = phi i1 [ false, %61 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %7, align 4
  store i32 90, i32* %10, align 4
  %76 = load i32, i32* @DM_DIG_MIN_NIC, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @DM_DIG_MAX_AP, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load i32, i32* @ODM_COMP_DIG, align 4
  %80 = load i32, i32* @ODM_DBG_LOUD, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %78, i32 %79, i32 %80, i8* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %162

90:                                               ; preds = %73
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %162

93:                                               ; preds = %90
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  store i32 10, i32* %13, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = load i32, i32* @ODM_COMP_DIG, align 4
  %101 = load i32, i32* @ODM_DBG_LOUD, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %99, i32 %100, i32 %101, i8* %104)
  br label %107

106:                                              ; preds = %93
  store i32 15, i32* %13, align 4
  br label %107

107:                                              ; preds = %106, %98
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %140

119:                                              ; preds = %107
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %139

131:                                              ; preds = %119
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %127
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %9, align 4
  br label %161

148:                                              ; preds = %140
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %9, align 4
  br label %160

156:                                              ; preds = %148
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %156, %154
  br label %161

161:                                              ; preds = %160, %146
  br label %167

162:                                              ; preds = %90, %73
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %162, %161
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %233

172:                                              ; preds = %167
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %233, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ODM_BB_ANT_DIV, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %232

184:                                              ; preds = %177
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %202, label %190

190:                                              ; preds = %184
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @S0S1_SW_ANTDIV, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %231

202:                                              ; preds = %196, %190, %184
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %9, align 4
  br label %214

210:                                              ; preds = %202
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %210, %208
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %217 = load i32, i32* @ODM_DBG_LOUD, align 4
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %215, i32 %216, i32 %217, i8* %220)
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %224 = load i32, i32* @ODM_DBG_LOUD, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %222, i32 %223, i32 %224, i8* %229)
  br label %231

231:                                              ; preds = %214, %196
  br label %232

232:                                              ; preds = %231, %177
  br label %233

233:                                              ; preds = %232, %172, %167
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %235 = load i32, i32* @ODM_COMP_DIG, align 4
  %236 = load i32, i32* @ODM_DBG_LOUD, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %234, i32 %235, i32 %236, i8* %242)
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %245 = load i32, i32* @ODM_COMP_DIG, align 4
  %246 = load i32, i32* @ODM_DBG_LOUD, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to i8*
  %257 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %244, i32 %245, i32 %246, i8* %256)
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %233
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 6
  store i32 %264, i32* %266, align 8
  br label %274

267:                                              ; preds = %233
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @odm_ForbiddenIGICheck(%struct.TYPE_13__* %268, i32 %269, i32 %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %267, %260
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %311

279:                                              ; preds = %274
  %280 = load i32, i32* %6, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %311, label %282

282:                                              ; preds = %279
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %286, 5
  br i1 %287, label %288, label %310

288:                                              ; preds = %282
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 12
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %310

293:                                              ; preds = %288
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 5
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %298 = load i32, i32* @ODM_COMP_DIG, align 4
  %299 = load i32, i32* @ODM_DBG_LOUD, align 4
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 11
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %297, i32 %298, i32 %299, i8* %308)
  br label %310

310:                                              ; preds = %293, %288, %282
  br label %311

311:                                              ; preds = %310, %279, %274
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %314, %317
  br i1 %318, label %319, label %334

319:                                              ; preds = %311
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %326 = load i32, i32* @ODM_COMP_DIG, align 4
  %327 = load i32, i32* @ODM_DBG_LOUD, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = inttoptr i64 %331 to i8*
  %333 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %325, i32 %326, i32 %327, i8* %332)
  br label %334

334:                                              ; preds = %319, %311
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %336 = load i32, i32* %18, align 4
  %337 = load i32, i32* %19, align 4
  %338 = load i64, i64* %17, align 8
  %339 = load i64, i64* %16, align 8
  %340 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %341 = call i32 @odm_FAThresholdCheck(%struct.TYPE_13__* %335, i32 %336, i32 %337, i64 %338, i64 %339, i64* %340)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %343 = load i32, i32* @ODM_COMP_DIG, align 4
  %344 = load i32, i32* @ODM_DBG_LOUD, align 4
  %345 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %346 = load i64, i64* %345, align 16
  %347 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %350 = load i64, i64* %349, align 16
  %351 = inttoptr i64 %350 to i8*
  %352 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %342, i32 %343, i32 %344, i8* %351)
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %473

357:                                              ; preds = %334
  %358 = load i32, i32* %19, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %473

360:                                              ; preds = %357
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %362 = load i32, i32* @ODM_COMP_DIG, align 4
  %363 = load i32, i32* @ODM_DBG_LOUD, align 4
  %364 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %361, i32 %362, i32 %363, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %365 = load i32, i32* %20, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %373, label %367

367:                                              ; preds = %360
  %368 = load i32, i32* %6, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %407

370:                                              ; preds = %367
  %371 = load i32, i32* %19, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %407

373:                                              ; preds = %370, %360
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 8
  store i64 0, i64* %375, align 8
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %8, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %392

381:                                              ; preds = %373
  %382 = load i32, i32* %12, align 4
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = icmp slt i32 %382, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %381
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  store i32 %390, i32* %12, align 4
  br label %391

391:                                              ; preds = %387, %381
  br label %399

392:                                              ; preds = %373
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %8, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = load i32, i32* %8, align 4
  store i32 %397, i32* %12, align 4
  br label %398

398:                                              ; preds = %396, %392
  br label %399

399:                                              ; preds = %398, %391
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %401 = load i32, i32* @ODM_COMP_DIG, align 4
  %402 = load i32, i32* @ODM_DBG_LOUD, align 4
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = inttoptr i64 %404 to i8*
  %406 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %400, i32 %401, i32 %402, i8* %405)
  br label %472

407:                                              ; preds = %370, %367
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %412 = load i64, i64* %411, align 16
  %413 = icmp sgt i64 %410, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %407
  %415 = load i32, i32* %12, align 4
  %416 = add nsw i32 %415, 4
  store i32 %416, i32* %12, align 4
  br label %439

417:                                              ; preds = %407
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %422 = load i64, i64* %421, align 8
  %423 = icmp sgt i64 %420, %422
  br i1 %423, label %424, label %427

424:                                              ; preds = %417
  %425 = load i32, i32* %12, align 4
  %426 = add nsw i32 %425, 2
  store i32 %426, i32* %12, align 4
  br label %438

427:                                              ; preds = %417
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %432 = load i64, i64* %431, align 16
  %433 = icmp slt i64 %430, %432
  br i1 %433, label %434, label %437

434:                                              ; preds = %427
  %435 = load i32, i32* %12, align 4
  %436 = sub nsw i32 %435, 2
  store i32 %436, i32* %12, align 4
  br label %437

437:                                              ; preds = %434, %427
  br label %438

438:                                              ; preds = %437, %424
  br label %439

439:                                              ; preds = %438, %414
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 11
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp slt i32 %443, 5
  br i1 %444, label %445, label %471

445:                                              ; preds = %439
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @DM_DIG_FA_TH1, align 8
  %450 = icmp slt i64 %448, %449
  br i1 %450, label %451, label %471

451:                                              ; preds = %445
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 12
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %471

456:                                              ; preds = %451
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 5
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %12, align 4
  %460 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %461 = load i32, i32* @ODM_COMP_DIG, align 4
  %462 = load i32, i32* @ODM_DBG_LOUD, align 4
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 11
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %12, align 4
  %468 = sext i32 %467 to i64
  %469 = inttoptr i64 %468 to i8*
  %470 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %460, i32 %461, i32 %462, i8* %469)
  br label %471

471:                                              ; preds = %456, %451, %445, %439
  br label %472

472:                                              ; preds = %471, %399
  br label %523

473:                                              ; preds = %357, %334
  %474 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %475 = load i32, i32* @ODM_COMP_DIG, align 4
  %476 = load i32, i32* @ODM_DBG_LOUD, align 4
  %477 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %474, i32 %475, i32 %476, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %478 = load i32, i32* %7, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %473
  %481 = load i32, i32* %21, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %480, %473
  %484 = load i32, i32* %11, align 4
  store i32 %484, i32* %12, align 4
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %486 = load i32, i32* @ODM_COMP_DIG, align 4
  %487 = load i32, i32* @ODM_DBG_LOUD, align 4
  %488 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %485, i32 %486, i32 %487, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0))
  br label %522

489:                                              ; preds = %480
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  %494 = load i64, i64* %493, align 16
  %495 = icmp sgt i64 %492, %494
  br i1 %495, label %496, label %499

496:                                              ; preds = %489
  %497 = load i32, i32* %12, align 4
  %498 = add nsw i32 %497, 4
  store i32 %498, i32* %12, align 4
  br label %521

499:                                              ; preds = %489
  %500 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  %504 = load i64, i64* %503, align 8
  %505 = icmp sgt i64 %502, %504
  br i1 %505, label %506, label %509

506:                                              ; preds = %499
  %507 = load i32, i32* %12, align 4
  %508 = add nsw i32 %507, 2
  store i32 %508, i32* %12, align 4
  br label %520

509:                                              ; preds = %499
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %514 = load i64, i64* %513, align 16
  %515 = icmp slt i64 %512, %514
  br i1 %515, label %516, label %519

516:                                              ; preds = %509
  %517 = load i32, i32* %12, align 4
  %518 = sub nsw i32 %517, 2
  store i32 %518, i32* %12, align 4
  br label %519

519:                                              ; preds = %516, %509
  br label %520

520:                                              ; preds = %519, %506
  br label %521

521:                                              ; preds = %520, %496
  br label %522

522:                                              ; preds = %521, %483
  br label %523

523:                                              ; preds = %522, %472
  %524 = load i32, i32* %12, align 4
  %525 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = icmp slt i32 %524, %527
  br i1 %528, label %529, label %533

529:                                              ; preds = %523
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 5
  %532 = load i32, i32* %531, align 4
  store i32 %532, i32* %12, align 4
  br label %533

533:                                              ; preds = %529, %523
  %534 = load i32, i32* %12, align 4
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = icmp sgt i32 %534, %537
  br i1 %538, label %539, label %543

539:                                              ; preds = %533
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %12, align 4
  br label %543

543:                                              ; preds = %539, %533
  %544 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %545 = load i32, i32* @ODM_COMP_DIG, align 4
  %546 = load i32, i32* @ODM_DBG_LOUD, align 4
  %547 = load i32, i32* %12, align 4
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = inttoptr i64 %550 to i8*
  %552 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %544, i32 %545, i32 %546, i8* %551)
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 5
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* @ODM_BB_ADAPTIVITY, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %603

559:                                              ; preds = %543
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = icmp eq i32 %562, 1
  br i1 %563, label %564, label %603

564:                                              ; preds = %559
  %565 = load i32, i32* %12, align 4
  %566 = load i32, i32* %15, align 4
  %567 = icmp sgt i32 %565, %566
  br i1 %567, label %568, label %570

568:                                              ; preds = %564
  %569 = load i32, i32* %15, align 4
  store i32 %569, i32* %12, align 4
  br label %570

570:                                              ; preds = %568, %564
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 7
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %570
  %576 = load i32, i32* %12, align 4
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 7
  %579 = load i32, i32* %578, align 8
  %580 = icmp slt i32 %576, %579
  br i1 %580, label %581, label %585

581:                                              ; preds = %575
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 7
  %584 = load i32, i32* %583, align 8
  store i32 %584, i32* %12, align 4
  br label %585

585:                                              ; preds = %581, %575
  br label %586

586:                                              ; preds = %585, %570
  %587 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %588 = load i32, i32* @ODM_COMP_DIG, align 4
  %589 = load i32, i32* @ODM_DBG_LOUD, align 4
  %590 = load i32, i32* %15, align 4
  %591 = sext i32 %590 to i64
  %592 = inttoptr i64 %591 to i8*
  %593 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %587, i32 %588, i32 %589, i8* %592)
  %594 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %595 = load i32, i32* @ODM_COMP_DIG, align 4
  %596 = load i32, i32* @ODM_DBG_LOUD, align 4
  %597 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 8
  %600 = sext i32 %599 to i64
  %601 = inttoptr i64 %600 to i8*
  %602 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %594, i32 %595, i32 %596, i8* %601)
  br label %603

603:                                              ; preds = %586, %559, %543
  %604 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %605 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %604, i32 0, i32 10
  %606 = load i64, i64* %605, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %663

608:                                              ; preds = %603
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %638

613:                                              ; preds = %608
  %614 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %615 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %614, i32 0, i32 7
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* %12, align 4
  %618 = icmp sgt i32 %616, %617
  br i1 %618, label %619, label %623

619:                                              ; preds = %613
  %620 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %621 = load i32, i32* %12, align 4
  %622 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %620, i32 %621)
  br label %629

623:                                              ; preds = %613
  %624 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %626 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %625, i32 0, i32 7
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %624, i32 %627)
  br label %629

629:                                              ; preds = %623, %619
  %630 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %631 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %630, i32 0, i32 2
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %633, i32 0, i32 2
  store i32 %632, i32* %634, align 8
  %635 = load i32, i32* %9, align 4
  %636 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %636, i32 0, i32 1
  store i32 %635, i32* %637, align 4
  br label %662

638:                                              ; preds = %608
  %639 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %640 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %639, i32 0, i32 9
  %641 = load i64, i64* %640, align 8
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %646

643:                                              ; preds = %638
  %644 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %645 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %644, i32 28)
  br label %661

646:                                              ; preds = %638
  %647 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %648 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %647, i32 0, i32 8
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %646
  %652 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %653 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %652, i32 40)
  br label %660

654:                                              ; preds = %646
  %655 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %656 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %657 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %656, i32 0, i32 7
  %658 = load i32, i32* %657, align 4
  %659 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %655, i32 %658)
  br label %660

660:                                              ; preds = %654, %651
  br label %661

661:                                              ; preds = %660, %643
  br label %662

662:                                              ; preds = %661, %629
  br label %675

663:                                              ; preds = %603
  %664 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %665 = load i32, i32* %12, align 4
  %666 = call i32 @ODM_Write_DIG(%struct.TYPE_13__* %664, i32 %665)
  %667 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %668 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %671 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %670, i32 0, i32 2
  store i32 %669, i32* %671, align 8
  %672 = load i32, i32* %9, align 4
  %673 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %674 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %673, i32 0, i32 1
  store i32 %672, i32* %674, align 4
  br label %675

675:                                              ; preds = %34, %663, %662
  ret void
}

declare dso_local i64 @odm_DigAbort(%struct.TYPE_13__*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i32 @odm_ForbiddenIGICheck(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @odm_FAThresholdCheck(%struct.TYPE_13__*, i32, i32, i64, i64, i64*) #1

declare dso_local i32 @ODM_Write_DIG(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
