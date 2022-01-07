; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_power_tracking_cb_thermal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_power_tracking_cb_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64*, i64, i64*, i64, i64, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@OFDM_Table_Length = common dso_local global i32 0, align 4
@OFDMSwingTable = common dso_local global i64* null, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Initial reg0x%x = 0x%x, OFDM_index = 0x%x\0A\00", align 1
@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@CCK_Table_length = common dso_local global i32 0, align 4
@CCKSwingTable_Ch1_Ch13 = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Initial reg0x%x = 0x%x, CCK_index = 0x%x\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Readback ThermalMeterA = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Valid ThermalMeterA = %d\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Record_CCK_20Mindex / Record_CCK_40Mindex = %d / %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Update OFDMSwing[%d] = 0x%x\0A\00", align 1
@ThermalMeterVal = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_tx_power_tracking_cb_thermal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_tx_power_tracking_cb_thermal(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %96, label %19

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %22 = load i32, i32* @bMaskDWord, align 4
  %23 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %20, i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %54, %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @OFDM_Table_Length, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64*, i64** @OFDMSwingTable, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %44 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46, i64 %51)
  br label %53

53:                                               ; preds = %36, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* @rCCK0_TxFilter1, align 4
  %60 = load i32, i32* @bMaskByte2, align 4
  %61 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %58, i32 %59, i32 %60)
  store i64 %61, i64* %5, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %90, %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @CCK_Table_length, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = load i64**, i64*** @CCKSwingTable_Ch1_Ch13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %67, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %82 = load i32, i32* @rCCK0_TxFilter1, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %84, i64 %87)
  br label %93

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %62

93:                                               ; preds = %76, %62
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %307

96:                                               ; preds = %1
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @RF90_PATH_A, align 4
  %99 = call i64 @rtl92e_get_rf_reg(%struct.net_device* %97, i32 %98, i32 18, i32 120)
  store i64 %99, i64* %4, align 8
  %100 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %101 = load i64, i64* %4, align 8
  %102 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = icmp slt i64 %103, 3
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %4, align 8
  %107 = icmp sgt i64 %106, 13
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %96
  br label %307

109:                                              ; preds = %105
  %110 = load i64, i64* %4, align 8
  %111 = icmp sge i64 %110, 12
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i64 12, i64* %4, align 8
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %115 = load i64, i64* %4, align 8
  %116 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  store i64 9, i64* %120, align 8
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  store i64 9, i64* %124, align 8
  %125 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %4, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %113
  %133 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %134 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = sub nsw i64 %137, %138
  %140 = add nsw i64 6, %139
  store i64 %140, i64* %8, align 8
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %8, align 8
  %142 = sub nsw i64 %141, 6
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i32, i32* @OFDM_Table_Length, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp sge i64 %143, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %132
  %148 = load i32, i32* @OFDM_Table_Length, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %6, align 8
  br label %151

151:                                              ; preds = %147, %132
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* @CCK_Table_length, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sge i64 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* @CCK_Table_length, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %8, align 8
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i64, i64* %9, align 8
  %162 = load i32, i32* @CCK_Table_length, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp sge i64 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* @CCK_Table_length, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %9, align 8
  br label %169

169:                                              ; preds = %165, %160
  br label %187

170:                                              ; preds = %113
  %171 = load i64, i64* %4, align 8
  %172 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %173 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %171, %176
  store i64 %177, i64* %10, align 8
  %178 = load i64, i64* %10, align 8
  %179 = icmp sge i64 %178, 6
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %186

181:                                              ; preds = %170
  %182 = load i64, i64* %10, align 8
  %183 = sub nsw i64 6, %182
  store i64 %183, i64* %6, align 8
  %184 = load i64, i64* %10, align 8
  %185 = sub nsw i64 6, %184
  store i64 %185, i64* %8, align 8
  br label %186

186:                                              ; preds = %181, %180
  store i64 0, i64* %9, align 8
  br label %187

187:                                              ; preds = %186, %169
  %188 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %189 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i64, i64* %9, align 8
  store i64 %194, i64* %7, align 8
  br label %197

195:                                              ; preds = %187
  %196 = load i64, i64* %8, align 8
  store i64 %196, i64* %7, align 8
  br label %197

197:                                              ; preds = %195, %193
  %198 = load i64, i64* %8, align 8
  %199 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %200 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %199, i32 0, i32 5
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 6
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %205 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %206 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %209 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %204, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %207, i64 %210)
  %212 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %213 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %212, i32 0, i32 9
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 14
  br i1 %218, label %219, label %227

219:                                              ; preds = %197
  %220 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %221 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %226 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %225, i32 0, i32 7
  store i32 1, i32* %226, align 8
  store i32 1, i32* %12, align 4
  br label %244

227:                                              ; preds = %219, %197
  %228 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %229 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %228, i32 0, i32 9
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 14
  br i1 %234, label %235, label %243

235:                                              ; preds = %227
  %236 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %237 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %242 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %241, i32 0, i32 7
  store i32 0, i32* %242, align 8
  store i32 1, i32* %12, align 4
  br label %243

243:                                              ; preds = %240, %235, %227
  br label %244

244:                                              ; preds = %243, %224
  %245 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %246 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %7, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load i64, i64* %7, align 8
  %252 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %253 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %252, i32 0, i32 2
  store i64 %251, i64* %253, align 8
  store i32 1, i32* %12, align 4
  br label %254

254:                                              ; preds = %250, %244
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load %struct.net_device*, %struct.net_device** %2, align 8
  %259 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %260 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %258, i32 %261)
  br label %263

263:                                              ; preds = %257, %254
  %264 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %265 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %264, i32 0, i32 1
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %6, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %304

271:                                              ; preds = %263
  %272 = load i64, i64* %6, align 8
  %273 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %274 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  store i64 %272, i64* %276, align 8
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %279 = load i32, i32* @bMaskDWord, align 4
  %280 = load i64*, i64** @OFDMSwingTable, align 8
  %281 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %282 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i64, i64* %280, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %277, i32 %278, i32 %279, i64 %287)
  %289 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %290 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %291 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %290, i32 0, i32 1
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64*, i64** @OFDMSwingTable, align 8
  %296 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %297 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %296, i32 0, i32 1
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i64, i64* %295, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %289, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %294, i64 %302)
  br label %304

304:                                              ; preds = %271, %263
  %305 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %306 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %305, i32 0, i32 8
  store i64 0, i64* %306, align 8
  br label %307

307:                                              ; preds = %304, %108, %93
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i64 @rtl92e_get_bb_reg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64, ...) #1

declare dso_local i64 @rtl92e_get_rf_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
