; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_monitor_wifi_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_monitor_wifi_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)* }

@halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter = internal global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_monitor_wifi_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_monitor_wifi_ctr(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 3
  %9 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %8, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %12 = call i32 %9(%struct.btc_coexist* %10, i32 %11, i32* %4)
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 3
  %15 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %14, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %18 = call i32 %15(%struct.btc_coexist* %16, i32 %17, i32* %3)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 3
  %21 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %20, align 8
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %24 = call i32 %21(%struct.btc_coexist* %22, i32 %23, i32* %5)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  br label %103

46:                                               ; preds = %1
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 0
  %49 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %48, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = call i64 %49(%struct.btc_coexist* %50, i32 3976)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 1
  %56 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %55, align 8
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = call i64 %56(%struct.btc_coexist* %57, i32 3988)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %61, i32 0, i32 1
  %63 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %62, align 8
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = call i64 %63(%struct.btc_coexist* %64, i32 3984)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 1
  %70 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %69, align 8
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = call i64 %70(%struct.btc_coexist* %71, i32 4024)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %76 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %75, i32 0, i32 0
  %77 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %76, align 8
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = call i64 %77(%struct.btc_coexist* %78, i32 3972)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 1
  %84 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %83, align 8
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = call i64 %84(%struct.btc_coexist* %85, i32 3990)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %90 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %89, i32 0, i32 1
  %91 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %90, align 8
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i64 %91(%struct.btc_coexist* %92, i32 3986)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  store i64 %93, i64* %95, align 8
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %97 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %96, i32 0, i32 1
  %98 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %97, align 8
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %100 = call i64 %98(%struct.btc_coexist* %99, i32 4026)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %46, %29
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %104, i32 0, i32 2
  %106 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %105, align 8
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = call i32 %106(%struct.btc_coexist* %107, i32 3862, i32 1, i32 1)
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %109, i32 0, i32 2
  %111 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %110, align 8
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = call i32 %111(%struct.btc_coexist* %112, i32 3862, i32 1, i32 0)
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %188

116:                                              ; preds = %103
  %117 = load i32, i32* %3, align 4
  %118 = icmp sge i32 %117, 30
  br i1 %118, label %119, label %188

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %188, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  store i64 %137, i64* %6, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %155, label %143

143:                                              ; preds = %122
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %149, %143, %122
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = icmp sgt i64 %158, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %167 = icmp slt i32 %166, 3
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  br label %171

171:                                              ; preds = %168, %165
  br label %179

172:                                              ; preds = %155
  %173 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  br label %178

178:                                              ; preds = %175, %172
  br label %179

179:                                              ; preds = %178, %171
  br label %187

180:                                              ; preds = %149
  %181 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %179
  br label %195

188:                                              ; preds = %119, %116, %103
  %189 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %187
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %202 = icmp sge i32 %201, 3
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 9
  store i32 1, i32* %205, align 4
  br label %209

206:                                              ; preds = %200
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 9
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  br label %220

210:                                              ; preds = %195
  %211 = load i32, i32* @halbtc8723b1ant_monitor_wifi_ctr.cck_lock_counter, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 9
  store i32 0, i32* %215, align 4
  br label %219

216:                                              ; preds = %210
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 9
  store i32 1, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %209
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 10
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %220
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
