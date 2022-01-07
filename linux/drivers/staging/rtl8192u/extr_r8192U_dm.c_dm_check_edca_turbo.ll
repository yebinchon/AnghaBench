; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_qos_parameters }
%struct.ieee80211_qos_parameters = type { i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.aci_aifsn = type { i64 }

@dm_check_edca_turbo.lastTxOkCnt = internal global i64 0, align 8
@dm_check_edca_turbo.lastRxOkCnt = internal global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@HT_IOT_ACT_DISABLE_EDCA_TURBO = common dso_local global i32 0, align 4
@EDCAPARA_BE = common dso_local global i32 0, align 4
@edca_setting_DL = common dso_local global i32* null, align 8
@edca_setting_UL = common dso_local global i32* null, align 8
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@aSifsTime = common dso_local global i32 0, align 4
@AC_PARAM_TXOP_LIMIT_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MAX_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MIN_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_AIFS_OFFSET = common dso_local global i32 0, align 4
@AcmHwCtrl = common dso_local global i32 0, align 4
@AcmHw_BeqEn = common dso_local global i32 0, align 4
@COMP_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_check_edca_turbo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_qos_parameters*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.aci_aifsn*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %16)
  store %struct.r8192_priv* %17, %struct.r8192_priv** %3, align 8
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_LINKED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %229

31:                                               ; preds = %1
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HT_IOT_ACT_DISABLE_EDCA_TURBO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %229

43:                                               ; preds = %31
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %116, label %50

50:                                               ; preds = %43
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @dm_check_edca_turbo.lastTxOkCnt, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %5, align 8
  %57 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @dm_check_edca_turbo.lastRxOkCnt, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = mul i64 4, %64
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %50
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @EDCAPARA_BE, align 4
  %80 = load i32*, i32** @edca_setting_DL, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @write_nic_dword(%struct.net_device* %78, i32 %79, i32 %85)
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %77, %72
  br label %113

90:                                               ; preds = %50
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @EDCAPARA_BE, align 4
  %103 = load i32*, i32** @edca_setting_UL, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @write_nic_dword(%struct.net_device* %101, i32 %102, i32 %108)
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %100, %95
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %228

116:                                              ; preds = %43
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %227

121:                                              ; preds = %116
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store %struct.ieee80211_qos_parameters* %127, %struct.ieee80211_qos_parameters** %12, align 8
  %128 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %129 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %13, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @dm_init_edca_turbo(%struct.net_device* %133)
  %135 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %12, align 8
  %136 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @IEEE_G, align 4
  %142 = load i32, i32* @IEEE_N_24G, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 9, i32 20
  %148 = mul nsw i32 %139, %147
  %149 = load i32, i32* @aSifsTime, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %7, align 4
  %151 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %12, align 8
  %152 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @le16_to_cpu(i32 %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %9, align 4
  %158 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %12, align 8
  %159 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @le16_to_cpu(i32 %162)
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %10, align 4
  %165 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %12, align 8
  %166 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @le16_to_cpu(i32 %169)
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @AC_PARAM_TXOP_LIMIT_OFFSET, align 4
  %173 = load i32, i32* %9, align 4
  %174 = shl i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* @AC_PARAM_ECW_MAX_OFFSET, align 4
  %176 = load i32, i32* %10, align 4
  %177 = shl i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* @AC_PARAM_ECW_MIN_OFFSET, align 4
  %179 = load i32, i32* %11, align 4
  %180 = shl i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* @AC_PARAM_AIFS_OFFSET, align 4
  %182 = load i32, i32* %7, align 4
  %183 = shl i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %11, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %8, align 4
  %191 = call i32 @cpu_to_le32s(i32* %8)
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = load i32, i32* @EDCAPARA_BE, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @write_nic_dword(%struct.net_device* %192, i32 %193, i32 %194)
  %196 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %12, align 8
  %197 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = bitcast i32* %199 to %struct.aci_aifsn*
  store %struct.aci_aifsn* %200, %struct.aci_aifsn** %14, align 8
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = load i32, i32* @AcmHwCtrl, align 4
  %203 = call i32 @read_nic_byte(%struct.net_device* %201, i32 %202, i32* %15)
  %204 = load %struct.aci_aifsn*, %struct.aci_aifsn** %14, align 8
  %205 = getelementptr inbounds %struct.aci_aifsn, %struct.aci_aifsn* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %121
  %209 = load i32, i32* @AcmHw_BeqEn, align 4
  %210 = load i32, i32* %15, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %15, align 4
  br label %217

212:                                              ; preds = %121
  %213 = load i32, i32* @AcmHw_BeqEn, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %15, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %15, align 4
  br label %217

217:                                              ; preds = %212, %208
  %218 = load i32, i32* @COMP_QOS, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @RT_TRACE(i32 %218, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load %struct.net_device*, %struct.net_device** %2, align 8
  %222 = load i32, i32* @AcmHwCtrl, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @write_nic_byte(%struct.net_device* %221, i32 %222, i32 %223)
  %225 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %226 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %217, %116
  br label %228

228:                                              ; preds = %227, %113
  br label %229

229:                                              ; preds = %228, %42, %30
  %230 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %231 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %230, i32 0, i32 3
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  store i32 0, i32* %233, align 8
  %234 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %235 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* @dm_check_edca_turbo.lastTxOkCnt, align 8
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* @dm_check_edca_turbo.lastRxOkCnt, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dm_init_edca_turbo(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
