; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { %struct.TYPE_4__, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rx_desc = type { i32 }
%struct.rx_fwinfo = type { i64, i64, i64 }
%struct.rtllib_rx_stats = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.phy_sts_ofdm_819xpci = type { i32*, i32*, i32, i32*, i32 }
%struct.phy_sts_cck_819xpci = type { i32, i32 }
%struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag = type { i32 }

@_rtl92e_query_rxphystatus.check_reg824 = internal global i32 0, align 4
@_rtl92e_query_rxphystatus.reg824_bit9 = internal global i32 0, align 4
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_MAX = common dso_local global i32 0, align 4
@DESC90_RATEMCS8 = common dso_local global i64 0, align 8
@DESC90_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.rx_fwinfo*, %struct.rtllib_rx_stats*, i32, i32, i32, i32)* @_rtl92e_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_query_rxphystatus(%struct.r8192_priv* %0, %struct.rtllib_rx_stats* %1, %struct.rx_desc* %2, %struct.rx_fwinfo* %3, %struct.rtllib_rx_stats* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.rtllib_rx_stats*, align 8
  %12 = alloca %struct.rx_desc*, align 8
  %13 = alloca %struct.rx_fwinfo*, align 8
  %14 = alloca %struct.rtllib_rx_stats*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.phy_sts_ofdm_819xpci*, align 8
  %20 = alloca %struct.phy_sts_cck_819xpci*, align 8
  %21 = alloca %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %10, align 8
  store %struct.rtllib_rx_stats* %1, %struct.rtllib_rx_stats** %11, align 8
  store %struct.rx_desc* %2, %struct.rx_desc** %12, align 8
  store %struct.rx_fwinfo* %3, %struct.rx_fwinfo** %13, align 8
  store %struct.rtllib_rx_stats* %4, %struct.rtllib_rx_stats** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %46 = call i32 @rx_hal_is_cck_rate(%struct.rx_fwinfo* %45)
  store i32 %46, i32* %36, align 4
  %47 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %48 = call i32 @memset(%struct.rtllib_rx_stats* %47, i32 0, i32 64)
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %51 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %53 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %56 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %58 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %36, align 4
  %60 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %61 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %63 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %66 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %68 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %71 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %73 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %72, i32 0, i32 4
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* @_rtl92e_query_rxphystatus.check_reg824, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %9
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %83 = call i32 @rtl92e_get_bb_reg(i32 %81, i32 %82, i32 512)
  store i32 %83, i32* @_rtl92e_query_rxphystatus.reg824_bit9, align 4
  store i32 1, i32* @_rtl92e_query_rxphystatus.check_reg824, align 4
  br label %84

84:                                               ; preds = %76, %9
  %85 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %86 = bitcast %struct.rx_fwinfo* %85 to i32*
  store i32* %86, i32** %22, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 24
  store i32* %88, i32** %22, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = bitcast i32* %89 to %struct.phy_sts_cck_819xpci*
  store %struct.phy_sts_cck_819xpci* %90, %struct.phy_sts_cck_819xpci** %20, align 8
  %91 = load i32*, i32** %22, align 8
  %92 = bitcast i32* %91 to %struct.phy_sts_ofdm_819xpci*
  store %struct.phy_sts_ofdm_819xpci* %92, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %93 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %94 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 -1, i32* %96, align 4
  %97 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %98 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 -1, i32* %100, align 4
  %101 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %102 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 -1, i32* %104, align 4
  %105 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %106 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 -1, i32* %108, align 4
  %109 = load i32, i32* %36, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %256

111:                                              ; preds = %84
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @_rtl92e_query_rxphystatus.reg824_bit9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %152, label %119

119:                                              ; preds = %111
  %120 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %121 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 192
  store i32 %123, i32* %38, align 4
  %124 = load i32, i32* %38, align 4
  %125 = ashr i32 %124, 6
  store i32 %125, i32* %38, align 4
  %126 = load i32, i32* %38, align 4
  switch i32 %126, label %151 [
    i32 3, label %127
    i32 2, label %133
    i32 1, label %139
    i32 0, label %145
  ]

127:                                              ; preds = %119
  %128 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %129 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 62
  %132 = sub nsw i32 -35, %131
  store i32 %132, i32* %29, align 4
  br label %151

133:                                              ; preds = %119
  %134 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %135 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 62
  %138 = sub nsw i32 -23, %137
  store i32 %138, i32* %29, align 4
  br label %151

139:                                              ; preds = %119
  %140 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %141 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 62
  %144 = sub nsw i32 -11, %143
  store i32 %144, i32* %29, align 4
  br label %151

145:                                              ; preds = %119
  %146 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %147 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 62
  %150 = sub nsw i32 8, %149
  store i32 %150, i32* %29, align 4
  br label %151

151:                                              ; preds = %119, %145, %139, %133, %127
  br label %189

152:                                              ; preds = %111
  %153 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %154 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 96
  store i32 %156, i32* %38, align 4
  %157 = load i32, i32* %38, align 4
  %158 = ashr i32 %157, 5
  store i32 %158, i32* %38, align 4
  %159 = load i32, i32* %38, align 4
  switch i32 %159, label %188 [
    i32 3, label %160
    i32 2, label %167
    i32 1, label %174
    i32 0, label %181
  ]

160:                                              ; preds = %152
  %161 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %162 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 31
  %165 = shl i32 %164, 1
  %166 = sub nsw i32 -35, %165
  store i32 %166, i32* %29, align 4
  br label %188

167:                                              ; preds = %152
  %168 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %169 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 31
  %172 = shl i32 %171, 1
  %173 = sub nsw i32 -23, %172
  store i32 %173, i32* %29, align 4
  br label %188

174:                                              ; preds = %152
  %175 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %176 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 31
  %179 = shl i32 %178, 1
  %180 = sub nsw i32 -11, %179
  store i32 %180, i32* %29, align 4
  br label %188

181:                                              ; preds = %152
  %182 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %183 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 31
  %186 = shl i32 %185, 1
  %187 = sub nsw i32 -8, %186
  store i32 %187, i32* %29, align 4
  br label %188

188:                                              ; preds = %152, %181, %174, %167, %160
  br label %189

189:                                              ; preds = %188, %151
  %190 = load i32, i32* %29, align 4
  %191 = call i32 @rtl92e_rx_db_to_percent(i32 %190)
  store i32 %191, i32* %33, align 4
  %192 = load i32, i32* %33, align 4
  %193 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %194 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %196 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %195, i32 0, i32 6
  store i32 %192, i32* %196, align 8
  %197 = load i32, i32* %29, align 4
  %198 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %199 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %255

202:                                              ; preds = %189
  %203 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %204 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = icmp sgt i32 %205, 40
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 100, i32* %39, align 4
  br label %230

208:                                              ; preds = %202
  %209 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %210 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %39, align 4
  %212 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %213 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %214, 64
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 0, i32* %39, align 4
  br label %229

217:                                              ; preds = %208
  %218 = load %struct.phy_sts_cck_819xpci*, %struct.phy_sts_cck_819xpci** %20, align 8
  %219 = getelementptr inbounds %struct.phy_sts_cck_819xpci, %struct.phy_sts_cck_819xpci* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %220, 20
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 100, i32* %39, align 4
  br label %228

223:                                              ; preds = %217
  %224 = load i32, i32* %39, align 4
  %225 = sub nsw i32 64, %224
  %226 = mul nsw i32 %225, 100
  %227 = sdiv i32 %226, 44
  store i32 %227, i32* %39, align 4
  br label %228

228:                                              ; preds = %223, %222
  br label %229

229:                                              ; preds = %228, %216
  br label %230

230:                                              ; preds = %229, %207
  %231 = load i32, i32* %39, align 4
  %232 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %233 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %39, align 4
  %235 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %236 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %235, i32 0, i32 8
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %39, align 4
  %238 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %239 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* %39, align 4
  %243 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %244 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %243, i32 0, i32 5
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %242, i32* %246, align 4
  %247 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %248 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %247, i32 0, i32 5
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 -1, i32* %250, align 4
  %251 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %252 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 -1, i32* %254, align 4
  br label %255

255:                                              ; preds = %230, %189
  br label %475

256:                                              ; preds = %84
  %257 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %258 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %262, i32* %23, align 4
  br label %263

263:                                              ; preds = %348, %256
  %264 = load i32, i32* %23, align 4
  %265 = load i32, i32* @RF90_PATH_MAX, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %351

267:                                              ; preds = %263
  %268 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %269 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %23, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %267
  %277 = load i32, i32* %37, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %37, align 4
  br label %279

279:                                              ; preds = %276, %267
  %280 = load %struct.phy_sts_ofdm_819xpci*, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %281 = getelementptr inbounds %struct.phy_sts_ofdm_819xpci, %struct.phy_sts_ofdm_819xpci* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %23, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, 63
  %288 = mul nsw i32 %287, 2
  %289 = sub nsw i32 %288, 110
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 %291
  store i32 %289, i32* %292, align 4
  %293 = load %struct.phy_sts_ofdm_819xpci*, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %294 = getelementptr inbounds %struct.phy_sts_ofdm_819xpci, %struct.phy_sts_ofdm_819xpci* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %23, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %25, align 4
  %300 = load i32, i32* %25, align 4
  store i32 %300, i32* %30, align 4
  %301 = load i32, i32* %30, align 4
  %302 = sdiv i32 %301, 2
  store i32 %302, i32* %30, align 4
  %303 = load i32, i32* %30, align 4
  %304 = sext i32 %303 to i64
  %305 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %306 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = load i32, i32* %23, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i64, i64* %308, i64 %310
  store i64 %304, i64* %311, align 8
  %312 = load i32, i32* %23, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @rtl92e_rx_db_to_percent(i32 %315)
  store i32 %316, i32* %34, align 4
  %317 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %318 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %317, i32 0, i32 1
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %23, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %279
  %326 = load i32, i32* %34, align 4
  %327 = load i32, i32* %35, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %35, align 4
  br label %329

329:                                              ; preds = %325, %279
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %347

332:                                              ; preds = %329
  %333 = load i32, i32* %34, align 4
  %334 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %335 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %334, i32 0, i32 9
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %23, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %333, i32* %339, align 4
  %340 = load i32, i32* %34, align 4
  %341 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %342 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %341, i32 0, i32 9
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %23, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %340, i32* %346, align 4
  br label %347

347:                                              ; preds = %332, %329
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %23, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %23, align 4
  br label %263

351:                                              ; preds = %263
  %352 = load %struct.phy_sts_ofdm_819xpci*, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %353 = getelementptr inbounds %struct.phy_sts_ofdm_819xpci, %struct.phy_sts_ofdm_819xpci* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = ashr i32 %354, 1
  %356 = and i32 %355, 127
  %357 = sub nsw i32 %356, 106
  store i32 %357, i32* %29, align 4
  %358 = load i32, i32* %29, align 4
  %359 = call i32 @rtl92e_rx_db_to_percent(i32 %358)
  store i32 %359, i32* %33, align 4
  %360 = load i32, i32* %33, align 4
  %361 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %362 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 8
  %363 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %364 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %363, i32 0, i32 6
  store i32 %360, i32* %364, align 8
  %365 = load i32, i32* %29, align 4
  %366 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %367 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %366, i32 0, i32 10
  store i32 %365, i32* %367, align 8
  %368 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %369 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %368, i32 0, i32 10
  store i32 %365, i32* %369, align 8
  %370 = load i32, i32* %29, align 4
  %371 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %372 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %371, i32 0, i32 7
  store i32 %370, i32* %372, align 4
  %373 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %374 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %390

377:                                              ; preds = %351
  %378 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %379 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @DESC90_RATEMCS8, align 8
  %382 = icmp sge i64 %380, %381
  br i1 %382, label %383, label %390

383:                                              ; preds = %377
  %384 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %385 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @DESC90_RATEMCS15, align 8
  %388 = icmp sle i64 %386, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %383
  store i32 2, i32* %24, align 4
  br label %391

390:                                              ; preds = %383, %377, %351
  store i32 1, i32* %24, align 4
  br label %391

391:                                              ; preds = %390, %389
  store i32 0, i32* %23, align 4
  br label %392

392:                                              ; preds = %441, %391
  %393 = load i32, i32* %23, align 4
  %394 = load i32, i32* %24, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %444

396:                                              ; preds = %392
  %397 = load %struct.phy_sts_ofdm_819xpci*, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %398 = getelementptr inbounds %struct.phy_sts_ofdm_819xpci, %struct.phy_sts_ofdm_819xpci* %397, i32 0, i32 3
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %23, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  store i32 %403, i32* %26, align 4
  %404 = load i32, i32* %26, align 4
  store i32 %404, i32* %31, align 4
  %405 = load i32, i32* %31, align 4
  %406 = sdiv i32 %405, 2
  store i32 %406, i32* %31, align 4
  %407 = load i32, i32* %31, align 4
  %408 = call i32 @rtl92e_evm_db_to_percent(i32 %407)
  store i32 %408, i32* %32, align 4
  %409 = load i32, i32* %15, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %440

411:                                              ; preds = %396
  %412 = load i32, i32* %23, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %411
  %415 = load i32, i32* %32, align 4
  %416 = and i32 %415, 255
  %417 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %418 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %417, i32 0, i32 8
  store i32 %416, i32* %418, align 8
  %419 = load i32, i32* %32, align 4
  %420 = and i32 %419, 255
  %421 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %422 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %421, i32 0, i32 8
  store i32 %420, i32* %422, align 8
  br label %423

423:                                              ; preds = %414, %411
  %424 = load i32, i32* %32, align 4
  %425 = and i32 %424, 255
  %426 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %427 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %426, i32 0, i32 5
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %23, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  store i32 %425, i32* %431, align 4
  %432 = load i32, i32* %32, align 4
  %433 = and i32 %432, 255
  %434 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %435 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %434, i32 0, i32 5
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %23, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  store i32 %433, i32* %439, align 4
  br label %440

440:                                              ; preds = %423, %396
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %23, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %23, align 4
  br label %392

444:                                              ; preds = %392
  %445 = load %struct.phy_sts_ofdm_819xpci*, %struct.phy_sts_ofdm_819xpci** %19, align 8
  %446 = getelementptr inbounds %struct.phy_sts_ofdm_819xpci, %struct.phy_sts_ofdm_819xpci* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  store i32 %447, i32* %27, align 4
  %448 = bitcast i32* %27 to %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*
  store %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag* %448, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag** %21, align 8
  %449 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %13, align 8
  %450 = getelementptr inbounds %struct.rx_fwinfo, %struct.rx_fwinfo* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %444
  %454 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %455 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = load %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag*, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag** %21, align 8
  %459 = getelementptr inbounds %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag, %struct.phy_ofdm_rx_status_rxsc_sgien_exintfflag* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 1, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %457, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %463, align 4
  br label %474

466:                                              ; preds = %444
  %467 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %468 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 0
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %471, align 4
  br label %474

474:                                              ; preds = %466, %453
  br label %475

475:                                              ; preds = %474, %255
  %476 = load i32, i32* %36, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %488

478:                                              ; preds = %475
  %479 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %480 = load i32, i32* %33, align 4
  %481 = sext i32 %480 to i64
  %482 = call i64 @_rtl92e_signal_scale_mapping(%struct.r8192_priv* %479, i64 %481)
  %483 = trunc i64 %482 to i32
  %484 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %485 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %484, i32 0, i32 11
  store i32 %483, i32* %485, align 4
  %486 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %487 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %486, i32 0, i32 11
  store i32 %483, i32* %487, align 4
  br label %504

488:                                              ; preds = %475
  %489 = load i32, i32* %37, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %503

491:                                              ; preds = %488
  %492 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %493 = load i32, i32* %37, align 4
  %494 = load i32, i32* %35, align 4
  %495 = sdiv i32 %494, %493
  store i32 %495, i32* %35, align 4
  %496 = sext i32 %495 to i64
  %497 = call i64 @_rtl92e_signal_scale_mapping(%struct.r8192_priv* %492, i64 %496)
  %498 = trunc i64 %497 to i32
  %499 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %14, align 8
  %500 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %499, i32 0, i32 11
  store i32 %498, i32* %500, align 4
  %501 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %11, align 8
  %502 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %501, i32 0, i32 11
  store i32 %498, i32* %502, align 4
  br label %503

503:                                              ; preds = %491, %488
  br label %504

504:                                              ; preds = %503, %478
  ret void
}

declare dso_local i32 @rx_hal_is_cck_rate(%struct.rx_fwinfo*) #1

declare dso_local i32 @memset(%struct.rtllib_rx_stats*, i32, i32) #1

declare dso_local i32 @rtl92e_get_bb_reg(i32, i32, i32) #1

declare dso_local i32 @rtl92e_rx_db_to_percent(i32) #1

declare dso_local i32 @rtl92e_evm_db_to_percent(i32) #1

declare dso_local i64 @_rtl92e_signal_scale_mapping(%struct.r8192_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
