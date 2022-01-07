; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_notify_bulks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_notify_bulks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { %struct.vchiq_bulk_queue, %struct.TYPE_2__*, i32, i64, i32 }
%struct.vchiq_bulk_queue = type { i64, i64, i64, %struct.vchiq_bulk* }
%struct.vchiq_bulk = type { i64, i64, i64, %struct.bulk_waiter*, i64 }
%struct.bulk_waiter = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d: nb:%d %cx - p=%x rn=%x r=%x\00", align 1
@VCHIQ_BULK_ACTUAL_ABORTED = common dso_local global i64 0, align 8
@VCHIQ_BULK_TRANSMIT = common dso_local global i64 0, align 8
@bulk_tx_count = common dso_local global i32 0, align 4
@bulk_tx_bytes = common dso_local global i32 0, align 4
@bulk_rx_count = common dso_local global i32 0, align 4
@bulk_rx_bytes = common dso_local global i32 0, align 4
@bulk_aborted_count = common dso_local global i32 0, align 4
@VCHIQ_BULK_MODE_BLOCKING = common dso_local global i64 0, align 8
@bulk_waiter_spinlock = common dso_local global i32 0, align 4
@VCHIQ_BULK_MODE_CALLBACK = common dso_local global i64 0, align 8
@VCHIQ_BULK_TRANSMIT_ABORTED = common dso_local global i32 0, align 4
@VCHIQ_BULK_TRANSMIT_DONE = common dso_local global i32 0, align 4
@VCHIQ_BULK_RECEIVE_ABORTED = common dso_local global i32 0, align 4
@VCHIQ_BULK_RECEIVE_DONE = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_POLL_TXNOTIFY = common dso_local global i32 0, align 4
@VCHIQ_POLL_RXNOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vchiq_service*, %struct.vchiq_bulk_queue*, i32)* @notify_bulks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @notify_bulks(%struct.vchiq_service* %0, %struct.vchiq_bulk_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.vchiq_service*, align 8
  %5 = alloca %struct.vchiq_bulk_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vchiq_bulk*, align 8
  %9 = alloca %struct.bulk_waiter*, align 8
  %10 = alloca i32, align 4
  store %struct.vchiq_service* %0, %struct.vchiq_service** %4, align 8
  store %struct.vchiq_bulk_queue* %1, %struct.vchiq_bulk_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @vchiq_core_log_level, align 4
  %13 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %14 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %19 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %22 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %23 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %22, i32 0, i32 0
  %24 = icmp eq %struct.vchiq_bulk_queue* %21, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 116, i32 114
  %27 = trunc i32 %26 to i8
  %28 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %29 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %32 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %35 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vchiq_log_trace(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i8 signext %27, i64 %30, i64 %33, i64 %36)
  %38 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %39 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %42 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %199

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %185, %46
  %48 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %49 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %52 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %193

55:                                               ; preds = %47
  %56 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %57 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %56, i32 0, i32 3
  %58 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %57, align 8
  %59 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %60 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @BULK_INDEX(i64 %61)
  %63 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %58, i64 %62
  store %struct.vchiq_bulk* %63, %struct.vchiq_bulk** %8, align 8
  %64 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %65 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %185

68:                                               ; preds = %55
  %69 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %70 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %185

73:                                               ; preds = %68
  %74 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %75 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %81 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VCHIQ_BULK_TRANSMIT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %87 = load i32, i32* @bulk_tx_count, align 4
  %88 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %86, i32 %87)
  %89 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %90 = load i32, i32* @bulk_tx_bytes, align 4
  %91 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %92 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.vchiq_service* %89, i32 %90, i64 %93)
  br label %105

95:                                               ; preds = %79
  %96 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %97 = load i32, i32* @bulk_rx_count, align 4
  %98 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %96, i32 %97)
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %100 = load i32, i32* @bulk_rx_bytes, align 4
  %101 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %102 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.vchiq_service* %99, i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %110

