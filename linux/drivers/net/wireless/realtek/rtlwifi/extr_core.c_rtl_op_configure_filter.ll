; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_mac = type { i32, i64, i64 }

@RTL_SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_RCR_AM = common dso_local global i64 0, align 8
@MAC_RCR_AB = common dso_local global i64 0, align 8
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enable receive multicast frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Disable receive multicast frame\0A\00", align 1
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@MAC_RCR_ACRC32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Enable receive FCS error frame\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Disable receive FCS error frame\0A\00", align 1
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@FIF_CONTROL = common dso_local global i32 0, align 4
@MAC_RCR_ACF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Enable receive control frame.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Disable receive control frame.\0A\00", align 1
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@MAC_RCR_AAP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Enable receive other BSS's frame.\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Disable receive other BSS's frame.\0A\00", align 1
@HW_VAR_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @rtl_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %10, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %15)
  store %struct.rtl_mac* %16, %struct.rtl_mac** %11, align 8
  %17 = load i32, i32* @RTL_SUPPORTED_FILTERS, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 0, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %313

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FIF_ALLMULTI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FIF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @MAC_RCR_AM, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @MAC_RCR_AB, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %43, %51
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %58 = load i32, i32* @COMP_MAC80211, align 4
  %59 = load i32, i32* @DBG_LOUD, align 4
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %88

61:                                               ; preds = %29
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MAC_RCR_AM, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @MAC_RCR_AB, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %69, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %81 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %85 = load i32, i32* @COMP_MAC80211, align 4
  %86 = load i32, i32* @DBG_LOUD, align 4
  %87 = call i32 @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %61, %35
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %24
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @FIF_FCSFAIL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %140

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FIF_FCSFAIL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @MAC_RCR_ACRC32, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %110 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %114 = load i32, i32* @COMP_MAC80211, align 4
  %115 = load i32, i32* @DBG_LOUD, align 4
  %116 = call i32 @RT_TRACE(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %135

117:                                              ; preds = %94
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %119 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @MAC_RCR_ACRC32, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %128 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %132 = load i32, i32* @COMP_MAC80211, align 4
  %133 = load i32, i32* @DBG_LOUD, align 4
  %134 = call i32 @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %117, %100
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i32 1, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %135
  br label %140

140:                                              ; preds = %139, %89
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %195

145:                                              ; preds = %140
  %146 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %147 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MAC80211_LINKED, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %145
  %152 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %153 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %194

157:                                              ; preds = %151
  %158 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %159 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %194

163:                                              ; preds = %157
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %175, align 8
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %178 = call i32 %176(%struct.ieee80211_hw* %177, i32 0)
  br label %189

179:                                              ; preds = %163
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %181 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %185, align 8
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %188 = call i32 %186(%struct.ieee80211_hw* %187, i32 1)
  br label %189

189:                                              ; preds = %179, %169
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %192, %189
  br label %194

194:                                              ; preds = %193, %157, %151
  br label %195

195:                                              ; preds = %194, %145, %140
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @FIF_CONTROL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %246

200:                                              ; preds = %195
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @FIF_CONTROL, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %208 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @MAC_RCR_ACF, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %216 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %220 = load i32, i32* @COMP_MAC80211, align 4
  %221 = load i32, i32* @DBG_LOUD, align 4
  %222 = call i32 @RT_TRACE(%struct.rtl_priv* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %241

223:                                              ; preds = %200
  %224 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %225 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %224, i32 0, i32 0
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @MAC_RCR_ACF, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %234 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = and i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %238 = load i32, i32* @COMP_MAC80211, align 4
  %239 = load i32, i32* @DBG_LOUD, align 4
  %240 = call i32 @RT_TRACE(%struct.rtl_priv* %237, i32 %238, i32 %239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %241

241:                                              ; preds = %223, %206
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  store i32 1, i32* %9, align 4
  br label %245

245:                                              ; preds = %244, %241
  br label %246

246:                                              ; preds = %245, %195
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @FIF_OTHER_BSS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %297

251:                                              ; preds = %246
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @FIF_OTHER_BSS, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %274

257:                                              ; preds = %251
  %258 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %259 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @MAC_RCR_AAP, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %267 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %271 = load i32, i32* @COMP_MAC80211, align 4
  %272 = load i32, i32* @DBG_LOUD, align 4
  %273 = call i32 @RT_TRACE(%struct.rtl_priv* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %292

274:                                              ; preds = %251
  %275 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %276 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %275, i32 0, i32 0
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* @MAC_RCR_AAP, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %285 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %289 = load i32, i32* @COMP_MAC80211, align 4
  %290 = load i32, i32* @DBG_LOUD, align 4
  %291 = call i32 @RT_TRACE(%struct.rtl_priv* %288, i32 %289, i32 %290, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %292

292:                                              ; preds = %274, %257
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  store i32 1, i32* %9, align 4
  br label %296

296:                                              ; preds = %295, %292
  br label %297

297:                                              ; preds = %296, %246
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %297
  %301 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %302 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %301, i32 0, i32 0
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %306, align 8
  %308 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %309 = load i32, i32* @HW_VAR_RCR, align 4
  %310 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %311 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %310, i32 0, i32 0
  %312 = call i32 %307(%struct.ieee80211_hw* %308, i32 %309, i32* %311)
  br label %313

313:                                              ; preds = %23, %300, %297
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
