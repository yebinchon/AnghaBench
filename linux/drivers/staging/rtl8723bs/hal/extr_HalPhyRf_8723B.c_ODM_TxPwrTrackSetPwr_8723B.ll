; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_ODM_TxPwrTrackSetPwr_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_ODM_TxPwrTrackSetPwr_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32, i32, i32, i64, i32, %struct.TYPE_8__, i32*, %struct.adapter*, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32** }
%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@ODM_COMP_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"===>ODM_TxPwrTrackSetPwr8723B\0A\00", align 1
@MGN_1M = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_6M = common dso_local global i32 0, align 4
@MGN_48M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@MGN_MCS0 = common dso_local global i32 0, align 4
@MGN_MCS2 = common dso_local global i32 0, align 4
@MGN_MCS3 = common dso_local global i32 0, align 4
@MGN_MCS4 = common dso_local global i32 0, align 4
@MGN_MCS5 = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"TxRate = 0x%x, PwrTrackingLimit =%d\0A\00", align 1
@TXAGC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"odm_TxPwrTrackSetPwr8723B CH =%d\0A\00", align 1
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@BBSWING = common dso_local global i64 0, align 8
@CCK_TABLE_SIZE = common dso_local global i32 0, align 4
@MIX_MODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [119 x i8] c"pDM_Odm->DefaultOfdmIndex =%d,  pDM_Odm->DefaultCCKIndex =%d, pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"******Path_A Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"******Path_A Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"******Path_A Compensate with BBSwing , Final_OFDM_Swing_Index = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"******Path_A pDM_Odm->Modify_TxAGC_Flag = false\0A\00", align 1
@.str.8 = private unnamed_addr constant [94 x i8] c"******Path_A CCK Over Limit , PwrTrackingLimit_CCK = %d , pDM_Odm->Remnant_CCKSwingIdx  = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [95 x i8] c"******Path_A CCK Under Limit , PwrTrackingLimit_CCK = %d , pDM_Odm->Remnant_CCKSwingIdx  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"******Path_A CCK Compensate with BBSwing , Final_CCK_Swing_Index = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"******Path_A pDM_Odm->Modify_TxAGC_Flag_CCK = false\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_TxPwrTrackSetPwr_8723B(%struct.TYPE_10__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.hal_com_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.adapter*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 11
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %9, align 8
  %21 = load %struct.adapter*, %struct.adapter** %9, align 8
  %22 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %21)
  store %struct.hal_com_data* %22, %struct.hal_com_data** %10, align 8
  store i32 34, i32* %11, align 4
  store i32 28, i32* %12, align 4
  store i32 255, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 12
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @HwRateToMRate(i32 %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %43

40:                                               ; preds = %4
  %41 = load i64, i64* %16, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %46 = load i32, i32* @ODM_DBG_LOUD, align 4
  %47 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %110

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @MGN_1M, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @MGN_11M, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 28, i32* %12, align 4
  br label %109

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @MGN_6M, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @MGN_48M, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 36, i32* %11, align 4
  br label %108

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @MGN_54M, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 34, i32* %11, align 4
  br label %107

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @MGN_MCS0, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @MGN_MCS2, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 38, i32* %11, align 4
  br label %106

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @MGN_MCS3, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @MGN_MCS4, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 36, i32* %11, align 4
  br label %105

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @MGN_MCS5, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @MGN_MCS7, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 34, i32* %11, align 4
  br label %104

100:                                              ; preds = %95, %91
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %99
  br label %105

105:                                              ; preds = %104, %90
  br label %106

106:                                              ; preds = %105, %81
  br label %107

107:                                              ; preds = %106, %72
  br label %108

108:                                              ; preds = %107, %67
  br label %109

109:                                              ; preds = %108, %58
  br label %110

110:                                              ; preds = %109, %43
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %113 = load i32, i32* @ODM_DBG_LOUD, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %111, i32 %112, i32 %113, i8* %117)
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @TXAGC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %174

122:                                              ; preds = %110
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 11
  %125 = load %struct.adapter*, %struct.adapter** %124, align 8
  store %struct.adapter* %125, %struct.adapter** %17, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %128 = load i32, i32* @ODM_DBG_LOUD, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 10
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %126, i32 %127, i32 %128, i8* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 5
  store i32 1, i32* %152, align 4
  %153 = load %struct.adapter*, %struct.adapter** %17, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %156 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CCK, align 4
  %159 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %153, i32 %154, i32 %157, i32 %158)
  %160 = load %struct.adapter*, %struct.adapter** %17, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %163 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @OFDM, align 4
  %166 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %160, i32 %161, i32 %164, i32 %165)
  %167 = load %struct.adapter*, %struct.adapter** %17, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %170 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HT_MCS0_MCS7, align 4
  %173 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %167, i32 %168, i32 %171, i32 %172)
  br label %615

174:                                              ; preds = %110
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @BBSWING, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %259

