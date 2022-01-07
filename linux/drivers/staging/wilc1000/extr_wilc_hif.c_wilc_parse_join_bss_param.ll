; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_parse_join_bss_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_parse_join_bss_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32*, i32, i32* }
%struct.wilc_join_bss_param = type { i64*, i64, i32*, i32*, i64*, i32, i32, i32, i32, i32, i32, i32, i64*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_p2p_noa_attr = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.cfg80211_bss_ies = type { i32, i32, i32 }
%struct.ieee80211_wmm_param_ie = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WILC_FW_BSS_TYPE_INFRA = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@WILC_MAX_RATES_SUPPORTED = common dso_local global i64 0, align 8
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@WLAN_OUI_MICROSOFT = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_MICROSOFT_WMM = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_MICROSOFT_WPA = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wilc_parse_join_bss_param(%struct.cfg80211_bss* %0, %struct.cfg80211_crypto_settings* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca %struct.cfg80211_crypto_settings*, align 8
  %6 = alloca %struct.wilc_join_bss_param*, align 8
  %7 = alloca %struct.ieee80211_p2p_noa_attr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.cfg80211_bss_ies*, align 8
  %19 = alloca %struct.ieee80211_wmm_param_ie*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cfg80211_bss* %0, %struct.cfg80211_bss** %4, align 8
  store %struct.cfg80211_crypto_settings* %1, %struct.cfg80211_crypto_settings** %5, align 8
  store i64 0, i64* %8, align 8
  %22 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %23 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %24)
  store %struct.cfg80211_bss_ies* %25, %struct.cfg80211_bss_ies** %18, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.wilc_join_bss_param* @kzalloc(i32 160, i32 %26)
  store %struct.wilc_join_bss_param* %27, %struct.wilc_join_bss_param** %6, align 8
  %28 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %29 = icmp ne %struct.wilc_join_bss_param* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %500

31:                                               ; preds = %2
  %32 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %33 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %37 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %36, i32 0, i32 22
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %43 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %42, i32 0, i32 21
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @WILC_FW_BSS_TYPE_INFRA, align 4
  %45 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %46 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %45, i32 0, i32 20
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %48 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ieee80211_frequency_to_channel(i32 %51)
  %53 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %54 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %53, i32 0, i32 19
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %56 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %55, i32 0, i32 18
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %59 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ether_addr_copy(i32 %57, i32 %60)
  %62 = load i32, i32* @WLAN_EID_SSID, align 4
  %63 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %64 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %67 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64* @cfg80211_find_ie(i32 %62, i32 %65, i32 %68)
  store i64* %69, i64** %10, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %31
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %80 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64*, i64** %10, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @memcpy(i64* %81, i64* %83, i64 %86)
  br label %88

88:                                               ; preds = %78, %72
  br label %89

89:                                               ; preds = %88, %31
  %90 = load i32, i32* @WLAN_EID_TIM, align 4
  %91 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %92 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %95 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64* @cfg80211_find_ie(i32 %90, i32 %93, i32 %96)
  store i64* %97, i64** %9, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %89
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %103, 2
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %110 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %100, %89
  %112 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %113 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @memset(i32* %114, i32 255, i32 3)
  %116 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %117 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @memset(i32* %118, i32 255, i32 3)
  %120 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %121 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %122 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %125 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64* @cfg80211_find_ie(i32 %120, i32 %123, i32 %126)
  store i64* %127, i64** %11, align 8
  %128 = load i64*, i64** %11, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %111
  %131 = load i64*, i64** %11, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %136 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  store i64 %134, i64* %138, align 8
  %139 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %140 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %139, i32 0, i32 4
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = load i64*, i64** %11, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @memcpy(i64* %142, i64* %144, i64 %145)
  br label %147

147:                                              ; preds = %130, %111
  %148 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %149 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %150 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %153 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64* @cfg80211_find_ie(i32 %148, i32 %151, i32 %154)
  store i64* %155, i64** %12, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %199

158:                                              ; preds = %147
  %159 = load i64*, i64** %12, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @WILC_MAX_RATES_SUPPORTED, align 8
  %163 = load i64, i64* %8, align 8
  %164 = sub nsw i64 %162, %163
  %165 = icmp sgt i64 %161, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load i64, i64* @WILC_MAX_RATES_SUPPORTED, align 8
  %168 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %169 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %168, i32 0, i32 4
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  store i64 %167, i64* %171, align 8
  br label %182

172:                                              ; preds = %158
  %173 = load i64*, i64** %12, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %177 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %176, i32 0, i32 4
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %175
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %172, %166
  %183 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %184 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %183, i32 0, i32 4
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = add nsw i64 %186, 1
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64*, i64** %12, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 2
  %191 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %192 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = sub nsw i64 %195, %196
  %198 = call i32 @memcpy(i64* %188, i64* %190, i64 %197)
  br label %199

199:                                              ; preds = %182, %147
  %200 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %201 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %202 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %205 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i64* @cfg80211_find_ie(i32 %200, i32 %203, i32 %206)
  store i64* %207, i64** %13, align 8
  %208 = load i64*, i64** %13, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %199
  %211 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %212 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %211, i32 0, i32 5
  store i32 1, i32* %212, align 8
  br label %213

213:                                              ; preds = %210, %199
  %214 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %215 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %218 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %221 = bitcast %struct.ieee80211_p2p_noa_attr* %7 to i64*
  %222 = call i32 @cfg80211_get_p2p_attr(i32 %216, i32 %219, i32 %220, i64* %221, i32 24)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %319

225:                                              ; preds = %213
  %226 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %227 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @cpu_to_le32(i32 %228)
  %230 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %231 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %230, i32 0, i32 17
  store i32 %229, i32* %231, align 4
  %232 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %233 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %232, i32 0, i32 6
  store i32 1, i32* %233, align 4
  %234 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %237 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %236, i32 0, i32 16
  store i32 %235, i32* %237, align 8
  %238 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %283

243:                                              ; preds = %225
  %244 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %245 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %244, i32 0, i32 7
  store i32 1, i32* %245, align 8
  %246 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %249 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 4
  %251 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %257 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 4
  store i32 %255, i32* %258, align 4
  %259 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %265 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  store i32 %263, i32* %266, align 4
  %267 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %273 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  store i32 %271, i32* %274, align 4
  %275 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %281 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  br label %318

283:                                              ; preds = %225
  %284 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %285 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %284, i32 0, i32 7
  store i32 0, i32* %285, align 8
  %286 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %292 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %291, i32 0, i32 14
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 3
  store i32 %290, i32* %293, align 4
  %294 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 0
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %300 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %299, i32 0, i32 14
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 2
  store i32 %298, i32* %301, align 4
  %302 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %308 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %307, i32 0, i32 14
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  store i32 %306, i32* %309, align 4
  %310 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %7, i32 0, i32 1
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i64 0
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %316 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %315, i32 0, i32 14
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  store i32 %314, i32* %317, align 4
  br label %318

318:                                              ; preds = %283, %243
  br label %319

319:                                              ; preds = %318, %213
  %320 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %321 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WMM, align 4
  %322 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %323 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %326 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i64* @cfg80211_find_vendor_ie(i32 %320, i32 %321, i32 %324, i32 %327)
  store i64* %328, i64** %15, align 8
  %329 = load i64*, i64** %15, align 8
  %330 = icmp ne i64* %329, null
  br i1 %330, label %331, label %362

331:                                              ; preds = %319
  %332 = load i64*, i64** %15, align 8
  %333 = bitcast i64* %332 to %struct.ieee80211_wmm_param_ie*
  store %struct.ieee80211_wmm_param_ie* %333, %struct.ieee80211_wmm_param_ie** %19, align 8
  %334 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %19, align 8
  %335 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %331
  %339 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %19, align 8
  %340 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %361

343:                                              ; preds = %338, %331
  %344 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %19, align 8
  %345 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %361

348:                                              ; preds = %343
  %349 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %350 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %349, i32 0, i32 8
  store i32 1, i32* %350, align 4
  %351 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %19, align 8
  %352 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @BIT(i32 7)
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %348
  %358 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %359 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %358, i32 0, i32 9
  store i32 1, i32* %359, align 8
  br label %360

360:                                              ; preds = %357, %348
  br label %361

361:                                              ; preds = %360, %343, %338
  br label %362

362:                                              ; preds = %361, %319
  %363 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %364 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WPA, align 4
  %365 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %366 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %369 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i64* @cfg80211_find_vendor_ie(i32 %363, i32 %364, i32 %367, i32 %370)
  store i64* %371, i64** %14, align 8
  %372 = load i64*, i64** %14, align 8
  %373 = icmp ne i64* %372, null
  br i1 %373, label %374, label %379

374:                                              ; preds = %362
  %375 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %376 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %375, i32 0, i32 10
  store i32 1, i32* %376, align 4
  %377 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %378 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %377, i32 0, i32 11
  store i32 1, i32* %378, align 8
  br label %379

379:                                              ; preds = %374, %362
  %380 = load i32, i32* @WLAN_EID_RSN, align 4
  %381 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %382 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %18, align 8
  %385 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i64* @cfg80211_find_ie(i32 %380, i32 %383, i32 %386)
  store i64* %387, i64** %16, align 8
  %388 = load i64*, i64** %16, align 8
  %389 = icmp ne i64* %388, null
  br i1 %389, label %390, label %425

390:                                              ; preds = %379
  store i32 8, i32* %20, align 4
  %391 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %392 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %391, i32 0, i32 10
  store i32 2, i32* %392, align 4
  %393 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %394 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %393, i32 0, i32 11
  store i32 1, i32* %394, align 8
  %395 = load i64*, i64** %16, align 8
  %396 = load i32, i32* %20, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i64, i64* %395, i64 %397
  %399 = load i64, i64* %398, align 8
  %400 = mul nsw i64 %399, 4
  %401 = add nsw i64 %400, 2
  %402 = load i32, i32* %20, align 4
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %403, %401
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %20, align 4
  %406 = load i64*, i64** %16, align 8
  %407 = load i32, i32* %20, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %406, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = mul nsw i64 %410, 4
  %412 = add nsw i64 %411, 2
  %413 = load i32, i32* %20, align 4
  %414 = sext i32 %413 to i64
  %415 = add nsw i64 %414, %412
  %416 = trunc i64 %415 to i32
  store i32 %416, i32* %20, align 4
  %417 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %418 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %417, i32 0, i32 12
  %419 = load i64*, i64** %418, align 8
  %420 = load i64*, i64** %16, align 8
  %421 = load i32, i32* %20, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i64, i64* %420, i64 %422
  %424 = call i32 @memcpy(i64* %419, i64* %423, i64 2)
  br label %425

425:                                              ; preds = %390, %379
  %426 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %427 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %426, i32 0, i32 11
  %428 = load i32, i32* %427, align 8
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %497

430:                                              ; preds = %425
  %431 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %432 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = and i32 %433, 255
  %435 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %436 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %435, i32 0, i32 13
  store i32 %434, i32* %436, align 8
  store i32 0, i32* %21, align 4
  br label %437

437:                                              ; preds = %463, %430
  %438 = load i32, i32* %21, align 4
  %439 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %440 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %437
  %444 = load i32, i32* %21, align 4
  %445 = icmp slt i32 %444, 3
  br label %446

446:                                              ; preds = %443, %437
  %447 = phi i1 [ false, %437 ], [ %445, %443 ]
  br i1 %447, label %448, label %466

448:                                              ; preds = %446
  %449 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %450 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %449, i32 0, i32 2
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %21, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = and i32 %455, 255
  %457 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %458 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %457, i32 0, i32 2
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %21, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  store i32 %456, i32* %462, align 4
  br label %463

463:                                              ; preds = %448
  %464 = load i32, i32* %21, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %21, align 4
  br label %437

466:                                              ; preds = %446
  store i32 0, i32* %21, align 4
  br label %467

467:                                              ; preds = %493, %466
  %468 = load i32, i32* %21, align 4
  %469 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %470 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %476

473:                                              ; preds = %467
  %474 = load i32, i32* %21, align 4
  %475 = icmp slt i32 %474, 3
  br label %476

476:                                              ; preds = %473, %467
  %477 = phi i1 [ false, %467 ], [ %475, %473 ]
  br i1 %477, label %478, label %496

478:                                              ; preds = %476
  %479 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %480 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %479, i32 0, i32 4
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %21, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = and i32 %485, 255
  %487 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %488 = getelementptr inbounds %struct.wilc_join_bss_param, %struct.wilc_join_bss_param* %487, i32 0, i32 3
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %21, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  store i32 %486, i32* %492, align 4
  br label %493

493:                                              ; preds = %478
  %494 = load i32, i32* %21, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %21, align 4
  br label %467

496:                                              ; preds = %476
  br label %497

497:                                              ; preds = %496, %425
  %498 = load %struct.wilc_join_bss_param*, %struct.wilc_join_bss_param** %6, align 8
  %499 = bitcast %struct.wilc_join_bss_param* %498 to i8*
  store i8* %499, i8** %3, align 8
  br label %500

500:                                              ; preds = %497, %30
  %501 = load i8*, i8** %3, align 8
  ret i8* %501
}

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local %struct.wilc_join_bss_param* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cfg80211_get_p2p_attr(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64* @cfg80211_find_vendor_ie(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
