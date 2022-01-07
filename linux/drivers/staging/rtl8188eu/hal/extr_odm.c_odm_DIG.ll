; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DIG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_DIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i64, i64, i64, i64, i32, i64*, %struct.false_alarm_stats, %struct.rtw_dig }
%struct.false_alarm_stats = type { i32 }
%struct.rtw_dig = type { i64, i64, i64, i32, i64, i32, i32, i64, i64 }

@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"odm_DIG()==>\0A\00", align 1
@ODM_BB_DIG = common dso_local global i32 0, align 4
@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"odm_DIG() Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"odm_DIG() Return: In Scan Progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"odm_DIG() Return: PSD is Processing\0A\00", align 1
@DM_DIG_MAX_NIC = common dso_local global i64 0, align 8
@DM_DIG_MIN_NIC = common dso_local global i64 0, align 8
@DM_DIG_MAX_AP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"odm_DIG() : bOneEntryOnly=true,  DIG_Dynamic_MIN=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"odm_DIG() : pDM_Odm->RSSI_Min=%d\0A\00", align 1
@ODM_BB_ANT_DIV = common dso_local global i32 0, align 4
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@ODM_COMP_ANT_DIV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"odm_DIG(): pDM_DigTable->AntDiv_RSSI_max=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"odm_DIG() : No Link\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"dm_DIG(): Abnormally false alarm case.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"odm_DIG(): Normal Case: At Lower Bound\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"odm_DIG(): Normal Case: Approach Lower Bound\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"odm_DIG(): pDM_DigTable->LargeFAHit=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"odm_DIG(): DIG AfterLink\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"DIG: First Connect\0A\00", align 1
@DM_DIG_FA_TH2 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH1 = common dso_local global i32 0, align 4
@DM_DIG_FA_TH0 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"odm_DIG(): DIG BeforeLink\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"odm_DIG(): First DisConnect\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"odm_DIG(): England DIG\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"odm_DIG(): DIG End Adjust IGI\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"odm_DIG(): rx_gain_range_max=0x%x, rx_gain_range_min=0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"odm_DIG(): TotalFA=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"odm_DIG(): CurIGValue=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_DIG(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.rtw_dig*, align 8
  %4 = alloca %struct.false_alarm_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %12, i32 0, i32 8
  store %struct.rtw_dig* %13, %struct.rtw_dig** %3, align 8
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %14, i32 0, i32 7
  store %struct.false_alarm_stats* %15, %struct.false_alarm_stats** %4, align 8
  %16 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = load i32, i32* @ODM_COMP_DIG, align 4
  %21 = load i32, i32* @ODM_DBG_LOUD, align 4
  %22 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %24 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ODM_BB_DIG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %31 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %38 = load i32, i32* @ODM_COMP_DIG, align 4
  %39 = load i32, i32* @ODM_DBG_LOUD, align 4
  %40 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %501

41:                                               ; preds = %29
  %42 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %43 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %42, i32 0, i32 6
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %49 = load i32, i32* @ODM_COMP_DIG, align 4
  %50 = load i32, i32* @ODM_DBG_LOUD, align 4
  %51 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %501

52:                                               ; preds = %41
  %53 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %54 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %59 = load i32, i32* @ODM_COMP_DIG, align 4
  %60 = load i32, i32* @ODM_DBG_LOUD, align 4
  %61 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %501

