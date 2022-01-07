; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64*, i32 }
%struct.TYPE_6__ = type { i64*, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rx_drvinfo_819x_usb = type { i64, i64, i64 }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@DESC90_RATEMCS8 = common dso_local global i64 0, align 8
@DESC90_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, %struct.ieee80211_rx_stats*, %struct.rx_drvinfo_819x_usb*, %struct.ieee80211_rx_stats*, i32, i32, i32, i32)* @rtl8192_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_query_rxphystatus(%struct.r8192_priv* %0, %struct.ieee80211_rx_stats* %1, %struct.rx_drvinfo_819x_usb* %2, %struct.ieee80211_rx_stats* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca %struct.ieee80211_rx_stats*, align 8
  %11 = alloca %struct.rx_drvinfo_819x_usb*, align 8
  %12 = alloca %struct.ieee80211_rx_stats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [4 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %9, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %10, align 8
  store %struct.rx_drvinfo_819x_usb* %2, %struct.rx_drvinfo_819x_usb** %11, align 8
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %44 = call i32 @rx_hal_is_cck_rate(%struct.rx_drvinfo_819x_usb* %43)
  store i32 %44, i32* %34, align 4
  %45 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %46 = call i32 @memset(%struct.ieee80211_rx_stats* %45, i32 0, i32 64)
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %34, align 4
  %58 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %70, i32 0, i32 4
  store i32 %67, i32* %71, align 8
  %72 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %73 = bitcast %struct.rx_drvinfo_819x_usb* %72 to i32*
  store i32* %73, i32** %20, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 24
  store i32* %75, i32** %20, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %18, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = bitcast i32* %78 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %17, align 8
  %80 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 -1, i32* %83, align 4
  %84 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 -1, i32* %87, align 4
  %88 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 -1, i32* %91, align 4
  %92 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 -1, i32* %95, align 4
  %96 = load i32, i32* %34, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %239

98:                                               ; preds = %8
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %141, label %108

108:                                              ; preds = %98
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 192
  store i32 %112, i32* %37, align 4
  %113 = load i32, i32* %37, align 4
  %114 = ashr i32 %113, 6
  store i32 %114, i32* %37, align 4
  %115 = load i32, i32* %37, align 4
  switch i32 %115, label %140 [
    i32 3, label %116
    i32 2, label %122
    i32 1, label %128
    i32 0, label %134
  ]

116:                                              ; preds = %108
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 62
  %121 = sub nsw i32 -35, %120
  store i32 %121, i32* %27, align 4
  br label %140

122:                                              ; preds = %108
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 62
  %127 = sub nsw i32 -23, %126
  store i32 %127, i32* %27, align 4
  br label %140

128:                                              ; preds = %108
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 62
  %133 = sub nsw i32 -11, %132
  store i32 %133, i32* %27, align 4
  br label %140

134:                                              ; preds = %108
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 62
  %139 = sub nsw i32 6, %138
  store i32 %139, i32* %27, align 4
  br label %140

140:                                              ; preds = %108, %134, %128, %122, %116
  br label %178

141:                                              ; preds = %98
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 96
  store i32 %145, i32* %37, align 4
  %146 = load i32, i32* %37, align 4
  %147 = ashr i32 %146, 5
  store i32 %147, i32* %37, align 4
  %148 = load i32, i32* %37, align 4
  switch i32 %148, label %177 [
    i32 3, label %149
    i32 2, label %156
    i32 1, label %163
    i32 0, label %170
  ]

149:                                              ; preds = %141
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 31
  %154 = shl i32 %153, 1
  %155 = sub nsw i32 -35, %154
  store i32 %155, i32* %27, align 4
  br label %177

156:                                              ; preds = %141
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 31
  %161 = shl i32 %160, 1
  %162 = sub nsw i32 -23, %161
  store i32 %162, i32* %27, align 4
  br label %177

163:                                              ; preds = %141
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 31
  %168 = shl i32 %167, 1
  %169 = sub nsw i32 -11, %168
  store i32 %169, i32* %27, align 4
  br label %177

170:                                              ; preds = %141
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 31
  %175 = shl i32 %174, 1
  %176 = sub nsw i32 6, %175
  store i32 %176, i32* %27, align 4
  br label %177

177:                                              ; preds = %141, %170, %163, %156, %149
  br label %178

178:                                              ; preds = %177, %140
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @rtl819x_query_rxpwrpercentage(i32 %179)
  store i32 %180, i32* %31, align 4
  %181 = load i32, i32* %31, align 4
  %182 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %183 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 8
  %184 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %185 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %184, i32 0, i32 6
  store i32 %181, i32* %185, align 8
  %186 = load i32, i32* %31, align 4
  %187 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %188 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 4
  %189 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %190 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 40
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  store i32 100, i32* %36, align 4
  br label %216

194:                                              ; preds = %178
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %36, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %200, 64
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 0, i32* %36, align 4
  br label %215

203:                                              ; preds = %194
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 20
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 100, i32* %36, align 4
  br label %214

209:                                              ; preds = %203
  %210 = load i32, i32* %36, align 4
  %211 = sub nsw i32 64, %210
  %212 = mul nsw i32 %211, 100
  %213 = sdiv i32 %212, 44
  store i32 %213, i32* %36, align 4
  br label %214

214:                                              ; preds = %209, %208
  br label %215

215:                                              ; preds = %214, %202
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %36, align 4
  %218 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %219 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 8
  %220 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %221 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %220, i32 0, i32 8
  store i32 %217, i32* %221, align 8
  %222 = load i32, i32* %36, align 4
  %223 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %224 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  store i32 %222, i32* %226, align 4
  %227 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %228 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 %222, i32* %230, align 4
  %231 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %232 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 -1, i32* %234, align 4
  %235 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %236 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  store i32 -1, i32* %238, align 4
  br label %446

239:                                              ; preds = %8
  %240 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %241 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %245, i32* %21, align 4
  br label %246

246:                                              ; preds = %330, %239
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %249 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %333

252:                                              ; preds = %246
  %253 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %254 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %253, i32 0, i32 3
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %21, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %252
  %262 = load i32, i32* %35, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %35, align 4
  br label %265

264:                                              ; preds = %252
  br label %330

265:                                              ; preds = %261
  %266 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %267 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %266, i32 0, i32 2
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @rtl8192_phy_CheckIsLegalRFPath(i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %265
  br label %330

275:                                              ; preds = %265
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 63
  %284 = mul nsw i32 %283, 2
  %285 = sub nsw i32 %284, 106
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %287
  store i32 %285, i32* %288, align 4
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %21, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %23, align 4
  %296 = load i32, i32* %23, align 4
  store i32 %296, i32* %28, align 4
  %297 = load i32, i32* %28, align 4
  %298 = sdiv i32 %297, 2
  store i32 %298, i32* %28, align 4
  %299 = load i32, i32* %28, align 4
  %300 = sext i32 %299 to i64
  %301 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %302 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %21, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  store i64 %300, i64* %307, align 8
  %308 = load i32, i32* %21, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @rtl819x_query_rxpwrpercentage(i32 %311)
  store i32 %312, i32* %32, align 4
  %313 = load i32, i32* %32, align 4
  %314 = load i32, i32* %33, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %33, align 4
  %316 = load i32, i32* %32, align 4
  %317 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %318 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %317, i32 0, i32 9
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %21, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %316, i32* %322, align 4
  %323 = load i32, i32* %32, align 4
  %324 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %325 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %324, i32 0, i32 9
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %21, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %323, i32* %329, align 4
  br label %330

330:                                              ; preds = %275, %274, %264
  %331 = load i32, i32* %21, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %21, align 4
  br label %246

333:                                              ; preds = %246
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = ashr i32 %336, 1
  %338 = and i32 %337, 127
  %339 = sub nsw i32 %338, 106
  store i32 %339, i32* %27, align 4
  %340 = load i32, i32* %27, align 4
  %341 = call i32 @rtl819x_query_rxpwrpercentage(i32 %340)
  store i32 %341, i32* %31, align 4
  %342 = load i32, i32* %31, align 4
  %343 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %344 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %343, i32 0, i32 6
  store i32 %342, i32* %344, align 8
  %345 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %346 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %345, i32 0, i32 6
  store i32 %342, i32* %346, align 8
  %347 = load i32, i32* %27, align 4
  %348 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %349 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %348, i32 0, i32 10
  store i32 %347, i32* %349, align 8
  %350 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %351 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %350, i32 0, i32 10
  store i32 %347, i32* %351, align 8
  %352 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %353 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %333
  %357 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %358 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @DESC90_RATEMCS8, align 8
  %361 = icmp sge i64 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %364 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @DESC90_RATEMCS15, align 8
  %367 = icmp sle i64 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  store i32 2, i32* %22, align 4
  br label %370

369:                                              ; preds = %362, %356, %333
  store i32 1, i32* %22, align 4
  br label %370

370:                                              ; preds = %369, %368
  store i32 0, i32* %21, align 4
  br label %371

371:                                              ; preds = %412, %370
  %372 = load i32, i32* %21, align 4
  %373 = load i32, i32* %22, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %415

375:                                              ; preds = %371
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 3
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %21, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %24, align 4
  %383 = load i32, i32* %24, align 4
  store i32 %383, i32* %29, align 4
  %384 = load i32, i32* %29, align 4
  %385 = sdiv i32 %384, 2
  store i32 %385, i32* %29, align 4
  %386 = load i32, i32* %29, align 4
  %387 = call i32 @rtl819x_evm_dbtopercentage(i32 %386)
  store i32 %387, i32* %30, align 4
  %388 = load i32, i32* %21, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %375
  %391 = load i32, i32* %30, align 4
  %392 = and i32 %391, 255
  %393 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %394 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %393, i32 0, i32 8
  store i32 %392, i32* %394, align 8
  %395 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %396 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %395, i32 0, i32 8
  store i32 %392, i32* %396, align 8
  br label %397

397:                                              ; preds = %390, %375
  %398 = load i32, i32* %30, align 4
  %399 = and i32 %398, 255
  %400 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %401 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %400, i32 0, i32 5
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %21, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %399, i32* %405, align 4
  %406 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %407 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %406, i32 0, i32 5
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %21, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %399, i32* %411, align 4
  br label %412

412:                                              ; preds = %397
  %413 = load i32, i32* %21, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %21, align 4
  br label %371

415:                                              ; preds = %371
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  store i32 %418, i32* %25, align 4
  %419 = bitcast i32* %25 to %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*
  store %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag* %419, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag** %19, align 8
  %420 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %11, align 8
  %421 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %437

424:                                              ; preds = %415
  %425 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %426 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 1
  %428 = load i32*, i32** %427, align 8
  %429 = load %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag** %19, align 8
  %430 = getelementptr inbounds %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 1, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %428, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %434, align 4
  br label %445

437:                                              ; preds = %415
  %438 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %439 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 0
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %437, %424
  br label %446

446:                                              ; preds = %445, %216
  %447 = load i32, i32* %34, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %446
  %450 = load i32, i32* %31, align 4
  %451 = sext i32 %450 to i64
  %452 = call i64 @rtl819x_signal_scale_mapping(i64 %451)
  %453 = trunc i64 %452 to i32
  %454 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %455 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %454, i32 0, i32 11
  store i32 %453, i32* %455, align 4
  %456 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %457 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %456, i32 0, i32 11
  store i32 %453, i32* %457, align 4
  br label %473

458:                                              ; preds = %446
  %459 = load i32, i32* %35, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %472

461:                                              ; preds = %458
  %462 = load i32, i32* %35, align 4
  %463 = load i32, i32* %33, align 4
  %464 = sdiv i32 %463, %462
  store i32 %464, i32* %33, align 4
  %465 = sext i32 %464 to i64
  %466 = call i64 @rtl819x_signal_scale_mapping(i64 %465)
  %467 = trunc i64 %466 to i32
  %468 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %12, align 8
  %469 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %468, i32 0, i32 11
  store i32 %467, i32* %469, align 4
  %470 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %471 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %470, i32 0, i32 11
  store i32 %467, i32* %471, align 4
  br label %472

472:                                              ; preds = %461, %458
  br label %473

473:                                              ; preds = %472, %449
  ret void
}

declare dso_local i32 @rx_hal_is_cck_rate(%struct.rx_drvinfo_819x_usb*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_stats*, i32, i32) #1

declare dso_local i32 @rtl819x_query_rxpwrpercentage(i32) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(i32, i32) #1

declare dso_local i32 @rtl819x_evm_dbtopercentage(i32) #1

declare dso_local i64 @rtl819x_signal_scale_mapping(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
