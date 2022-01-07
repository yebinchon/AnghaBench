; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send_negotiate_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send_negotiate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.smbd_request = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.smbd_connection* }
%struct.smbd_negotiate_req = type { i8*, i8*, i8*, i8*, i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMBD_V1 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@send_done = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sge addr=%llx length=%x lkey=%x\0A\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ib_post_send failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*)* @smbd_post_send_negotiate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_post_send_negotiate_req(%struct.smbd_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.ib_send_wr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbd_request*, align 8
  %7 = alloca %struct.smbd_negotiate_req*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %11 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.smbd_request* @mempool_alloc(i32 %12, i32 %13)
  store %struct.smbd_request* %14, %struct.smbd_request** %6, align 8
  %15 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %16 = icmp ne %struct.smbd_request* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %215

19:                                               ; preds = %1
  %20 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %21 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %22 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %21, i32 0, i32 4
  store %struct.smbd_connection* %20, %struct.smbd_connection** %22, align 8
  %23 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %24 = call %struct.smbd_negotiate_req* @smbd_request_payload(%struct.smbd_request* %23)
  store %struct.smbd_negotiate_req* %24, %struct.smbd_negotiate_req** %7, align 8
  %25 = load i32, i32* @SMBD_V1, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %28 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @SMBD_V1, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %32 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %34 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %36 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %40 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %42 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %46 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %48 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %52 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %54 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %58 = getelementptr inbounds %struct.smbd_negotiate_req, %struct.smbd_negotiate_req* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %60 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %62 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.smbd_negotiate_req*, %struct.smbd_negotiate_req** %7, align 8
  %67 = bitcast %struct.smbd_negotiate_req* %66 to i8*
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @ib_dma_map_single(i32 %65, i8* %67, i32 56, i32 %68)
  %70 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %71 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %76 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %81 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ib_dma_mapping_error(i32 %79, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %19
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %208

91:                                               ; preds = %19
  %92 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %93 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 56, i32* %96, align 4
  %97 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %98 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %103 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i32 %101, i32* %106, align 4
  %107 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %108 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %113 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %119 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DMA_TO_DEVICE, align 4
  %125 = call i32 @ib_dma_sync_single_for_device(i32 %111, i32 %117, i32 %123, i32 %124)
  %126 = load i32, i32* @send_done, align 4
  %127 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %128 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 5
  store i32* null, i32** %130, align 8
  %131 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %132 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 4
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %133, align 8
  %134 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %135 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 3
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %137, align 8
  %138 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %139 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = load i32, i32* @IB_WR_SEND, align 4
  %143 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %145 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %4, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @INFO, align 4
  %147 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %148 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %154 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %160 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, i32, ...) @log_rdma_send(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %158, i32 %164)
  %166 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %167 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %169 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %168, i32 0, i32 2
  %170 = call i32 @atomic_inc(i32* %169)
  %171 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %172 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %171, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ib_post_send(i32 %175, %struct.ib_send_wr* %4, i32* null)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %215

180:                                              ; preds = %91
  %181 = load i32, i32* @ERR, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 (i32, i8*, i32, ...) @log_rdma_send(i32 %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %185 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %184, i32 0, i32 2
  %186 = call i32 @atomic_dec(i32* %185)
  %187 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %188 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %187, i32 0, i32 1
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %193 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %199 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %198, i32 0, i32 2
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DMA_TO_DEVICE, align 4
  %205 = call i32 @ib_dma_unmap_single(i32 %191, i32 %197, i32 %203, i32 %204)
  %206 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %207 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %206)
  br label %208

208:                                              ; preds = %180, %88
  %209 = load %struct.smbd_request*, %struct.smbd_request** %6, align 8
  %210 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %211 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @mempool_free(%struct.smbd_request* %209, i32 %212)
  %214 = load i32, i32* %5, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %208, %179, %17
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.smbd_request* @mempool_alloc(i32, i32) #1

declare dso_local %struct.smbd_negotiate_req* @smbd_request_payload(%struct.smbd_request*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @log_rdma_send(i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

declare dso_local i32 @mempool_free(%struct.smbd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