62:                                               ; preds = %52
  %63 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %64 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %5, align 8
  %66 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %67 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %72 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i1 [ false, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %80 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %85 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %76
  %89 = phi i1 [ false, %76 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i64, i64* @DM_DIG_MAX_NIC, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* @DM_DIG_MIN_NIC, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* @DM_DIG_MAX_AP, align 8
  store i64 %93, i64* %6, align 8
  %94 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %95 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %199

98:                                               ; preds = %88
  %99 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %100 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 20
  %103 = load i64, i64* %9, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %108 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %128

109:                                              ; preds = %98
  %110 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %111 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 20
  %114 = load i64, i64* %10, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %119 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %127

120:                                              ; preds = %109
  %121 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %122 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 20
  %125 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %126 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %116
  br label %128

128:                                              ; preds = %127, %105
  %129 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %130 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %169

133:                                              ; preds = %128
  %134 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %135 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i64, i64* %10, align 8
  store i64 %140, i64* %5, align 8
  br label %154

141:                                              ; preds = %133
  %142 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %143 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i64, i64* %6, align 8
  store i64 %148, i64* %5, align 8
  br label %153

149:                                              ; preds = %141
  %150 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %151 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %5, align 8
  br label %153

153:                                              ; preds = %149, %147
  br label %154

154:                                              ; preds = %153, %139
  %155 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %156 = load i32, i32* @ODM_COMP_DIG, align 4
  %157 = load i32, i32* @ODM_DBG_LOUD, align 4
  %158 = load i64, i64* %5, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %155, i32 %156, i32 %157, i8* %159)
  %161 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %162 = load i32, i32* @ODM_COMP_DIG, align 4
  %163 = load i32, i32* @ODM_DBG_LOUD, align 4
  %164 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %165 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %161, i32 %162, i32 %163, i8* %167)
  br label %198

169:                                              ; preds = %128
  %170 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %171 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ODM_BB_ANT_DIV, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %178 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %184 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %5, align 8
  %186 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %187 = load i32, i32* @ODM_COMP_ANT_DIV, align 4
  %188 = load i32, i32* @ODM_DBG_LOUD, align 4
  %189 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %190 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %186, i32 %187, i32 %188, i8* %192)
  br label %194

194:                                              ; preds = %182, %176
  br label %197

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8
  store i64 %196, i64* %5, align 8
  br label %197

197:                                              ; preds = %195, %194
  br label %198

198:                                              ; preds = %197, %154
  br label %208

199:                                              ; preds = %88
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %202 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* %10, align 8
  store i64 %203, i64* %5, align 8
  %204 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %205 = load i32, i32* @ODM_COMP_DIG, align 4
  %206 = load i32, i32* @ODM_DBG_LOUD, align 4
  %207 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %204, i32 %205, i32 %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %208

208:                                              ; preds = %199, %198
  %209 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %210 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 10000
  br i1 %212, label %213, label %272

213:                                              ; preds = %208
  %214 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %215 = load i32, i32* @ODM_COMP_DIG, align 4
  %216 = load i32, i32* @ODM_DBG_LOUD, align 4
  %217 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %218 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %219 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 3
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %224 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %222, %213
  %228 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %229 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %11, align 8
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i64, i64* %11, align 8
  %235 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %236 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %235, i32 0, i32 4
  store i64 %234, i64* %236, align 8
  %237 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %238 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %237, i32 0, i32 3
  store i32 1, i32* %238, align 8
  br label %239

239:                                              ; preds = %233, %227
  %240 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %241 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp sge i32 %242, 3
  br i1 %243, label %244, label %271

244:                                              ; preds = %239
  %245 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %246 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  %249 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %250 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %244
  %254 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %255 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %259 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 8
  br label %268

260:                                              ; preds = %244
  %261 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %262 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %263, 1
  %265 = trunc i64 %264 to i32
  %266 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %267 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %260, %253
  %269 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %270 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %269, i32 0, i32 6
  store i32 3600, i32* %270, align 4
  br label %271

271:                                              ; preds = %268, %239
  br label %328

272:                                              ; preds = %208
  %273 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %274 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %279 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %279, align 4
  br label %327

282:                                              ; preds = %272
  %283 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %284 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %285, 3
  br i1 %286, label %287, label %323

287:                                              ; preds = %282
  %288 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %289 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %290, 1
  %292 = load i64, i64* %5, align 8
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %294, label %306

