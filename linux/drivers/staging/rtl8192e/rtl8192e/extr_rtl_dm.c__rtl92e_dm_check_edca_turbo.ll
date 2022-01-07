; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_edca_turbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_edca_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i32 (%struct.net_device*, i32, i32*)*, %struct.rt_hi_throughput* }
%struct.rt_hi_throughput = type { i32, i64 }

@_rtl92e_dm_check_edca_turbo.lastTxOkCnt = internal global i64 0, align 8
@_rtl92e_dm_check_edca_turbo.lastRxOkCnt = internal global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@HT_IOT_ACT_DISABLE_EDCA_TURBO = common dso_local global i32 0, align 4
@HT_IOT_ACT_EDCA_BIAS_ON_RX = common dso_local global i32 0, align 4
@EDCAPARA_BE = common dso_local global i32 0, align 4
@edca_setting_UL = common dso_local global i32* null, align 8
@WIRELESS_MODE_G = common dso_local global i64 0, align 8
@edca_setting_DL_GMode = common dso_local global i32* null, align 8
@edca_setting_DL = common dso_local global i32* null, align 8
@AC0_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_check_edca_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_check_edca_turbo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rt_hi_throughput*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %13, align 8
  store %struct.rt_hi_throughput* %14, %struct.rt_hi_throughput** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IW_MODE_ADHOC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %236

23:                                               ; preds = %1
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTLLIB_LINKED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %236

32:                                               ; preds = %23
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %36, align 8
  %38 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HT_IOT_ACT_DISABLE_EDCA_TURBO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %236

44:                                               ; preds = %32
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %217, label %51

51:                                               ; preds = %44
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %5, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %6, align 8
  %64 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %65 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HT_IOT_ACT_EDCA_BIAS_ON_RX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %51
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = mul i64 4, %72
  %74 = icmp ugt i64 %71, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i32, i32* @EDCAPARA_BE, align 4
  %88 = load i32*, i32** @edca_setting_UL, align 8
  %89 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %90 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rtl92e_writel(%struct.net_device* %86, i32 %87, i32 %93)
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %85, %80
  br label %140

98:                                               ; preds = %70
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WIRELESS_MODE_G, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %108
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i32, i32* @EDCAPARA_BE, align 4
  %119 = load i32*, i32** @edca_setting_DL_GMode, align 8
  %120 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %121 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rtl92e_writel(%struct.net_device* %117, i32 %118, i32 %124)
  br label %136

126:                                              ; preds = %108
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load i32, i32* @EDCAPARA_BE, align 4
  %129 = load i32*, i32** @edca_setting_DL, align 8
  %130 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %131 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @rtl92e_writel(%struct.net_device* %127, i32 %128, i32 %134)
  br label %136

136:                                              ; preds = %126, %116
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %103
  br label %140

140:                                              ; preds = %139, %97
  %141 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %142 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  br label %216

143:                                              ; preds = %51
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %5, align 8
  %146 = mul i64 4, %145
  %147 = icmp ugt i64 %144, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %143
  %149 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %150 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %155 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %189, label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %160 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %159, i32 0, i32 3
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WIRELESS_MODE_G, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = load i32, i32* @EDCAPARA_BE, align 4
  %169 = load i32*, i32** @edca_setting_DL_GMode, align 8
  %170 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %171 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @rtl92e_writel(%struct.net_device* %167, i32 %168, i32 %174)
  br label %186

176:                                              ; preds = %158
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = load i32, i32* @EDCAPARA_BE, align 4
  %179 = load i32*, i32** @edca_setting_DL, align 8
  %180 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %181 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @rtl92e_writel(%struct.net_device* %177, i32 %178, i32 %184)
  br label %186

186:                                              ; preds = %176, %166
  %187 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %188 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %153
  br label %213

190:                                              ; preds = %143
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = load i32, i32* @EDCAPARA_BE, align 4
  %203 = load i32*, i32** @edca_setting_UL, align 8
  %204 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %4, align 8
  %205 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @rtl92e_writel(%struct.net_device* %201, i32 %202, i32 %208)
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  br label %212

212:                                              ; preds = %200, %195
  br label %213

213:                                              ; preds = %212, %189
  %214 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %215 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %140
  br label %235

217:                                              ; preds = %44
  %218 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %219 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load i32, i32* @AC0_BE, align 4
  store i32 %223, i32* %7, align 4
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 3
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 4
  %228 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %227, align 8
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = load i32, i32* @HW_VAR_AC_PARAM, align 4
  %231 = call i32 %228(%struct.net_device* %229, i32 %230, i32* %7)
  %232 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %233 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %232, i32 0, i32 1
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %222, %217
  br label %235

235:                                              ; preds = %234, %216
  br label %236

236:                                              ; preds = %235, %43, %31, %22
  %237 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %238 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %237, i32 0, i32 3
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  store i32 0, i32* %240, align 8
  %241 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %242 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* @_rtl92e_dm_check_edca_turbo.lastTxOkCnt, align 8
  %245 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %246 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* @_rtl92e_dm_check_edca_turbo.lastRxOkCnt, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
