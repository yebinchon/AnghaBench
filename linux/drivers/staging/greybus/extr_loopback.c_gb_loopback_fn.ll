; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"iteration_count\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"load test complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"continuing on with new test set\0A\00", align 1
@GB_LOOPBACK_TYPE_PING = common dso_local global i32 0, align 4
@GB_LOOPBACK_TYPE_TRANSFER = common dso_local global i32 0, align 4
@GB_LOOPBACK_TYPE_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gb_loopback_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_fn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_loopback*, align 8
  %10 = alloca %struct.gb_bundle*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.gb_loopback*
  store %struct.gb_loopback* %12, %struct.gb_loopback** %9, align 8
  %13 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %14 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %13, i32 0, i32 12
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %16, align 8
  store %struct.gb_bundle* %17, %struct.gb_bundle** %10, align 8
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %19 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %246

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %108, %242
  %26 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %27 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %25
  %31 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %32 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %31)
  %33 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %34 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %37 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = call i64 (...) @kthread_should_stop()
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %40, %30
  %44 = phi i1 [ true, %30 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event_interruptible(i32 %35, i32 %45)
  %47 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %48 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %246

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %25
  %55 = call i64 (...) @kthread_should_stop()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %243

58:                                               ; preds = %54
  %59 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %60 = call i32 @gb_loopback_async_wait_to_send(%struct.gb_loopback* %59)
  %61 = call i64 (...) @kthread_should_stop()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %243

64:                                               ; preds = %58
  %65 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %66 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %65, i32 0, i32 5
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %69 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %72 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %64
  %76 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %77 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %76, i32 0, i32 5
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %80 = call i32 @gb_loopback_async_wait_all(%struct.gb_loopback* %79)
  %81 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %82 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %81, i32 0, i32 5
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %85 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %88 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %75
  %92 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %93 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %95 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %97 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %96, i32 0, i32 10
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @sysfs_notify(i32* %99, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %102 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %101, i32 0, i32 0
  %103 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %108

104:                                              ; preds = %75
  %105 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %106 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %105, i32 0, i32 0
  %107 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %91
  %109 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %110 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %109, i32 0, i32 5
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %25

112:                                              ; preds = %64
  %113 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %114 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %117 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %5, align 4
  %119 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %120 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %6, align 4
  %122 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %123 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @ktime_to_ns(i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %112
  %128 = call i32 (...) @ktime_get()
  %129 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %130 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %112
  %132 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %133 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @GB_LOOPBACK_TYPE_PING, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %142 = call i32 @gb_loopback_async_ping(%struct.gb_loopback* %141)
  store i32 %142, i32* %4, align 4
  br label %161

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @GB_LOOPBACK_TYPE_TRANSFER, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @gb_loopback_async_transfer(%struct.gb_loopback* %148, i32 %149)
  store i32 %150, i32* %4, align 4
  br label %160

151:                                              ; preds = %143
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @GB_LOOPBACK_TYPE_SINK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @gb_loopback_async_sink(%struct.gb_loopback* %156, i32 %157)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %147
  br label %161

161:                                              ; preds = %160, %140
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %166 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %170 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %164, %161
  br label %219

174:                                              ; preds = %131
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @GB_LOOPBACK_TYPE_PING, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %180 = call i32 @gb_loopback_sync_ping(%struct.gb_loopback* %179)
  store i32 %180, i32* %4, align 4
  br label %199

181:                                              ; preds = %174
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @GB_LOOPBACK_TYPE_TRANSFER, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @gb_loopback_sync_transfer(%struct.gb_loopback* %186, i32 %187)
  store i32 %188, i32* %4, align 4
  br label %198

189:                                              ; preds = %181
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @GB_LOOPBACK_TYPE_SINK, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @gb_loopback_sync_sink(%struct.gb_loopback* %194, i32 %195)
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %193, %189
  br label %198

198:                                              ; preds = %197, %185
  br label %199

199:                                              ; preds = %198, %178
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %204 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %209 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %209, align 8
  %212 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %213 = load i32, i32* %4, align 4
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @gb_loopback_calculate_stats(%struct.gb_loopback* %212, i32 %217)
  br label %219

219:                                              ; preds = %207, %173
  %220 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %221 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %221, align 8
  %224 = load %struct.gb_loopback*, %struct.gb_loopback** %9, align 8
  %225 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %224, i32 0, i32 5
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %219
  %230 = load i32, i32* %5, align 4
  %231 = icmp slt i32 %230, 20000
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 100
  %236 = call i32 @usleep_range(i32 %233, i32 %235)
  br label %241

237:                                              ; preds = %229
  %238 = load i32, i32* %5, align 4
  %239 = sdiv i32 %238, 1000
  %240 = call i32 @msleep(i32 %239)
  br label %241

241:                                              ; preds = %237, %232
  br label %242

242:                                              ; preds = %241, %219
  br label %25

243:                                              ; preds = %63, %57
  %244 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %245 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %244)
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %243, %51, %22
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @gb_loopback_async_wait_to_send(%struct.gb_loopback*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_loopback_async_wait_all(%struct.gb_loopback*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @gb_loopback_async_ping(%struct.gb_loopback*) #1

declare dso_local i32 @gb_loopback_async_transfer(%struct.gb_loopback*, i32) #1

declare dso_local i32 @gb_loopback_async_sink(%struct.gb_loopback*, i32) #1

declare dso_local i32 @gb_loopback_sync_ping(%struct.gb_loopback*) #1

declare dso_local i32 @gb_loopback_sync_transfer(%struct.gb_loopback*, i32) #1

declare dso_local i32 @gb_loopback_sync_sink(%struct.gb_loopback*, i32) #1

declare dso_local i32 @gb_loopback_calculate_stats(%struct.gb_loopback*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