178:                                              ; preds = %174
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %181, %188
  store i32 %189, i32* %14, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %192, %199
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %178
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %14, align 4
  br label %211

206:                                              ; preds = %178
  %207 = load i32, i32* %14, align 4
  %208 = icmp sle i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %209, %206
  br label %211

211:                                              ; preds = %210, %204
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  br label %225

218:                                              ; preds = %211
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = icmp sle i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* %15, align 4
  br label %224

224:                                              ; preds = %223, %218
  br label %225

225:                                              ; preds = %224, %215
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 9
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32**, i32*** %236, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @setIqkMatrix_8723B(%struct.TYPE_10__* %226, i32 %227, i32 %228, i32 %241, i32 %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @setCCKFilterCoefficient(%struct.TYPE_10__* %256, i32 %257)
  br label %614

259:                                              ; preds = %174
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* @MIX_MODE, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %612

263:                                              ; preds = %259
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %265 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %266 = load i32, i32* @ODM_DBG_LOUD, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %264, i32 %265, i32 %266, i8* %282)
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %286, %293
  store i32 %294, i32* %14, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %297, %304
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp sgt i32 %306, %307
  br i1 %308, label %309, label %379

309:                                              ; preds = %263
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %11, align 4
  %312 = sub nsw i32 %310, %311
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %312, i32* %318, align 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* %7, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 9
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i32**, i32*** %329, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 9
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load i32**, i32*** %342, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 0
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @setIqkMatrix_8723B(%struct.TYPE_10__* %319, i32 %320, i32 %321, i32 %334, i32 %347)
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 4
  store i32 1, i32* %350, align 8
  %351 = load %struct.adapter*, %struct.adapter** %9, align 8
  %352 = load i32, i32* %7, align 4
  %353 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %354 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @OFDM, align 4
  %357 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %351, i32 %352, i32 %355, i32 %356)
  %358 = load %struct.adapter*, %struct.adapter** %9, align 8
  %359 = load i32, i32* %7, align 4
  %360 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %361 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @HT_MCS0_MCS7, align 4
  %364 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %358, i32 %359, i32 %362, i32 %363)
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %366 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %367 = load i32, i32* @ODM_DBG_LOUD, align 4
  %368 = load i32, i32* %11, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 2
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = inttoptr i64 %376 to i8*
  %378 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %365, i32 %366, i32 %367, i8* %377)
  br label %519

379:                                              ; preds = %263
  %380 = load i32, i32* %14, align 4
  %381 = icmp sle i32 %380, 0
  br i1 %381, label %382, label %448

382:                                              ; preds = %379
  %383 = load i32, i32* %14, align 4
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %7, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 %383, i32* %389, align 4
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %391 = load i32, i32* %7, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 9
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 0
  %400 = load i32**, i32*** %399, align 8
  %401 = getelementptr inbounds i32*, i32** %400, i64 0
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 9
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %413 = load i32**, i32*** %412, align 8
  %414 = getelementptr inbounds i32*, i32** %413, i64 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 1
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @setIqkMatrix_8723B(%struct.TYPE_10__* %390, i32 0, i32 %391, i32 %404, i32 %417)
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 4
  store i32 1, i32* %420, align 8
  %421 = load %struct.adapter*, %struct.adapter** %9, align 8
  %422 = load i32, i32* %7, align 4
  %423 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %424 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @OFDM, align 4
  %427 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %421, i32 %422, i32 %425, i32 %426)
  %428 = load %struct.adapter*, %struct.adapter** %9, align 8
  %429 = load i32, i32* %7, align 4
  %430 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %431 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @HT_MCS0_MCS7, align 4
  %434 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %428, i32 %429, i32 %432, i32 %433)
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %436 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %437 = load i32, i32* @ODM_DBG_LOUD, align 4
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %7, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = inttoptr i64 %445 to i8*
  %447 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %435, i32 %436, i32 %437, i8* %446)
  br label %518

448:                                              ; preds = %379
  %449 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %450 = load i32, i32* %14, align 4
  %451 = load i32, i32* %7, align 4
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 9
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %454, align 8
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 0
  %460 = load i32**, i32*** %459, align 8
  %461 = getelementptr inbounds i32*, i32** %460, i64 0
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 0
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 9
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %467, align 8
  %469 = load i32, i32* %8, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load i32**, i32*** %472, align 8
  %474 = getelementptr inbounds i32*, i32** %473, i64 0
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @setIqkMatrix_8723B(%struct.TYPE_10__* %449, i32 %450, i32 %451, i32 %464, i32 %477)
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %480 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %481 = load i32, i32* @ODM_DBG_LOUD, align 4
  %482 = load i32, i32* %14, align 4
  %483 = sext i32 %482 to i64
  %484 = inttoptr i64 %483 to i8*
  %485 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %479, i32 %480, i32 %481, i8* %484)
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 4
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %517

