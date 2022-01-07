; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_make_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_make_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_cursor = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sockaddr_rxrpc* }
%struct.sockaddr_rxrpc = type { i32 }
%struct.afs_call = type { i64, i32, i64, i64, i32, i32, i32, i64, %struct.rxrpc_call*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i64, i32, i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.rxrpc_call = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.afs_call*)*, i32* }
%struct.msghdr = type { i32, i32, i64, i32*, i64, i32* }
%struct.kvec = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c",{%pISp},\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"____MAKE %p{%s,%x} [%d]____\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@afs_call_trace_get = common dso_local global i32 0, align 4
@afs_wake_up_async_call = common dso_local global i32 0, align 4
@afs_wake_up_call_waiter = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@afs_notify_end_request_tx = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@RX_USER_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"KSD\00", align 1
@READ = common dso_local global i32 0, align 4
@AFS_CALL_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_make_call(%struct.afs_addr_cursor* %0, %struct.afs_call* %1, i32 %2) #0 {
  %4 = alloca %struct.afs_addr_cursor*, align 8
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_rxrpc*, align 8
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca [1 x %struct.kvec], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.afs_addr_cursor* %0, %struct.afs_addr_cursor** %4, align 8
  store %struct.afs_call* %1, %struct.afs_call** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %14 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %16, align 8
  %18 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %19 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %17, i64 %20
  store %struct.sockaddr_rxrpc* %21, %struct.sockaddr_rxrpc** %7, align 8
  %22 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %22, i32 0, i32 0
  %24 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %26 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %25, i32 0, i32 10
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %32 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %31, i32 0, i32 10
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 10
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 19
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @key_serial(i32 %47)
  %49 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 9
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = call i32 @atomic_read(i32* %52)
  %54 = call i32 @_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.afs_call* %39, i32* %44, i32 %48, i32 %53)
  %55 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %56 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %61 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @afs_get_addrlist(%struct.TYPE_6__* %62)
  %64 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 22
  store i32 %63, i32* %65, align 8
  %66 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %67 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %11, align 4
  %69 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %70 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %69, i32 0, i32 13
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %3
  %74 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %75 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %78 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %83 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %82, i32 0, i32 20
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %86 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %85, i32 0, i32 21
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %126

93:                                               ; preds = %73
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %97 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %96, i32 0, i32 21
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  %104 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %105 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %104, i32 0, i32 20
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %112 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %115 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = sub nsw i64 %117, 1
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = sext i32 %119 to i64
  %121 = mul nsw i64 %118, %120
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %93, %81
  br label %127

