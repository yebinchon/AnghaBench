; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_response_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_dpcsup.c_aac_response_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.aac_queue = type { i32*, %struct.aac_dev* }
%struct.aac_dev = type { i32, i32, %struct.TYPE_6__*, %struct.fib* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fib = type { i32, i32, i32, i32, i32, i32 (i32, %struct.fib*)*, %struct.hw_fib* }
%struct.hw_fib = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.aac_entry = type { i32 }

@HostNormRespQueue = common dso_local global i32 0, align 4
@AdapNormCmdQueue = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_TIMED_OUT = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4
@AdapterProcessed = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_FASTRESP = common dso_local global i32 0, align 4
@aac_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NuFileSystem = common dso_local global i32 0, align 4
@NoResponseExpected = common dso_local global i32 0, align 4
@Async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_response_normal(%struct.aac_queue* %0) #0 {
  %2 = alloca %struct.aac_queue*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_entry*, align 8
  %5 = alloca %struct.hw_fib*, align 8
  %6 = alloca %struct.fib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.aac_queue* %0, %struct.aac_queue** %2, align 8
  %14 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %15 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %14, i32 0, i32 1
  %16 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  store %struct.aac_dev* %16, %struct.aac_dev** %3, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %18 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %220, %64, %1
  %23 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %24 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %25 = call i64 @aac_consumer_get(%struct.aac_dev* %23, %struct.aac_queue* %24, %struct.aac_entry** %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %228

27:                                               ; preds = %22
  %28 = load %struct.aac_entry*, %struct.aac_entry** %4, align 8
  %29 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %35 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %34, i32 0, i32 3
  %36 = load %struct.fib*, %struct.fib** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fib, %struct.fib* %36, i64 %39
  store %struct.fib* %40, %struct.fib** %6, align 8
  %41 = load %struct.fib*, %struct.fib** %6, align 8
  %42 = getelementptr inbounds %struct.fib, %struct.fib* %41, i32 0, i32 6
  %43 = load %struct.hw_fib*, %struct.hw_fib** %42, align 8
  store %struct.hw_fib* %43, %struct.hw_fib** %5, align 8
  %44 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %45 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %46 = load i32, i32* @HostNormRespQueue, align 4
  %47 = call i32 @aac_consumer_free(%struct.aac_dev* %44, %struct.aac_queue* %45, i32 %46)
  %48 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %49 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* @AdapNormCmdQueue, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  %57 = load %struct.fib*, %struct.fib** %6, align 8
  %58 = getelementptr inbounds %struct.fib, %struct.fib* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FIB_CONTEXT_FLAG_TIMED_OUT, align 4
  %61 = and i32 %59, %60
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %27
  %65 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %66 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.fib*, %struct.fib** %6, align 8
  %71 = call i32 @aac_fib_complete(%struct.fib* %70)
  %72 = load %struct.fib*, %struct.fib** %6, align 8
  %73 = call i32 @aac_fib_free(%struct.fib* %72)
  %74 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %75 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  br label %22

79:                                               ; preds = %27
  %80 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %81 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load i32, i32* @ST_OK, align 4
  %89 = call i32 @cpu_to_le32(i32 %88)
  %90 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %91 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* @AdapterProcessed, align 4
  %95 = call i32 @cpu_to_le32(i32 %94)
  %96 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %97 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @FIB_CONTEXT_FLAG_FASTRESP, align 4
  %102 = load %struct.fib*, %struct.fib** %6, align 8
  %103 = getelementptr inbounds %struct.fib, %struct.fib* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %87, %79
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 5), align 4
  %108 = call i32 @FIB_COUNTER_INCREMENT(i32 %107)
  %109 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %110 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @NuFileSystem, align 4
  %114 = call i64 @cpu_to_le16(i32 %113)
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %106
  %117 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %118 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cpu_to_le32(i32 -65536)
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load i32, i32* @ST_OK, align 4
  %128 = call i32 @cpu_to_le32(i32 %127)
  %129 = load i32*, i32** %12, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %116
  br label %131

131:                                              ; preds = %130, %106
  %132 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %133 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @NoResponseExpected, align 4
  %137 = load i32, i32* @Async, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @cpu_to_le32(i32 %138)
  %140 = and i32 %135, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %131
  %143 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %144 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NoResponseExpected, align 4
  %148 = call i32 @cpu_to_le32(i32 %147)
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 4), align 4
  %153 = call i32 @FIB_COUNTER_INCREMENT(i32 %152)
  br label %157

