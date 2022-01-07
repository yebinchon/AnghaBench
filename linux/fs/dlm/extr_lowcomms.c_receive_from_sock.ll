; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_receive_from_sock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_receive_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lowcomms: addr=%p, base=%u, len=%u, read=%d\00", align 1
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @receive_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_from_sock(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr, align 4
  %6 = alloca [2 x %struct.kvec], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = bitcast %struct.msghdr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %225

22:                                               ; preds = %1
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %225

30:                                               ; preds = %22
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i32* @alloc_page(i32 %36)
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %208

45:                                               ; preds = %35
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 5
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = call i32 @cbuf_init(%struct.TYPE_6__* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %30
  %51 = load %struct.connection*, %struct.connection** %3, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 5
  %57 = call i64 @cbuf_data(%struct.TYPE_6__* %56)
  %58 = sub nsw i64 %54, %57
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 16
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @page_address(i32* %64)
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 5
  %68 = call i64 @cbuf_data(%struct.TYPE_6__* %67)
  %69 = add nsw i64 %65, %68
  %70 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %71 = getelementptr inbounds %struct.kvec, %struct.kvec* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 0
  store i32 0, i32* %73, align 16
  store i32 1, i32* %10, align 4
  %74 = load %struct.connection*, %struct.connection** %3, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 5
  %76 = call i64 @cbuf_data(%struct.TYPE_6__* %75)
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %76, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %50
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load %struct.connection*, %struct.connection** %3, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 5
  %86 = call i64 @cbuf_data(%struct.TYPE_6__* %85)
  %87 = sub nsw i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %90 = getelementptr inbounds %struct.kvec, %struct.kvec* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 16
  %91 = load %struct.connection*, %struct.connection** %3, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 16
  %98 = load %struct.connection*, %struct.connection** %3, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @page_address(i32* %100)
  %102 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %103 = getelementptr inbounds %struct.kvec, %struct.kvec* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  store i32 2, i32* %10, align 4
  br label %104

104:                                              ; preds = %82, %50
  %105 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %106 = getelementptr inbounds %struct.kvec, %struct.kvec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 16
  %108 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %109 = getelementptr inbounds %struct.kvec, %struct.kvec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 16
  %111 = add i32 %107, %110
  store i32 %111, i32* %7, align 4
  %112 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  %113 = load i32, i32* @READ, align 4
  %114 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @iov_iter_kvec(i32* %112, i32 %113, %struct.kvec* %114, i32 %115, i32 %116)
  %118 = load %struct.connection*, %struct.connection** %3, align 8
  %119 = getelementptr inbounds %struct.connection, %struct.connection* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @MSG_DONTWAIT, align 4
  %122 = load i32, i32* @MSG_NOSIGNAL, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @sock_recvmsg(i32* %120, %struct.msghdr* %5, i32 %123)
  store i32 %124, i32* %4, align 4
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %104
  br label %225

128:                                              ; preds = %104
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %128
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.connection*, %struct.connection** %3, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 5
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @cbuf_add(%struct.TYPE_6__* %136, i32 %137)
  %139 = load %struct.connection*, %struct.connection** %3, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @page_address(i32* %144)
  %146 = load %struct.connection*, %struct.connection** %3, align 8
  %147 = getelementptr inbounds %struct.connection, %struct.connection* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.connection*, %struct.connection** %3, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* @PAGE_SIZE, align 8
  %156 = call i32 @dlm_process_incoming_buffer(i64 %141, i64 %145, i32 %150, i32 %154, i64 %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @EBADMSG, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %134
  %162 = load %struct.connection*, %struct.connection** %3, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = call i64 @page_address(i32* %164)
  %166 = load %struct.connection*, %struct.connection** %3, align 8
  %167 = getelementptr inbounds %struct.connection, %struct.connection* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.connection*, %struct.connection** %3, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %165, i32 %170, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %161, %134
  %178 = load i32, i32* %4, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %225

181:                                              ; preds = %177
  %182 = load %struct.connection*, %struct.connection** %3, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 5
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @cbuf_eat(%struct.TYPE_6__* %183, i32 %184)
  %186 = load %struct.connection*, %struct.connection** %3, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 5
  %188 = call i64 @cbuf_empty(%struct.TYPE_6__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %181
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %190
  %194 = load %struct.connection*, %struct.connection** %3, align 8
  %195 = getelementptr inbounds %struct.connection, %struct.connection* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @__free_page(i32* %196)
  %198 = load %struct.connection*, %struct.connection** %3, align 8
  %199 = getelementptr inbounds %struct.connection, %struct.connection* %198, i32 0, i32 4
  store i32* null, i32** %199, align 8
  br label %200

200:                                              ; preds = %193, %190, %181
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %208

204:                                              ; preds = %200
  %205 = load %struct.connection*, %struct.connection** %3, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 1
  %207 = call i32 @mutex_unlock(i32* %206)
  store i32 0, i32* %2, align 4
  br label %244

208:                                              ; preds = %203, %44
  %209 = load i32, i32* @CF_READ_PENDING, align 4
  %210 = load %struct.connection*, %struct.connection** %3, align 8
  %211 = getelementptr inbounds %struct.connection, %struct.connection* %210, i32 0, i32 3
  %212 = call i32 @test_and_set_bit(i32 %209, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %208
  %215 = load i32, i32* @recv_workqueue, align 4
  %216 = load %struct.connection*, %struct.connection** %3, align 8
  %217 = getelementptr inbounds %struct.connection, %struct.connection* %216, i32 0, i32 2
  %218 = call i32 @queue_work(i32 %215, i32* %217)
  br label %219

219:                                              ; preds = %214, %208
  %220 = load %struct.connection*, %struct.connection** %3, align 8
  %221 = getelementptr inbounds %struct.connection, %struct.connection* %220, i32 0, i32 1
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load i32, i32* @EAGAIN, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %244

225:                                              ; preds = %180, %127, %27, %19
  %226 = load %struct.connection*, %struct.connection** %3, align 8
  %227 = getelementptr inbounds %struct.connection, %struct.connection* %226, i32 0, i32 1
  %228 = call i32 @mutex_unlock(i32* %227)
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @EAGAIN, align 4
  %231 = sub nsw i32 0, %230
  %232 = icmp ne i32 %229, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load %struct.connection*, %struct.connection** %3, align 8
  %235 = call i32 @close_connection(%struct.connection* %234, i32 1, i32 1, i32 0)
  br label %236

236:                                              ; preds = %233, %225
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @EAGAIN, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %219, %204
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32* @alloc_page(i32) #2

declare dso_local i32 @cbuf_init(%struct.TYPE_6__*, i64) #2

declare dso_local i64 @cbuf_data(%struct.TYPE_6__*) #2

declare dso_local i64 @page_address(i32*) #2

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #2

declare dso_local i32 @sock_recvmsg(i32*, %struct.msghdr*, i32) #2

declare dso_local i32 @cbuf_add(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @dlm_process_incoming_buffer(i64, i64, i32, i32, i64) #2

declare dso_local i32 @log_print(i8*, i64, i32, i32, i32) #2

declare dso_local i32 @cbuf_eat(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @cbuf_empty(%struct.TYPE_6__*) #2

declare dso_local i32 @__free_page(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @test_and_set_bit(i32, i32*) #2

declare dso_local i32 @queue_work(i32, i32*) #2

declare dso_local i32 @close_connection(%struct.connection*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