106:                                              ; preds = %73
  %107 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %108 = load i32, i32* @bulk_aborted_count, align 4
  %109 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %105
  %111 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %112 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VCHIQ_BULK_MODE_BLOCKING, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = call i32 @spin_lock(i32* @bulk_waiter_spinlock)
  %118 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %119 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %118, i32 0, i32 3
  %120 = load %struct.bulk_waiter*, %struct.bulk_waiter** %119, align 8
  store %struct.bulk_waiter* %120, %struct.bulk_waiter** %9, align 8
  %121 = load %struct.bulk_waiter*, %struct.bulk_waiter** %9, align 8
  %122 = icmp ne %struct.bulk_waiter* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %125 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.bulk_waiter*, %struct.bulk_waiter** %9, align 8
  %128 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.bulk_waiter*, %struct.bulk_waiter** %9, align 8
  %130 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %129, i32 0, i32 1
  %131 = call i32 @complete(i32* %130)
  br label %132

132:                                              ; preds = %123, %116
  %133 = call i32 @spin_unlock(i32* @bulk_waiter_spinlock)
  br label %184

134:                                              ; preds = %110
  %135 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %136 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @VCHIQ_BULK_MODE_CALLBACK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %134
  %141 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %142 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @VCHIQ_BULK_TRANSMIT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %148 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @VCHIQ_BULK_TRANSMIT_ABORTED, align 4
  br label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @VCHIQ_BULK_TRANSMIT_DONE, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  br label %170

158:                                              ; preds = %140
  %159 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %160 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @VCHIQ_BULK_RECEIVE_ABORTED, align 4
  br label %168

166:                                              ; preds = %158
  %167 = load i32, i32* @VCHIQ_BULK_RECEIVE_DONE, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  br label %170

170:                                              ; preds = %168, %156
  %171 = phi i32 [ %157, %156 ], [ %169, %168 ]
  store i32 %171, i32* %10, align 4
  %172 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %8, align 8
  %175 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %174, i32 0, i32 3
  %176 = load %struct.bulk_waiter*, %struct.bulk_waiter** %175, align 8
  %177 = call i64 @make_service_callback(%struct.vchiq_service* %172, i32 %173, i32* null, %struct.bulk_waiter* %176)
  store i64 %177, i64* %7, align 8
  %178 = load i64, i64* %7, align 8
  %179 = load i64, i64* @VCHIQ_RETRY, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %193

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %134
  br label %184

184:                                              ; preds = %183, %132
  br label %185

185:                                              ; preds = %184, %68, %55
  %186 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %187 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %191 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %190, i32 0, i32 2
  %192 = call i32 @complete(i32* %191)
  br label %47

193:                                              ; preds = %181, %47
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %197, i64* %7, align 8
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %198, %3
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* @VCHIQ_RETRY, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %199
  %204 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %205 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %208 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %5, align 8
  %209 = load %struct.vchiq_service*, %struct.vchiq_service** %4, align 8
  %210 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %209, i32 0, i32 0
  %211 = icmp eq %struct.vchiq_bulk_queue* %208, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %203
  %213 = load i32, i32* @VCHIQ_POLL_TXNOTIFY, align 4
  br label %216

214:                                              ; preds = %203
  %215 = load i32, i32* @VCHIQ_POLL_RXNOTIFY, align 4
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = call i32 @request_poll(%struct.TYPE_2__* %206, %struct.vchiq_service* %207, i32 %217)
  br label %219

219:                                              ; preds = %216, %199
  %220 = load i64, i64* %7, align 8
  ret i64 %220
}

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i8 signext, i64, i64, i64) #1

declare dso_local i64 @BULK_INDEX(i64) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service*, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_ADD(%struct.vchiq_service*, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @make_service_callback(%struct.vchiq_service*, i32, i32*, %struct.bulk_waiter*) #1

declare dso_local i32 @request_poll(%struct.TYPE_2__*, %struct.vchiq_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