127:                                              ; preds = %126, %3
  %128 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %129 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %134 = load i32, i32* @afs_call_trace_get, align 4
  %135 = call i32 @afs_get_call(%struct.afs_call* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %138 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %137, i32 0, i32 9
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %143 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %144 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %143, i32 0, i32 19
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %147 = ptrtoint %struct.afs_call* %146 to i64
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %151 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %136
  %155 = load i32, i32* @afs_wake_up_async_call, align 4
  br label %158

156:                                              ; preds = %136
  %157 = load i32, i32* @afs_wake_up_call_waiter, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %161 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %160, i32 0, i32 18
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %164 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %163, i32 0, i32 17
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %167 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %166, i32 0, i32 16
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.rxrpc_call* @rxrpc_kernel_begin_call(i32 %141, %struct.sockaddr_rxrpc* %142, i32 %145, i64 %147, i32 %148, i32 %149, i32 %159, i32 %162, i32 %165, i32 %168)
  store %struct.rxrpc_call* %169, %struct.rxrpc_call** %8, align 8
  %170 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %171 = call i64 @IS_ERR(%struct.rxrpc_call* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %158
  %174 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %175 = call i32 @PTR_ERR(%struct.rxrpc_call* %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %178 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  br label %303

179:                                              ; preds = %158
  %180 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %181 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %182 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %181, i32 0, i32 8
  store %struct.rxrpc_call* %180, %struct.rxrpc_call** %182, align 8
  %183 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %184 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %183, i32 0, i32 15
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %189 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %188, i32 0, i32 9
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %194 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %195 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %194, i32 0, i32 15
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @rxrpc_kernel_set_max_life(i32 %192, %struct.rxrpc_call* %193, i64 %196)
  br label %198

198:                                              ; preds = %187, %179
  %199 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %200 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %199, i32 0, i32 14
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %10, i64 0, i64 0
  %203 = getelementptr inbounds %struct.kvec, %struct.kvec* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %205 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %10, i64 0, i64 0
  %208 = getelementptr inbounds %struct.kvec, %struct.kvec* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5
  store i32* null, i32** %209, align 8
  %210 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store i64 0, i64* %210, align 8
  %211 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %212 = load i32, i32* @WRITE, align 4
  %213 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %10, i64 0, i64 0
  %214 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %215 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @iov_iter_kvec(i32* %211, i32 %212, %struct.kvec* %213, i32 1, i32 %216)
  %218 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store i32* null, i32** %218, align 8
  %219 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* @MSG_WAITALL, align 4
  %221 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %222 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %221, i32 0, i32 13
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %198
  %226 = load i32, i32* @MSG_MORE, align 4
  br label %228

227:                                              ; preds = %198
  br label %228

228:                                              ; preds = %227, %225
  %229 = phi i32 [ %226, %225 ], [ 0, %227 ]
  %230 = or i32 %220, %229
  %231 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 %230, i32* %231, align 8
  %232 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %233 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %232, i32 0, i32 9
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %238 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %239 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @afs_notify_end_request_tx, align 4
  %242 = call i32 @rxrpc_kernel_send_data(i32 %236, %struct.rxrpc_call* %237, %struct.msghdr* %9, i32 %240, i32 %241)
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %228
  br label %259

246:                                              ; preds = %228
  %247 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %248 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %247, i32 0, i32 13
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %253 = call i32 @afs_send_pages(%struct.afs_call* %252, %struct.msghdr* %9)
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %259

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257, %246
  br label %360

259:                                              ; preds = %256, %245
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @ECONNABORTED, align 4
  %262 = sub nsw i32 0, %261
  %263 = icmp ne i32 %260, %262
  br i1 %263, label %264, label %274

264:                                              ; preds = %259
  %265 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %266 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %265, i32 0, i32 9
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %271 = load i32, i32* @RX_USER_ABORT, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @rxrpc_kernel_abort_call(i32 %269, %struct.rxrpc_call* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %297

274:                                              ; preds = %259
  %275 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %276 = load i32, i32* @READ, align 4
  %277 = call i32 @iov_iter_kvec(i32* %275, i32 %276, %struct.kvec* null, i32 0, i32 0)
  %278 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %279 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %278, i32 0, i32 9
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %284 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %285 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %286 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %285, i32 0, i32 11
  %287 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %288 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %287, i32 0, i32 12
  %289 = call i32 @rxrpc_kernel_recv_data(i32 %282, %struct.rxrpc_call* %283, i32* %284, i32 0, i32* %286, i32* %288)
  %290 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %291 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %294 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %293, i32 0, i32 3
  store i32 %292, i32* %294, align 8
  %295 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %296 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %295, i32 0, i32 1
  store i32 1, i32* %296, align 8
  br label %297

297:                                              ; preds = %274, %264
  %298 = load i32, i32* %12, align 4
  %299 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %300 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 8
  %301 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %302 = call i32 @trace_afs_call_done(%struct.afs_call* %301)
  br label %303

303:                                              ; preds = %297, %173
  %304 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %305 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %304, i32 0, i32 10
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %307, align 8
  %309 = icmp ne i32 (%struct.afs_call*)* %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %303
  %311 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %312 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %311, i32 0, i32 10
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %314, align 8
  %316 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %317 = call i32 %315(%struct.afs_call* %316)
  br label %318

318:                                              ; preds = %310, %303
  %319 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %320 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %319, i32 0, i32 8
  %321 = load %struct.rxrpc_call*, %struct.rxrpc_call** %320, align 8
  %322 = icmp ne %struct.rxrpc_call* %321, null
  br i1 %322, label %323, label %335

323:                                              ; preds = %318
  %324 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %325 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %324, i32 0, i32 9
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %330 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %329, i32 0, i32 8
  %331 = load %struct.rxrpc_call*, %struct.rxrpc_call** %330, align 8
  %332 = call i32 @rxrpc_kernel_end_call(i32 %328, %struct.rxrpc_call* %331)
  %333 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %334 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %333, i32 0, i32 8
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %334, align 8
  br label %335

335:                                              ; preds = %323, %318
  %336 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %337 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %335
  %341 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %342 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %341, i32 0, i32 6
  %343 = call i64 @cancel_work_sync(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340
  %346 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %347 = call i32 @afs_put_call(%struct.afs_call* %346)
  br label %348

348:                                              ; preds = %345, %340
  %349 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %350 = call i32 @afs_put_call(%struct.afs_call* %349)
  br label %351

351:                                              ; preds = %348, %335
  %352 = load i32, i32* %12, align 4
  %353 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %4, align 8
  %354 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* @AFS_CALL_COMPLETE, align 4
  %356 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %357 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %356, i32 0, i32 5
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %351, %258
  ret void
}

declare dso_local i32 @_enter(i8*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_debug(i8*, %struct.afs_call*, i32*, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @afs_get_addrlist(%struct.TYPE_6__*) #1

declare dso_local i32 @afs_get_call(%struct.afs_call*, i32) #1

declare dso_local %struct.rxrpc_call* @rxrpc_kernel_begin_call(i32, %struct.sockaddr_rxrpc*, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_kernel_set_max_life(i32, %struct.rxrpc_call*, i64) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @rxrpc_kernel_send_data(i32, %struct.rxrpc_call*, %struct.msghdr*, i32, i32) #1

declare dso_local i32 @afs_send_pages(%struct.afs_call*, %struct.msghdr*) #1

declare dso_local i32 @rxrpc_kernel_abort_call(i32, %struct.rxrpc_call*, i32, i32, i8*) #1

declare dso_local i32 @rxrpc_kernel_recv_data(i32, %struct.rxrpc_call*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @trace_afs_call_done(%struct.afs_call*) #1

declare dso_local i32 @rxrpc_kernel_end_call(i32, %struct.rxrpc_call*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @afs_put_call(%struct.afs_call*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
