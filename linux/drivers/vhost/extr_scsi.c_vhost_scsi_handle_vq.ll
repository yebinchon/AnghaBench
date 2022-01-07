; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_handle_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_handle_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { i32 }
%struct.vhost_virtqueue = type { i32, i32*, %struct.vhost_scsi_tpg** }
%struct.vhost_scsi_tpg = type { i32 }
%struct.virtio_scsi_cmd_req = type { i32*, i32*, i32, i32, i64, i64 }
%struct.virtio_scsi_cmd_req_pi = type { i32*, i32*, i32, i32, i64, i64 }
%struct.vhost_scsi_ctx = type { i32, i32, i32*, i32*, i64, i64, i64, i32, i32, %struct.iov_iter, %struct.virtio_scsi_cmd_req_pi* }
%struct.iov_iter = type { i32 }
%struct.vhost_scsi_cmd = type { i32, i32, i32, i32, i32*, i32, i32, %struct.vhost_virtqueue*, %struct.vhost_scsi* }

@VIRTIO_SCSI_F_T10_PI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@READ = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Received non zero pi_bytesout, but wrong data_direction\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Received non zero pi_bytesin, but wrong data_direction\0A\00", align 1
@VHOST_SCSI_MAX_CDB_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Received SCSI CDB with command_size: %d that exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vhost_scsi_get_tag failed %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"vhost_scsi got command opcode: %#02x, lun: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"cmd: %p exp_data_len: %d, prot_bytes: %d data_direction: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to map iov to sgl\0A\00", align 1
@vhost_scsi_submission_work = common dso_local global i32 0, align 4
@vhost_scsi_workqueue = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_scsi*, %struct.vhost_virtqueue*)* @vhost_scsi_handle_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_scsi_handle_vq(%struct.vhost_scsi* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_scsi*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.vhost_scsi_tpg**, align 8
  %6 = alloca %struct.vhost_scsi_tpg*, align 8
  %7 = alloca %struct.virtio_scsi_cmd_req, align 8
  %8 = alloca %struct.virtio_scsi_cmd_req_pi, align 8
  %9 = alloca %struct.vhost_scsi_ctx, align 8
  %10 = alloca %struct.vhost_scsi_cmd*, align 8
  %11 = alloca %struct.iov_iter, align 4
  %12 = alloca %struct.iov_iter, align 4
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %25 = load i32, i32* @VIRTIO_SCSI_F_T10_PI, align 4
  %26 = call i32 @vhost_has_feature(%struct.vhost_virtqueue* %24, i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %31 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %30, i32 0, i32 2
  %32 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %31, align 8
  store %struct.vhost_scsi_tpg** %32, %struct.vhost_scsi_tpg*** %5, align 8
  %33 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %5, align 8
  %34 = icmp ne %struct.vhost_scsi_tpg** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %374

36:                                               ; preds = %2
  %37 = call i32 @memset(%struct.vhost_scsi_ctx* %9, i32 0, i32 72)
  %38 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %40 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %39, i32 0, i32 0
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %42 = call i32 @vhost_disable_notify(i32* %40, %struct.vhost_virtqueue* %41)
  br label %43

43:                                               ; preds = %363, %36
  %44 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %45 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %46 = call i32 @vhost_scsi_get_desc(%struct.vhost_scsi* %44, %struct.vhost_virtqueue* %45, %struct.vhost_scsi_ctx* %9)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %342

50:                                               ; preds = %43
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 10
  store %struct.virtio_scsi_cmd_req_pi* %8, %struct.virtio_scsi_cmd_req_pi** %54, align 8
  %55 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 1
  store i32 40, i32* %55, align 4
  %56 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 2
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 3
  store i32* %62, i32** %63, align 8
  br label %76

64:                                               ; preds = %50
  %65 = bitcast %struct.virtio_scsi_cmd_req* %7 to %struct.virtio_scsi_cmd_req_pi*
  %66 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 10
  store %struct.virtio_scsi_cmd_req_pi* %65, %struct.virtio_scsi_cmd_req_pi** %66, align 8
  %67 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 1
  store i32 40, i32* %67, align 4
  %68 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 2
  store i32* %70, i32** %71, align 8
  %72 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 3
  store i32* %74, i32** %75, align 8
  br label %76

76:                                               ; preds = %64, %53
  %77 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %78 = call i32 @vhost_scsi_chk_size(%struct.vhost_virtqueue* %77, %struct.vhost_scsi_ctx* %9)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %342

82:                                               ; preds = %76
  %83 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %84 = call i32 @vhost_scsi_get_req(%struct.vhost_virtqueue* %83, %struct.vhost_scsi_ctx* %9, %struct.vhost_scsi_tpg** %6)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %342

88:                                               ; preds = %82
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %91 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load i64, i64* @DMA_TO_DEVICE, align 8
  store i64 %98, i64* %16, align 8
  %99 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %100, %103
  store i64 %104, i64* %15, align 8
  %105 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 9
  %106 = bitcast %struct.iov_iter* %13 to i8*
  %107 = bitcast %struct.iov_iter* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 8 %107, i64 4, i1 false)
  br label %146

108:                                              ; preds = %88
  %109 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %108
  %116 = load i64, i64* @DMA_FROM_DEVICE, align 8
  store i64 %116, i64* %16, align 8
  %117 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %118, %121
  store i64 %122, i64* %15, align 8
  %123 = load i32, i32* @READ, align 4
  %124 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %125 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %15, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @iov_iter_init(%struct.iov_iter* %11, i32 %123, i32* %129, i32 %131, i64 %136)
  %138 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @iov_iter_advance(%struct.iov_iter* %11, i32 %139)
  %141 = bitcast %struct.iov_iter* %13 to i8*
  %142 = bitcast %struct.iov_iter* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 4, i1 false)
  br label %145