294:                                              ; preds = %287
  %295 = load i64, i64* %5, align 8
  %296 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %297 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %296, i32 0, i32 4
  store i64 %295, i64* %297, align 8
  %298 = load i64, i64* %5, align 8
  %299 = trunc i64 %298 to i32
  %300 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %301 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %300, i32 0, i32 5
  store i32 %299, i32* %301, align 8
  %302 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %303 = load i32, i32* @ODM_COMP_DIG, align 4
  %304 = load i32, i32* @ODM_DBG_LOUD, align 4
  %305 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %302, i32 %303, i32 %304, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %322

306:                                              ; preds = %287
  %307 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %308 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %309, -1
  store i64 %310, i64* %308, align 8
  %311 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %312 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %313, 1
  %315 = trunc i64 %314 to i32
  %316 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %317 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 8
  %318 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %319 = load i32, i32* @ODM_COMP_DIG, align 4
  %320 = load i32, i32* @ODM_DBG_LOUD, align 4
  %321 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %318, i32 %319, i32 %320, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %322

322:                                              ; preds = %306, %294
  br label %326

323:                                              ; preds = %282
  %324 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %325 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %324, i32 0, i32 3
  store i32 0, i32* %325, align 8
  br label %326

326:                                              ; preds = %323, %322
  br label %327

327:                                              ; preds = %326, %277
  br label %328

328:                                              ; preds = %327, %271
  %329 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %330 = load i32, i32* @ODM_COMP_DIG, align 4
  %331 = load i32, i32* @ODM_DBG_LOUD, align 4
  %332 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %333 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = inttoptr i64 %335 to i8*
  %337 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %329, i32 %330, i32 %331, i8* %336)
  %338 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %339 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %388

342:                                              ; preds = %328
  %343 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %344 = load i32, i32* @ODM_COMP_DIG, align 4
  %345 = load i32, i32* @ODM_DBG_LOUD, align 4
  %346 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %343, i32 %344, i32 %345, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %347 = load i32, i32* %7, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %342
  %350 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %351 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %11, align 8
  %353 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %354 = load i32, i32* @ODM_COMP_DIG, align 4
  %355 = load i32, i32* @ODM_DBG_LOUD, align 4
  %356 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %353, i32 %354, i32 %355, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %387

357:                                              ; preds = %342
  %358 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %359 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DM_DIG_FA_TH2, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %357
  %364 = load i64, i64* %11, align 8
  %365 = add nsw i64 %364, 4
  store i64 %365, i64* %11, align 8
  br label %386

366:                                              ; preds = %357
  %367 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %368 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @DM_DIG_FA_TH1, align 4
  %371 = icmp sgt i32 %369, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %366
  %373 = load i64, i64* %11, align 8
  %374 = add nsw i64 %373, 2
  store i64 %374, i64* %11, align 8
  br label %385

375:                                              ; preds = %366
  %376 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %377 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @DM_DIG_FA_TH0, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %375
  %382 = load i64, i64* %11, align 8
  %383 = sub nsw i64 %382, 2
  store i64 %383, i64* %11, align 8
  br label %384

384:                                              ; preds = %381, %375
  br label %385

385:                                              ; preds = %384, %372
  br label %386

386:                                              ; preds = %385, %363
  br label %387

387:                                              ; preds = %386, %349
  br label %436

388:                                              ; preds = %328
  %389 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %390 = load i32, i32* @ODM_COMP_DIG, align 4
  %391 = load i32, i32* @ODM_DBG_LOUD, align 4
  %392 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %389, i32 %390, i32 %391, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %393 = load i32, i32* %8, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %388
  %396 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %397 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %11, align 8
  %400 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %401 = load i32, i32* @ODM_COMP_DIG, align 4
  %402 = load i32, i32* @ODM_DBG_LOUD, align 4
  %403 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %400, i32 %401, i32 %402, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %435