154:                                              ; preds = %142
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 3), align 4
  %156 = call i32 @FIB_COUNTER_INCREMENT(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.fib*, %struct.fib** %6, align 8
  %159 = getelementptr inbounds %struct.fib, %struct.fib* %158, i32 0, i32 5
  %160 = load i32 (i32, %struct.fib*)*, i32 (i32, %struct.fib*)** %159, align 8
  %161 = load %struct.fib*, %struct.fib** %6, align 8
  %162 = getelementptr inbounds %struct.fib, %struct.fib* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.fib*, %struct.fib** %6, align 8
  %165 = call i32 %160(i32 %163, %struct.fib* %164)
  br label %220

166:                                              ; preds = %131
  %167 = load %struct.fib*, %struct.fib** %6, align 8
  %168 = getelementptr inbounds %struct.fib, %struct.fib* %167, i32 0, i32 2
  %169 = load i64, i64* %13, align 8
  %170 = call i32 @spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load %struct.fib*, %struct.fib** %6, align 8
  %172 = getelementptr inbounds %struct.fib, %struct.fib* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = load %struct.fib*, %struct.fib** %6, align 8
  %177 = getelementptr inbounds %struct.fib, %struct.fib* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = load %struct.fib*, %struct.fib** %6, align 8
  %179 = getelementptr inbounds %struct.fib, %struct.fib* %178, i32 0, i32 3
  %180 = call i32 @complete(i32* %179)
  br label %181

181:                                              ; preds = %175, %166
  %182 = load %struct.fib*, %struct.fib** %6, align 8
  %183 = getelementptr inbounds %struct.fib, %struct.fib* %182, i32 0, i32 2
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %187 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %186, i32 0, i32 0
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @spin_lock_irqsave(i32* %187, i64 %188)
  %190 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %191 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %195 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %194, i32 0, i32 0
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @spin_unlock_irqrestore(i32* %195, i64 %196)
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 2), align 4
  %199 = call i32 @FIB_COUNTER_INCREMENT(i32 %198)
  %200 = load %struct.fib*, %struct.fib** %6, align 8
  %201 = getelementptr inbounds %struct.fib, %struct.fib* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %219

204:                                              ; preds = %181
  %205 = load %struct.fib*, %struct.fib** %6, align 8
  %206 = getelementptr inbounds %struct.fib, %struct.fib* %205, i32 0, i32 2
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @spin_lock_irqsave(i32* %206, i64 %207)
  %209 = load %struct.fib*, %struct.fib** %6, align 8
  %210 = getelementptr inbounds %struct.fib, %struct.fib* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.fib*, %struct.fib** %6, align 8
  %212 = getelementptr inbounds %struct.fib, %struct.fib* %211, i32 0, i32 2
  %213 = load i64, i64* %13, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  %215 = load %struct.fib*, %struct.fib** %6, align 8
  %216 = call i32 @aac_fib_complete(%struct.fib* %215)
  %217 = load %struct.fib*, %struct.fib** %6, align 8
  %218 = call i32 @aac_fib_free(%struct.fib* %217)
  br label %219

219:                                              ; preds = %204, %181
  br label %220

220:                                              ; preds = %219, %157
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  %223 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %224 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = call i32 @spin_lock_irqsave(i32* %225, i64 %226)
  br label %22

228:                                              ; preds = %22
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 0), align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 0), align 4
  br label %234

234:                                              ; preds = %232, %228
  %235 = load i32, i32* %7, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 1), align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aac_config, i32 0, i32 1), align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = load %struct.aac_queue*, %struct.aac_queue** %2, align 8
  %242 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %8, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* %243, i64 %244)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @aac_consumer_get(%struct.aac_dev*, %struct.aac_queue*, %struct.aac_entry**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @aac_consumer_free(%struct.aac_dev*, %struct.aac_queue*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FIB_COUNTER_INCREMENT(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