143:                                              ; preds = %108
  %144 = load i64, i64* @DMA_NONE, align 8
  store i64 %144, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %145

145:                                              ; preds = %143, %115
  br label %146

146:                                              ; preds = %145, %97
  %147 = load i32, i32* %22, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %218

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* @DMA_TO_DEVICE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %159 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %158, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %342

160:                                              ; preds = %153
  %161 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %162 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @vhost32_to_cpu(%struct.vhost_virtqueue* %161, i64 %163)
  store i32 %164, i32* %18, align 4
  br label %182

165:                                              ; preds = %149
  %166 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %175 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %174, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %342

176:                                              ; preds = %169
  %177 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %178 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @vhost32_to_cpu(%struct.vhost_virtqueue* %177, i64 %179)
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %176, %165
  br label %182

182:                                              ; preds = %181, %160
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %15, align 8
  %189 = sub nsw i64 %188, %187
  store i64 %189, i64* %15, align 8
  %190 = bitcast %struct.iov_iter* %12 to i8*
  %191 = bitcast %struct.iov_iter* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %190, i8* align 4 %191, i64 4, i1 false)
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @iov_iter_truncate(%struct.iov_iter* %12, i32 %192)
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @iov_iter_advance(%struct.iov_iter* %13, i32 %194)
  br label %196

196:                                              ; preds = %185, %182
  %197 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %198 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @vhost64_to_cpu(%struct.vhost_virtqueue* %197, i32 %199)
  store i32 %200, i32* %14, align 4
  %201 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %21, align 4
  %203 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = bitcast i32* %205 to i8*
  store i8* %206, i8** %23, align 8
  %207 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 8
  %212 = getelementptr inbounds %struct.virtio_scsi_cmd_req_pi, %struct.virtio_scsi_cmd_req_pi* %8, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %211, %215
  %217 = and i32 %216, 16383
  store i32 %217, i32* %20, align 4
  br label %240

218:                                              ; preds = %146
  %219 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %220 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @vhost64_to_cpu(%struct.vhost_virtqueue* %219, i32 %221)
  store i32 %222, i32* %14, align 4
  %223 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %21, align 4
  %225 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = bitcast i32* %227 to i8*
  store i8* %228, i8** %23, align 8
  %229 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 8
  %234 = getelementptr inbounds %struct.virtio_scsi_cmd_req, %struct.virtio_scsi_cmd_req* %7, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %233, %237
  %239 = and i32 %238, 16383
  store i32 %239, i32* %20, align 4
  br label %240

240:                                              ; preds = %218, %196
  %241 = load i8*, i8** %23, align 8
  %242 = call i64 @scsi_command_size(i8* %241)
  %243 = load i64, i64* @VHOST_SCSI_MAX_CDB_SIZE, align 8
  %244 = icmp sgt i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i64 @unlikely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %250 = load i8*, i8** %23, align 8
  %251 = call i64 @scsi_command_size(i8* %250)
  %252 = load i64, i64* @VHOST_SCSI_MAX_CDB_SIZE, align 8
  %253 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %249, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %251, i64 %252)
  br label %342

254:                                              ; preds = %240
  %255 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %256 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %6, align 8
  %257 = load i8*, i8** %23, align 8
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load i64, i64* %15, align 8
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %261, %263
  %265 = load i64, i64* %16, align 8
  %266 = call %struct.vhost_scsi_cmd* @vhost_scsi_get_tag(%struct.vhost_virtqueue* %255, %struct.vhost_scsi_tpg* %256, i8* %257, i32 %258, i32 %259, i32 %260, i64 %264, i64 %265)
  store %struct.vhost_scsi_cmd* %266, %struct.vhost_scsi_cmd** %10, align 8
  %267 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %268 = call i64 @IS_ERR(%struct.vhost_scsi_cmd* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %254
  %271 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %272 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %273 = call i32 @PTR_ERR(%struct.vhost_scsi_cmd* %272)
  %274 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %273)
  br label %342

