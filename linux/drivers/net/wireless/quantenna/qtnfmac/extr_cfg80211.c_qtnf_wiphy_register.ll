; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_hw_info = type { i32, i32, i32, i32 }
%struct.qtnf_wmac = type { %struct.TYPE_3__*, %struct.qtnf_mac_info, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.qtnf_mac_info = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid wiphy pointer\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@QTNF_MAX_VSIE_LEN = common dso_local global i32 0, align 4
@qtnf_mgmt_stypes = common dso_local global i32 0, align 4
@qtnf_cipher_suites = common dso_local global i32 0, align 4
@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD = common dso_local global i32 0, align 4
@WIPHY_FLAG_AP_UAPSD = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_STATION = common dso_local global i32 0, align 4
@WIPHY_FLAG_NETNS_OK = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_DFS_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_DFS_OFFLOAD = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_SCAN_DWELL = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SET_SCAN_DWELL = common dso_local global i32 0, align 4
@NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS = common dso_local global i32 0, align 4
@NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS2 = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_STA_INACT_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_FEATURE_INACTIVITY_TIMER = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_OBSS_SCAN = common dso_local global i32 0, align 4
@NL80211_FEATURE_NEED_OBSS_SCAN = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_SAE = common dso_local global i32 0, align 4
@NL80211_FEATURE_SAE = common dso_local global i32 0, align 4
@QLINK_HW_CAPAB_REG_UPDATE = common dso_local global i32 0, align 4
@qtnf_cfg80211_reg_notifier = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_STRICT_REG = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_wiphy_register(%struct.qtnf_hw_info* %0, %struct.qtnf_wmac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_hw_info*, align 8
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.qtnf_mac_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qtnf_hw_info* %0, %struct.qtnf_hw_info** %4, align 8
  store %struct.qtnf_wmac* %1, %struct.qtnf_wmac** %5, align 8
  %10 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %11 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %10)
  store %struct.wiphy* %11, %struct.wiphy** %6, align 8
  %12 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %12, i32 0, i32 1
  store %struct.qtnf_mac_info* %13, %struct.qtnf_mac_info** %7, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = icmp ne %struct.wiphy* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %373

20:                                               ; preds = %2
  %21 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %22 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 30
  store i32 %23, i32* %25, align 4
  %26 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %27 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %30 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %29, i32 0, i32 29
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %32 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 28
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %37 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %40 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %39, i32 0, i32 27
  store i32 %38, i32* %40, align 8
  %41 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %42 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %45 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %44, i32 0, i32 26
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %47 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %20
  %51 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %52 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 1, %54 ]
  %57 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @QTNF_MAX_VSIE_LEN, align 4
  %60 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %61 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %60, i32 0, i32 25
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @qtnf_mgmt_stypes, align 4
  %63 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %64 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %63, i32 0, i32 24
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %66 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %65, i32 0, i32 1
  store i32 5000, i32* %66, align 4
  %67 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %68 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %71 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %70, i32 0, i32 23
  store i32 %69, i32* %71, align 8
  %72 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 2
  store i32 2, i32* %73, align 8
  %74 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %75 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %76 = call i32 @qtnf_wiphy_setup_if_comb(%struct.wiphy* %74, %struct.qtnf_mac_info* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %55
  br label %371

80:                                               ; preds = %55
  %81 = load i32, i32* @qtnf_cipher_suites, align 4
  %82 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %83 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %82, i32 0, i32 22
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @qtnf_cipher_suites, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %87 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %86, i32 0, i32 21
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %89 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %90 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %89, i32 0, i32 20
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %92 = load i32, i32* @WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WIPHY_FLAG_AP_UAPSD, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @WIPHY_FLAG_4ADDR_STATION, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @WIPHY_FLAG_NETNS_OK, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %103 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %109 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %113 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @QLINK_HW_CAPAB_DFS_OFFLOAD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %80
  %119 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %120 = load i32, i32* @NL80211_EXT_FEATURE_DFS_OFFLOAD, align 4
  %121 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %80
  %123 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %124 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @QLINK_HW_CAPAB_SCAN_DWELL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %131 = load i32, i32* @NL80211_EXT_FEATURE_SET_SCAN_DWELL, align 4
  %132 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %122
  %134 = load i32, i32* @NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS, align 4
  %135 = load i32, i32* @NL80211_PROBE_RESP_OFFLOAD_SUPPORT_WPS2, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %138 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %140 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %143 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %142, i32 0, i32 19
  store i32 %141, i32* %143, align 8
  %144 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %145 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %148 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %147, i32 0, i32 18
  store i32 %146, i32* %148, align 4
  %149 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %150 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %153 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %152, i32 0, i32 17
  store i32 %151, i32* %153, align 8
  %154 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %155 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %154, i32 0, i32 5
  %156 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %157 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %156, i32 0, i32 16
  store i32* %155, i32** %157, align 8
  %158 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %7, align 8
  %159 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %158, i32 0, i32 4
  %160 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 15
  store i32* %159, i32** %161, align 8
  %162 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %163 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %162, i32 0, i32 14
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %166 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ether_addr_copy(i32 %164, i32 %167)
  %169 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %170 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @QLINK_HW_CAPAB_STA_INACT_TIMEOUT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %133
  %176 = load i32, i32* @NL80211_FEATURE_INACTIVITY_TIMER, align 4
  %177 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %178 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %133
  %182 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %183 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @QLINK_HW_CAPAB_SCAN_RANDOM_MAC_ADDR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load i32, i32* @NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, align 4
  %190 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %191 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %181
  %195 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %196 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @QLINK_HW_CAPAB_OBSS_SCAN, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* @NL80211_FEATURE_NEED_OBSS_SCAN, align 4
  %203 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %204 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %194
  %208 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %209 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @QLINK_HW_CAPAB_SAE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %216 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %217 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %216, i32 0, i32 13
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %207
  %221 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %222 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %221, i32 0, i32 0
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @isalpha(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %220
  %231 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %232 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %231, i32 0, i32 0
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  %237 = load i8, i8* %236, align 1
  %238 = call i64 @isalpha(i8 signext %237)
  %239 = icmp ne i64 %238, 0
  br label %240

240:                                              ; preds = %230, %220
  %241 = phi i1 [ false, %220 ], [ %239, %230 ]
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %9, align 4
  %243 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %244 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @QLINK_HW_CAPAB_REG_UPDATE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %296

249:                                              ; preds = %240
  %250 = load i32, i32* @qtnf_cfg80211_reg_notifier, align 4
  %251 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %252 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %251, i32 0, i32 11
  store i32 %250, i32* %252, align 8
  %253 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %254 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %253, i32 0, i32 0
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 57
  br i1 %261, label %262, label %285

262:                                              ; preds = %249
  %263 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %264 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %263, i32 0, i32 0
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 57
  br i1 %271, label %272, label %285

272:                                              ; preds = %262
  %273 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %274 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %275 = or i32 %273, %274
  %276 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %277 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %281 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %282 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %281, i32 0, i32 0
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %282, align 8
  %284 = call i32 @wiphy_apply_custom_regulatory(%struct.wiphy* %280, %struct.TYPE_3__* %283)
  br label %295

285:                                              ; preds = %262, %249
  %286 = load i32, i32* %9, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %290 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %291 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %288, %285
  br label %295

295:                                              ; preds = %294, %272
  br label %302

296:                                              ; preds = %240
  %297 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %298 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %299 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %296, %295
  %303 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %304 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %327

308:                                              ; preds = %302
  %309 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %310 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %314 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %313, i32 0, i32 10
  store i32 %312, i32* %314, align 4
  %315 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %316 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %320 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %319, i32 0, i32 9
  store i32 %318, i32* %320, align 8
  %321 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %322 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %326 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %325, i32 0, i32 8
  store i64 %324, i64* %326, align 8
  br label %327

327:                                              ; preds = %308, %302
  %328 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %329 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %332 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @strlcpy(i32 %330, i32 %333, i32 4)
  %335 = load %struct.qtnf_hw_info*, %struct.qtnf_hw_info** %4, align 8
  %336 = getelementptr inbounds %struct.qtnf_hw_info, %struct.qtnf_hw_info* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %339 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %338, i32 0, i32 6
  store i32 %337, i32* %339, align 8
  %340 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %341 = call i32 @wiphy_register(%struct.wiphy* %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %327
  br label %371

345:                                              ; preds = %327
  %346 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %347 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %345
  %353 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %354 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %355 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %354, i32 0, i32 0
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %355, align 8
  %357 = call i32 @regulatory_set_wiphy_regd(%struct.wiphy* %353, %struct.TYPE_3__* %356)
  store i32 %357, i32* %8, align 4
  br label %370

358:                                              ; preds = %345
  %359 = load i32, i32* %9, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %363 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %364 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %363, i32 0, i32 0
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @regulatory_hint(%struct.wiphy* %362, i8* %367)
  store i32 %368, i32* %8, align 4
  br label %369

369:                                              ; preds = %361, %358
  br label %370

370:                                              ; preds = %369, %352
  br label %371

371:                                              ; preds = %370, %344, %79
  %372 = load i32, i32* %8, align 4
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %371, %16
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qtnf_wiphy_setup_if_comb(%struct.wiphy*, %struct.qtnf_mac_info*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.wiphy*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @wiphy_apply_custom_regulatory(%struct.wiphy*, %struct.TYPE_3__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

declare dso_local i32 @regulatory_set_wiphy_regd(%struct.wiphy*, %struct.TYPE_3__*) #1

declare dso_local i32 @regulatory_hint(%struct.wiphy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
