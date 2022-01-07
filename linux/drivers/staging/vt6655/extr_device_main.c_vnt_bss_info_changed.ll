; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i64, i64, %struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, %struct.TYPE_8__*, i64, i32, %struct.TYPE_6__, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"basic rates %x\0A\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Beacon enable %d\0A\00", align 1
@MAC_REG_TCR = common dso_local global i32 0, align 4
@TCR_AUTOBCNTX = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@MAC_REG_TFTCTL = common dso_local global i64 0, align 8
@TFTCTL_TSFCNTRST = common dso_local global i32 0, align 4
@TFTCTL_TSFCNTREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @vnt_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnt_private*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  store %struct.vnt_private* %13, %struct.vnt_private** %9, align 8
  %14 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 9
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @MACvWriteBSSIDAddress(i64 %35, i32* %39)
  %41 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 9
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %28, %23, %4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %57 = call i32 @CARDvUpdateBasicTopRate(%struct.vnt_private* %56)
  %58 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %59 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %50, %45
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @MACvEnableBarkerPreambleMd(i64 %79)
  %81 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %82 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %90

83:                                               ; preds = %71
  %84 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @MACvDisableBarkerPreambleMd(i64 %86)
  %88 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @MACvEnableProtectMD(i64 %104)
  br label %111

106:                                              ; preds = %96
  %107 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %108 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @MACvDisableProtectMD(i64 %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %91
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %124 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %128

125:                                              ; preds = %117
  %126 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %127 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %130 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %131 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @CARDbSetPhyParameter(%struct.vnt_private* %129, i32 %132)
  %134 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %135 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %136 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @BBvSetVGAGainOffset(%struct.vnt_private* %134, i32 %139)
  br label %141

141:                                              ; preds = %128, %112
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %148 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @RFbSetPower(%struct.vnt_private* %147, i32 %150, i32 %156)
  br label %158

158:                                              ; preds = %146, %141
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %195

163:                                              ; preds = %158
  %164 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %165 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %164, i32 0, i32 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %169 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_dbg(i32* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %173 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %163
  %177 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %178 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %179 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %180 = call i32 @vnt_beacon_enable(%struct.vnt_private* %177, %struct.ieee80211_vif* %178, %struct.ieee80211_bss_conf* %179)
  %181 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %182 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @MAC_REG_TCR, align 4
  %185 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %186 = call i32 @MACvRegBitsOn(i64 %183, i32 %184, i32 %185)
  br label %194

187:                                              ; preds = %163
  %188 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %189 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @MAC_REG_TCR, align 4
  %192 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %193 = call i32 @MACvRegBitsOff(i64 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %187, %176
  br label %195

195:                                              ; preds = %194, %158
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %198 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %255

202:                                              ; preds = %195
  %203 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %204 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %255

208:                                              ; preds = %202
  %209 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %210 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %239

213:                                              ; preds = %208
  %214 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %214, i32 0, i32 2
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = icmp ne %struct.TYPE_8__* %216, null
  br i1 %217, label %218, label %239

218:                                              ; preds = %213
  %219 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %220 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %221 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %226 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @CARDbUpdateTSF(%struct.vnt_private* %219, i32 %224, i32 %227)
  %229 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %230 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %231 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @CARDbSetBeaconPeriod(%struct.vnt_private* %229, i32 %232)
  %234 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %235 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %236 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @CARDvSetFirstNextTBTT(%struct.vnt_private* %234, i32 %237)
  br label %254

239:                                              ; preds = %213, %208
  %240 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %241 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %244 = add nsw i64 %242, %243
  %245 = load i32, i32* @TFTCTL_TSFCNTRST, align 4
  %246 = call i32 @VNSvOutPortB(i64 %244, i32 %245)
  %247 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %248 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %251 = add nsw i64 %249, %250
  %252 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %253 = call i32 @VNSvOutPortB(i64 %251, i32 %252)
  br label %254

254:                                              ; preds = %239, %218
  br label %255

255:                                              ; preds = %254, %202, %195
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MACvWriteBSSIDAddress(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CARDvUpdateBasicTopRate(%struct.vnt_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @MACvEnableBarkerPreambleMd(i64) #1

declare dso_local i32 @MACvDisableBarkerPreambleMd(i64) #1

declare dso_local i32 @MACvEnableProtectMD(i64) #1

declare dso_local i32 @MACvDisableProtectMD(i64) #1

declare dso_local i32 @CARDbSetPhyParameter(%struct.vnt_private*, i32) #1

declare dso_local i32 @BBvSetVGAGainOffset(%struct.vnt_private*, i32) #1

declare dso_local i32 @RFbSetPower(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_beacon_enable(%struct.vnt_private*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i64, i32, i32) #1

declare dso_local i32 @CARDbUpdateTSF(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @CARDbSetBeaconPeriod(%struct.vnt_private*, i32) #1

declare dso_local i32 @CARDvSetFirstNextTBTT(%struct.vnt_private*, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
