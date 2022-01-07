; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_MonitorWiFiCtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_MonitorWiFiCtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32*)* }

@halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter = internal global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_18__* null, align 8
@pCoexDm = common dso_local global %struct.TYPE_19__* null, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @halbtc8723b1ant_MonitorWiFiCtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_MonitorWiFiCtr(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %8 = load i32 (%struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*, i32, i32*)** %7, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %11 = call i32 %8(%struct.TYPE_20__* %9, i32 %10, i32* %4)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %14 = load i32 (%struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %16 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %17 = call i32 %14(%struct.TYPE_20__* %15, i32 %16, i32* %3)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %20 = load i32 (%struct.TYPE_20__*, i32, i32*)*, i32 (%struct.TYPE_20__*, i32, i32*)** %19, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %23 = call i32 %20(%struct.TYPE_20__* %21, i32 %22, i32* %5)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  br label %102

45:                                               ; preds = %1
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %50 = call i64 %48(%struct.TYPE_20__* %49, i32 3976)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %57 = call i64 %55(%struct.TYPE_20__* %56, i32 3988)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %61, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %64 = call i64 %62(%struct.TYPE_20__* %63, i32 3984)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %71 = call i64 %69(%struct.TYPE_20__* %70, i32 4024)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %78 = call i64 %76(%struct.TYPE_20__* %77, i32 3972)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %85 = call i64 %83(%struct.TYPE_20__* %84, i32 3990)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %92 = call i64 %90(%struct.TYPE_20__* %91, i32 3986)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %99 = call i64 %97(%struct.TYPE_20__* %98, i32 4026)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 7
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %45, %28
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_20__*, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32)** %104, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = call i32 %105(%struct.TYPE_20__* %106, i32 3862, i32 1, i32 1)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32 (%struct.TYPE_20__*, i32, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32, i32)** %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %112 = call i32 %110(%struct.TYPE_20__* %111, i32 3862, i32 1, i32 0)
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %178

115:                                              ; preds = %102
  %116 = load i32, i32* %3, align 4
  %117 = icmp sge i32 %116, 30
  br i1 %117, label %118, label %178

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %178, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pCoexDm, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %133, %127, %121
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = icmp sgt i64 %142, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %139
  %156 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %157 = icmp slt i32 %156, 5
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  br label %161

161:                                              ; preds = %158, %155
  br label %169

162:                                              ; preds = %139
  %163 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %161
  br label %177

170:                                              ; preds = %133
  %171 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176, %169
  br label %185

178:                                              ; preds = %118, %115, %102
  %179 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %177
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %192 = icmp sge i32 %191, 5
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 9
  store i32 1, i32* %195, align 4
  br label %199

196:                                              ; preds = %190
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 9
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %193
  br label %210

200:                                              ; preds = %185
  %201 = load i32, i32* @halbtc8723b1ant_MonitorWiFiCtr.nCCKLockCounter, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 9
  store i32 0, i32* %205, align 4
  br label %209

206:                                              ; preds = %200
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 9
  store i32 1, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %199
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** @pCoexSta, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