404:                                              ; preds = %388
  %405 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %406 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp sgt i32 %407, 10000
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load i64, i64* %11, align 8
  %411 = add nsw i64 %410, 2
  store i64 %411, i64* %11, align 8
  br label %430

412:                                              ; preds = %404
  %413 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %414 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = icmp sgt i32 %415, 8000
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load i64, i64* %11, align 8
  %419 = add nsw i64 %418, 1
  store i64 %419, i64* %11, align 8
  br label %429

420:                                              ; preds = %412
  %421 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %422 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = icmp slt i32 %423, 500
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = load i64, i64* %11, align 8
  %427 = sub nsw i64 %426, 1
  store i64 %427, i64* %11, align 8
  br label %428

428:                                              ; preds = %425, %420
  br label %429

429:                                              ; preds = %428, %417
  br label %430

430:                                              ; preds = %429, %409
  %431 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %432 = load i32, i32* @ODM_COMP_DIG, align 4
  %433 = load i32, i32* @ODM_DBG_LOUD, align 4
  %434 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %431, i32 %432, i32 %433, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %435

435:                                              ; preds = %430, %395
  br label %436

436:                                              ; preds = %435, %387
  %437 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %438 = load i32, i32* @ODM_COMP_DIG, align 4
  %439 = load i32, i32* @ODM_DBG_LOUD, align 4
  %440 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %437, i32 %438, i32 %439, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %441 = load i64, i64* %11, align 8
  %442 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %443 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = icmp sgt i64 %441, %444
  br i1 %445, label %446, label %450

446:                                              ; preds = %436
  %447 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %448 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %11, align 8
  br label %450

450:                                              ; preds = %446, %436
  %451 = load i64, i64* %11, align 8
  %452 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %453 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = icmp slt i64 %451, %455
  br i1 %456, label %457, label %462

457:                                              ; preds = %450
  %458 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %459 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %458, i32 0, i32 5
  %460 = load i32, i32* %459, align 8
  %461 = sext i32 %460 to i64
  store i64 %461, i64* %11, align 8
  br label %462

462:                                              ; preds = %457, %450
  %463 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %464 = load i32, i32* @ODM_COMP_DIG, align 4
  %465 = load i32, i32* @ODM_DBG_LOUD, align 4
  %466 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %467 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %470 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %469, i32 0, i32 5
  %471 = load i32, i32* %470, align 8
  %472 = sext i32 %471 to i64
  %473 = inttoptr i64 %472 to i8*
  %474 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %463, i32 %464, i32 %465, i8* %473)
  %475 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %476 = load i32, i32* @ODM_COMP_DIG, align 4
  %477 = load i32, i32* @ODM_DBG_LOUD, align 4
  %478 = load %struct.false_alarm_stats*, %struct.false_alarm_stats** %4, align 8
  %479 = getelementptr inbounds %struct.false_alarm_stats, %struct.false_alarm_stats* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = inttoptr i64 %481 to i8*
  %483 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %475, i32 %476, i32 %477, i8* %482)
  %484 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %485 = load i32, i32* @ODM_COMP_DIG, align 4
  %486 = load i32, i32* @ODM_DBG_LOUD, align 4
  %487 = load i64, i64* %11, align 8
  %488 = inttoptr i64 %487 to i8*
  %489 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %484, i32 %485, i32 %486, i8* %488)
  %490 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %491 = load i64, i64* %11, align 8
  %492 = call i32 @ODM_Write_DIG(%struct.odm_dm_struct* %490, i64 %491)
  %493 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %494 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %493, i32 0, i32 3
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %497 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %496, i32 0, i32 7
  store i64 %495, i64* %497, align 8
  %498 = load i64, i64* %5, align 8
  %499 = load %struct.rtw_dig*, %struct.rtw_dig** %3, align 8
  %500 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %499, i32 0, i32 1
  store i64 %498, i64* %500, align 8
  br label %501

501:                                              ; preds = %462, %57, %47, %36
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i32 @ODM_Write_DIG(%struct.odm_dm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
