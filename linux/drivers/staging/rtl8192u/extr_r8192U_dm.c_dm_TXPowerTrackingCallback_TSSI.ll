; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_TSSI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tx_config_cmd = type { i32, i64, i32 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"powerlevelOFDM24G = %x\0A\00", align 1
@TXCMD_SET_TX_PWR_TRACKING = common dso_local global i32 0, align 4
@RT_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Set configuration with tx cmd queue fail!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"TSSI_report_value = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"we filtered the data\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Avg_TSSI_Meas_from_driver = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"TSSI_13dBm = %d\0A\00", align 1
@E_FOR_TX_POWER_TRACK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"tx power track is done\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"priv->rfa_txpowertrackingindex = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"priv->rfa_txpowertrackingindex_real = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"priv->cck_present_attenuation_difference = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"priv->cck_present_attenuation = %d\0A\00", align 1
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"tx power track--->limited\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_TXPowerTrackingCallback_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_TXPowerTrackingCallback_TSSI(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tx_config_cmd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %19)
  store %struct.r8192_priv* %20, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 20, i1 false)
  store i64 0, i64* %16, align 8
  store i32 1, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @write_nic_byte(%struct.net_device* %22, i32 442, i32 0)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 12
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 24
  store i32 %31, i32* %6, align 4
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %439, %1
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 30
  br i1 %45, label %46, label %442

46:                                               ; preds = %43
  %47 = load i32, i32* @TXCMD_SET_TX_PWR_TRACKING, align 4
  %48 = getelementptr inbounds %struct.tx_config_cmd, %struct.tx_config_cmd* %5, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.tx_config_cmd, %struct.tx_config_cmd* %5, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.tx_config_cmd, %struct.tx_config_cmd* %5, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @SendTxCommandPacket(%struct.net_device* %52, %struct.tx_config_cmd* %5, i32 24)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @RT_STATUS_FAILURE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %59 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %46
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %435, %60
  %63 = load i32, i32* %7, align 4
  %64 = icmp sle i32 %63, 30
  br i1 %64, label %65, label %438

65:                                               ; preds = %62
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @read_nic_byte(%struct.net_device* %66, i32 442, i32* %13)
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %435

72:                                               ; preds = %65
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32 @read_nic_word(%struct.net_device* %73, i32 316, i64* %14)
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @write_nic_byte(%struct.net_device* %78, i32 442, i32 0)
  br label %438

80:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %108, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 5
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 4
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 308, %89
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %92
  %94 = call i32 @read_nic_byte(%struct.net_device* %88, i32 %90, i32* %93)
  br label %101

95:                                               ; preds = %84
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %98
  %100 = call i32 @read_nic_byte(%struct.net_device* %96, i32 318, i32* %99)
  br label %101

101:                                              ; preds = %95, %87
  %102 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %81

111:                                              ; preds = %81
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 5
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %119, 20
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %4, align 4
  br label %126

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %112

126:                                              ; preds = %121, %112
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = call i32 @write_nic_byte(%struct.net_device* %130, i32 442, i32 0)
  store i32 0, i32* %4, align 4
  %132 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %133 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %141, %129
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 5
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %139
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %134

144:                                              ; preds = %134
  br label %438

145:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %157, %145
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 5
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %16, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %16, align 8
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %146

160:                                              ; preds = %146
  %161 = load i64, i64* %16, align 8
  %162 = mul nsw i64 %161, 100
  %163 = sdiv i64 %162, 5
  store i64 %163, i64* %16, align 8
  %164 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %165 = load i64, i64* %16, align 8
  %166 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %165)
  %167 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %168 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %15, align 8
  %170 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %171 = load i64, i64* %15, align 8
  %172 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %171)
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %160
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* %15, align 8
  %179 = sub nsw i64 %177, %178
  store i64 %179, i64* %18, align 8
  br label %184

180:                                              ; preds = %160
  %181 = load i64, i64* %15, align 8
  %182 = load i64, i64* %16, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %18, align 8
  br label %184

184:                                              ; preds = %180, %176
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* @E_FOR_TX_POWER_TRACK, align 8
  %187 = icmp sle i64 %185, %186
  br i1 %187, label %188, label %217

188:                                              ; preds = %184
  %189 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %190 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %189, i32 0, i32 12
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 4
  %193 = load %struct.net_device*, %struct.net_device** %2, align 8
  %194 = call i32 @write_nic_byte(%struct.net_device* %193, i32 442, i32 0)
  %195 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %196 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %195, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %198 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %199 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %197, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %208 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %209 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %207, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %213 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %214 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %212, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %215)
  br label %449

217:                                              ; preds = %184
  %218 = load i64, i64* %16, align 8
  %219 = load i64, i64* %15, align 8
  %220 = load i64, i64* @E_FOR_TX_POWER_TRACK, align 8
  %221 = sub nsw i64 %219, %220
  %222 = icmp slt i64 %218, %221
  br i1 %222, label %223, label %258

223:                                              ; preds = %217
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %257

228:                                              ; preds = %223
  %229 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %230 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %230, align 8
  %233 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %234 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 4
  br i1 %236, label %237, label %256