490:                                              ; preds = %448
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 2
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %7, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  store i32 0, i32* %496, align 4
  %497 = load %struct.adapter*, %struct.adapter** %9, align 8
  %498 = load i32, i32* %7, align 4
  %499 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %500 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @OFDM, align 4
  %503 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %497, i32 %498, i32 %501, i32 %502)
  %504 = load %struct.adapter*, %struct.adapter** %9, align 8
  %505 = load i32, i32* %7, align 4
  %506 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %507 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @HT_MCS0_MCS7, align 4
  %510 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %504, i32 %505, i32 %508, i32 %509)
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 4
  store i32 0, i32* %512, align 8
  %513 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %514 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %515 = load i32, i32* @ODM_DBG_LOUD, align 4
  %516 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %513, i32 %514, i32 %515, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %517

517:                                              ; preds = %490, %448
  br label %518

518:                                              ; preds = %517, %382
  br label %519

519:                                              ; preds = %518, %309
  %520 = load i32, i32* %15, align 4
  %521 = load i32, i32* %12, align 4
  %522 = icmp sgt i32 %520, %521
  br i1 %522, label %523, label %551

523:                                              ; preds = %519
  %524 = load i32, i32* %15, align 4
  %525 = load i32, i32* %12, align 4
  %526 = sub nsw i32 %524, %525
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 8
  store i32 %526, i32* %528, align 8
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %530 = load i32, i32* %12, align 4
  %531 = call i32 @setCCKFilterCoefficient(%struct.TYPE_10__* %529, i32 %530)
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 5
  store i32 1, i32* %533, align 4
  %534 = load %struct.adapter*, %struct.adapter** %9, align 8
  %535 = load i32, i32* %7, align 4
  %536 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %537 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @CCK, align 4
  %540 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %534, i32 %535, i32 %538, i32 %539)
  %541 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %542 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %543 = load i32, i32* @ODM_DBG_LOUD, align 4
  %544 = load i32, i32* %12, align 4
  %545 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 8
  %547 = load i32, i32* %546, align 8
  %548 = sext i32 %547 to i64
  %549 = inttoptr i64 %548 to i8*
  %550 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %541, i32 %542, i32 %543, i8* %549)
  br label %611

551:                                              ; preds = %519
  %552 = load i32, i32* %15, align 4
  %553 = icmp sle i32 %552, 0
  br i1 %553, label %554, label %578

554:                                              ; preds = %551
  %555 = load i32, i32* %15, align 4
  %556 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 8
  store i32 %555, i32* %557, align 8
  %558 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %559 = call i32 @setCCKFilterCoefficient(%struct.TYPE_10__* %558, i32 0)
  %560 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 5
  store i32 1, i32* %561, align 4
  %562 = load %struct.adapter*, %struct.adapter** %9, align 8
  %563 = load i32, i32* %7, align 4
  %564 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %565 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* @CCK, align 4
  %568 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %562, i32 %563, i32 %566, i32 %567)
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %570 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %571 = load i32, i32* @ODM_DBG_LOUD, align 4
  %572 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 8
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = inttoptr i64 %575 to i8*
  %577 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %569, i32 %570, i32 %571, i8* %576)
  br label %610

578:                                              ; preds = %551
  %579 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %580 = load i32, i32* %15, align 4
  %581 = call i32 @setCCKFilterCoefficient(%struct.TYPE_10__* %579, i32 %580)
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %583 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %584 = load i32, i32* @ODM_DBG_LOUD, align 4
  %585 = load i32, i32* %15, align 4
  %586 = sext i32 %585 to i64
  %587 = inttoptr i64 %586 to i8*
  %588 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %582, i32 %583, i32 %584, i8* %587)
  %589 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i32 0, i32 5
  %591 = load i32, i32* %590, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %609

593:                                              ; preds = %578
  %594 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %594, i32 0, i32 8
  store i32 0, i32* %595, align 8
  %596 = load %struct.adapter*, %struct.adapter** %9, align 8
  %597 = load i32, i32* %7, align 4
  %598 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %599 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* @CCK, align 4
  %602 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %596, i32 %597, i32 %600, i32 %601)
  %603 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 5
  store i32 0, i32* %604, align 4
  %605 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %606 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %607 = load i32, i32* @ODM_DBG_LOUD, align 4
  %608 = call i32 @ODM_RT_TRACE(%struct.TYPE_10__* %605, i32 %606, i32 %607, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %609

609:                                              ; preds = %593, %578
  br label %610

610:                                              ; preds = %609, %554
  br label %611

611:                                              ; preds = %610, %523
  br label %613

612:                                              ; preds = %259
  br label %615

613:                                              ; preds = %611
  br label %614

614:                                              ; preds = %613, %225
  br label %615

615:                                              ; preds = %612, %614, %122
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @HwRateToMRate(i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @setIqkMatrix_8723B(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @setCCKFilterCoefficient(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