275:                                              ; preds = %254
  %276 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %277 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %278 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %277, i32 0, i32 8
  store %struct.vhost_scsi* %276, %struct.vhost_scsi** %278, align 8
  %279 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %280 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %281 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %280, i32 0, i32 7
  store %struct.vhost_virtqueue* %279, %struct.vhost_virtqueue** %281, align 8
  %282 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %283 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %290 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %289, i32 0, i32 6
  store i32 %288, i32* %290, align 4
  %291 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 8
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %294 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 8
  %295 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %296 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %295, i32 0, i32 4
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to %struct.vhost_scsi_cmd*
  %302 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %303 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = call i32 (i8*, %struct.vhost_scsi_cmd*, i64, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.vhost_scsi_cmd* %301, i64 %305)
  %307 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %308 = load i64, i64* %15, align 8
  %309 = load i32, i32* %18, align 4
  %310 = load i64, i64* %16, align 8
  %311 = call i32 (i8*, %struct.vhost_scsi_cmd*, i64, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), %struct.vhost_scsi_cmd* %307, i64 %308, i32 %309, i64 %310)
  %312 = load i64, i64* %16, align 8
  %313 = load i64, i64* @DMA_NONE, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %329

315:                                              ; preds = %275
  %316 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %317 = load i32, i32* %18, align 4
  %318 = load i64, i64* %15, align 8
  %319 = call i32 @vhost_scsi_mapal(%struct.vhost_scsi_cmd* %316, i32 %317, %struct.iov_iter* %12, i64 %318, %struct.iov_iter* %13)
  %320 = call i64 @unlikely(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %315
  %323 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %324 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %323, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %325 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %326 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %325, i32 0, i32 2
  %327 = call i32 @vhost_scsi_release_cmd(i32* %326)
  br label %342

328:                                              ; preds = %315
  br label %329

329:                                              ; preds = %328, %275
  %330 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %333 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 4
  %334 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %335 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %334, i32 0, i32 0
  %336 = load i32, i32* @vhost_scsi_submission_work, align 4
  %337 = call i32 @INIT_WORK(i32* %335, i32 %336)
  %338 = load i32, i32* @vhost_scsi_workqueue, align 4
  %339 = load %struct.vhost_scsi_cmd*, %struct.vhost_scsi_cmd** %10, align 8
  %340 = getelementptr inbounds %struct.vhost_scsi_cmd, %struct.vhost_scsi_cmd* %339, i32 0, i32 0
  %341 = call i32 @queue_work(i32 %338, i32* %340)
  store i32 0, i32* %17, align 4
  br label %342

342:                                              ; preds = %329, %322, %270, %248, %173, %157, %87, %81, %49
  %343 = load i32, i32* %17, align 4
  %344 = load i32, i32* @ENXIO, align 4
  %345 = sub nsw i32 0, %344
  %346 = icmp eq i32 %343, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  br label %373

348:                                              ; preds = %342
  %349 = load i32, i32* %17, align 4
  %350 = load i32, i32* @EIO, align 4
  %351 = sub nsw i32 0, %350
  %352 = icmp eq i32 %349, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %348
  %354 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %355 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %356 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 7
  %357 = load i32, i32* %356, align 8
  %358 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %9, i32 0, i32 6
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @vhost_scsi_send_bad_target(%struct.vhost_scsi* %354, %struct.vhost_virtqueue* %355, i32 %357, i64 %359)
  br label %361

361:                                              ; preds = %353, %348
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  %364 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %365 = load i32, i32* %19, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %19, align 4
  %367 = call i32 @vhost_exceeds_weight(%struct.vhost_virtqueue* %364, i32 %366, i32 0)
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = zext i1 %369 to i32
  %371 = call i64 @likely(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %43, label %373

373:                                              ; preds = %363, %347
  br label %374

374:                                              ; preds = %373, %35
  %375 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %376 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %375, i32 0, i32 0
  %377 = call i32 @mutex_unlock(i32* %376)
  ret void
}

declare dso_local i32 @vhost_has_feature(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.vhost_scsi_ctx*, i32, i32) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_scsi_get_desc(%struct.vhost_scsi*, %struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*) #1

declare dso_local i32 @vhost_scsi_chk_size(%struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*) #1

declare dso_local i32 @vhost_scsi_get_req(%struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*, %struct.vhost_scsi_tpg**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iov_iter_init(%struct.iov_iter*, i32, i32*, i32, i64) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, ...) #1

declare dso_local i32 @vhost32_to_cpu(%struct.vhost_virtqueue*, i64) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i32) #1

declare dso_local i32 @vhost64_to_cpu(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @scsi_command_size(i8*) #1

declare dso_local %struct.vhost_scsi_cmd* @vhost_scsi_get_tag(%struct.vhost_virtqueue*, %struct.vhost_scsi_tpg*, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.vhost_scsi_cmd*) #1

declare dso_local i32 @PTR_ERR(%struct.vhost_scsi_cmd*) #1

declare dso_local i32 @pr_debug(i8*, %struct.vhost_scsi_cmd*, i64, ...) #1

declare dso_local i32 @vhost_scsi_mapal(%struct.vhost_scsi_cmd*, i32, %struct.iov_iter*, i64, %struct.iov_iter*) #1

declare dso_local i32 @vhost_scsi_release_cmd(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @vhost_scsi_send_bad_target(%struct.vhost_scsi*, %struct.vhost_virtqueue*, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vhost_exceeds_weight(%struct.vhost_virtqueue*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