237:                                              ; preds = %228
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.net_device*, %struct.net_device** %2, align 8
  %243 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %244 = load i32, i32* @bMaskDWord, align 4
  %245 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %246 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %245, i32 0, i32 13
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %249 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @rtl8192_setBBreg(%struct.net_device* %242, i32 %243, i32 %244, i32 %254)
  br label %256

256:                                              ; preds = %237, %228
  br label %257

257:                                              ; preds = %256, %223
  br label %287

258:                                              ; preds = %217
  %259 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %260 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %261, 36
  br i1 %262, label %263, label %286

263:                                              ; preds = %258
  %264 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %265 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  %268 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %269 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %274 = load i32, i32* @bMaskDWord, align 4
  %275 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %276 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %275, i32 0, i32 13
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %279 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @rtl8192_setBBreg(%struct.net_device* %272, i32 %273, i32 %274, i32 %284)
  br label %286

286:                                              ; preds = %263, %258
  br label %287

287:                                              ; preds = %286, %257
  %288 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %289 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %292 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %290, %293
  %295 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %296 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %295, i32 0, i32 5
  store i32 %294, i32* %296, align 8
  %297 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %298 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %297, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %287
  %303 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %304 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %307 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %305, %308
  %310 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %311 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 4
  br label %322

312:                                              ; preds = %287
  %313 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %314 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %313, i32 0, i32 10
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %317 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %315, %318
  %320 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %321 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 4
  br label %322

322:                                              ; preds = %312, %302
  %323 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %324 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %325, -1
  br i1 %326, label %327, label %382

327:                                              ; preds = %322
  %328 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %329 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %330, 23
  br i1 %331, label %332, label %382

332:                                              ; preds = %327
  %333 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %334 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %333, i32 0, i32 12
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 14
  br i1 %339, label %340, label %353

340:                                              ; preds = %332
  %341 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %342 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %341, i32 0, i32 11
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %353, label %345

345:                                              ; preds = %340
  %346 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %347 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %346, i32 0, i32 11
  store i32 1, i32* %347, align 8
  %348 = load %struct.net_device*, %struct.net_device** %2, align 8
  %349 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %350 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %349, i32 0, i32 11
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %348, i32 %351)
  br label %381

353:                                              ; preds = %340, %332
  %354 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %355 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %354, i32 0, i32 12
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 14
  br i1 %360, label %361, label %374

361:                                              ; preds = %353
  %362 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %363 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %361
  %367 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %368 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %367, i32 0, i32 11
  store i32 0, i32* %368, align 8
  %369 = load %struct.net_device*, %struct.net_device** %2, align 8
  %370 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %371 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %370, i32 0, i32 11
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %369, i32 %372)
  br label %380

374:                                              ; preds = %361, %353
  %375 = load %struct.net_device*, %struct.net_device** %2, align 8
  %376 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %377 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %376, i32 0, i32 11
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %375, i32 %378)
  br label %380

380:                                              ; preds = %374, %366
  br label %381

381:                                              ; preds = %380, %345
  br label %382

382:                                              ; preds = %381, %327, %322
  %383 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %384 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %385 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %383, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %389 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %390 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %388, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %391)
  %393 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %394 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %395 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 8
  %397 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %393, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %396)
  %398 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %399 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %400 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %398, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %401)
  %403 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %404 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = icmp sle i32 %405, -12
  br i1 %406, label %412, label %407

407:                                              ; preds = %382
  %408 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %409 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 8
  %411 = icmp sge i32 %410, 24
  br i1 %411, label %412, label %421

412:                                              ; preds = %407, %382
  %413 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %414 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %413, i32 0, i32 12
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 0
  store i32 1, i32* %416, align 4
  %417 = load %struct.net_device*, %struct.net_device** %2, align 8
  %418 = call i32 @write_nic_byte(%struct.net_device* %417, i32 442, i32 0)
  %419 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %420 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %419, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %449

421:                                              ; preds = %407
  %422 = load %struct.net_device*, %struct.net_device** %2, align 8
  %423 = call i32 @write_nic_byte(%struct.net_device* %422, i32 442, i32 0)
  store i64 0, i64* %16, align 8
  store i32 0, i32* %9, align 4
  br label %424

424:                                              ; preds = %431, %421
  %425 = load i32, i32* %9, align 4
  %426 = icmp slt i32 %425, 5
  br i1 %426, label %427, label %434

427:                                              ; preds = %424
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %429
  store i32 0, i32* %430, align 4
  br label %431

431:                                              ; preds = %427
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %9, align 4
  br label %424

434:                                              ; preds = %424
  br label %438

435:                                              ; preds = %70
  %436 = load i32, i32* %7, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %7, align 4
  br label %62

438:                                              ; preds = %434, %144, %77, %62
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %8, align 4
  br label %43

442:                                              ; preds = %43
  %443 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %444 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %443, i32 0, i32 12
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  store i32 1, i32* %446, align 4
  %447 = load %struct.net_device*, %struct.net_device** %2, align 8
  %448 = call i32 @write_nic_byte(%struct.net_device* %447, i32 442, i32 0)
  br label %449

449:                                              ; preds = %442, %412, %188
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @SendTxCommandPacket(%struct.net_device*, %struct.tx_config_cmd*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32, i64*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
