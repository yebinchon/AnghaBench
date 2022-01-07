; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_BCNTIM.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_BCNTIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.sta_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8*, i32 }
%struct.sta_priv = type { i32 }

@_FIXED_IE_LENGTH_ = common dso_local global i32 0, align 4
@_TIM_IE_ = common dso_local global i32 0, align 4
@_BEACON_IE_OFFSET_ = common dso_local global i32 0, align 4
@_SSID_IE_ = common dso_local global i32 0, align 4
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @update_BCNTIM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_BCNTIM(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sta_priv*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.sta_priv* %20, %struct.sta_priv** %3, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  store %struct.mlme_ext_priv* %22, %struct.mlme_ext_priv** %4, align 8
  %23 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %23, i32 0, i32 0
  store %struct.mlme_ext_info* %24, %struct.mlme_ext_info** %5, align 8
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 0
  store %struct.wlan_bssid_ex* %26, %struct.wlan_bssid_ex** %6, align 8
  %27 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %28 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %30 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %31 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call zeroext i8 @cpu_to_le16(i32 %32)
  store i8 %33, i8* %12, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @_FIXED_IE_LENGTH_, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* @_TIM_IE_, align 4
  %39 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %40 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @_FIXED_IE_LENGTH_, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i8* @rtw_get_ie(i8* %37, i32 %38, i32* %15, i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %1
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %15, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %64 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %9, align 8
  br label %128

71:                                               ; preds = %47, %1
  store i32 0, i32* %15, align 4
  %72 = load i32, i32* @_FIXED_IE_LENGTH_, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* @_SSID_IE_, align 4
  %78 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %79 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i8* @rtw_get_ie(i8* %76, i32 %77, i32* %14, i32 %82)
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %71
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 2
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %86, %71
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %97 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %98 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i8* @rtw_get_ie(i8* %95, i32 %96, i32* %14, i32 %101)
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %91
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 2
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %105, %91
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 3
  store i32 %112, i32* %13, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8* %116, i8** %10, align 8
  %117 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %118 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %9, align 8
  br label %128

128:                                              ; preds = %110, %50
  %129 = load i32, i32* %17, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load i32, i32* %17, align 4
  %133 = call i8* @rtw_malloc(i32 %132)
  store i8* %133, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %11, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @memcpy(i8* %140, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %136, %131
  br label %145

145:                                              ; preds = %144, %128
  %146 = load i32, i32* @_TIM_IE_, align 4
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %9, align 8
  store i8 %147, i8* %148, align 1
  %150 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %151 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 65280
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %157 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 254
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 5, i32* %15, align 4
  br label %163

162:                                              ; preds = %155, %145
  store i32 4, i32* %15, align 4
  br label %163

163:                                              ; preds = %162, %161
  %164 = load i32, i32* %15, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %9, align 8
  store i8 %165, i8* %166, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %9, align 8
  store i8 0, i8* %168, align 1
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %9, align 8
  store i8 1, i8* %170, align 1
  %172 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %173 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @BIT(i32 0)
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %163
  %179 = call i32 @BIT(i32 0)
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %9, align 8
  store i8 %180, i8* %181, align 1
  br label %186

183:                                              ; preds = %163
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %9, align 8
  store i8 0, i8* %184, align 1
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %15, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %209

189:                                              ; preds = %186
  %190 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %191 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 65280
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.sta_priv*, %struct.sta_priv** %3, align 8
  %197 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 8
  %200 = call zeroext i8 @cpu_to_le16(i32 %199)
  store i8 %200, i8* %18, align 1
  br label %203

201:                                              ; preds = %189
  %202 = load i8, i8* %12, align 1
  store i8 %202, i8* %18, align 1
  br label %203

203:                                              ; preds = %201, %195
  %204 = load i8, i8* %18, align 1
  %205 = call i32 @le16_to_cpu(i8 zeroext %204)
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  store i8 %206, i8* %207, align 1
  br label %218

209:                                              ; preds = %186
  %210 = load i32, i32* %15, align 4
  %211 = icmp eq i32 %210, 5
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @memcpy(i8* %213, i8* %12, i32 2)
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  store i8* %216, i8** %9, align 8
  br label %217

217:                                              ; preds = %212, %209
  br label %218

218:                                              ; preds = %217, %203
  %219 = load i8*, i8** %11, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i8*, i8** %9, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @memcpy(i8* %222, i8* %223, i32 %224)
  %226 = load i8*, i8** %11, align 8
  %227 = call i32 @kfree(i8* %226)
  br label %228

228:                                              ; preds = %221, %218
  %229 = load i8*, i8** %9, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %235, %236
  %238 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %239 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  ret void
}

declare dso_local zeroext i8 @cpu_to_le16(i32) #1

declare dso_local i8* @rtw_get_ie(i8*, i32, i32*, i32) #1

declare dso_local i8* @rtw_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @le16_to_cpu(i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
