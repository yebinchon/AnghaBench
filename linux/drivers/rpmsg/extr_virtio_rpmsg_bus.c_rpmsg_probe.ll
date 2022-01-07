; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.virtproc_info* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i32 }
%struct.virtproc_info = type { i32, i64, %struct.virtio_device*, i32, %struct.virtqueue*, i32, %struct.virtqueue*, i8*, i8*, i32, i32, i32, i32 }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

@rpmsg_recv_done = common dso_local global i32* null, align 8
@rpmsg_xmit_done = common dso_local global i32* null, align 8
@rpmsg_probe.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RPMSG_NUM_BUFS = common dso_local global i32 0, align 4
@MAX_RPMSG_BUF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"buffers: va %pK, dma %pad\0A\00", align 1
@VIRTIO_RPMSG_F_NS = common dso_local global i32 0, align 4
@rpmsg_ns_cb = common dso_local global i32 0, align 4
@RPMSG_NS_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create the ns ept\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"rpmsg host is online\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @rpmsg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_probe(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca [2 x i32*], align 16
  %5 = alloca [2 x %struct.virtqueue*], align 16
  %6 = alloca %struct.virtproc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i8*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %15 = load i32*, i32** @rpmsg_recv_done, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 1
  %17 = load i32*, i32** @rpmsg_xmit_done, align 8
  store i32* %17, i32** %16, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.virtproc_info* @kzalloc(i32 88, i32 %18)
  store %struct.virtproc_info* %19, %struct.virtproc_info** %6, align 8
  %20 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %21 = icmp ne %struct.virtproc_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %239

25:                                               ; preds = %1
  %26 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %27 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %28 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %27, i32 0, i32 2
  store %struct.virtio_device* %26, %struct.virtio_device** %28, align 8
  %29 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %30 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %29, i32 0, i32 12
  %31 = call i32 @idr_init(i32* %30)
  %32 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %33 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %32, i32 0, i32 11
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %36 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %35, i32 0, i32 10
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %39 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %38, i32 0, i32 9
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %42 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %44 = call i32 @virtio_find_vqs(%struct.virtio_device* %41, i32 2, %struct.virtqueue** %42, i32** %43, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @rpmsg_probe.names, i64 0, i64 0), i32* null)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %235

48:                                               ; preds = %25
  %49 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %5, i64 0, i64 0
  %50 = load %struct.virtqueue*, %struct.virtqueue** %49, align 16
  %51 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %52 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %51, i32 0, i32 4
  store %struct.virtqueue* %50, %struct.virtqueue** %52, align 8
  %53 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %5, i64 0, i64 1
  %54 = load %struct.virtqueue*, %struct.virtqueue** %53, align 8
  %55 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %56 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %55, i32 0, i32 6
  store %struct.virtqueue* %54, %struct.virtqueue** %56, align 8
  %57 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %58 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %57, i32 0, i32 4
  %59 = load %struct.virtqueue*, %struct.virtqueue** %58, align 8
  %60 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %59)
  %61 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %62 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %61, i32 0, i32 6
  %63 = load %struct.virtqueue*, %struct.virtqueue** %62, align 8
  %64 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %63)
  %65 = icmp ne i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %69 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %68, i32 0, i32 4
  %70 = load %struct.virtqueue*, %struct.virtqueue** %69, align 8
  %71 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %70)
  %72 = load i32, i32* @MAX_RPMSG_NUM_BUFS, align 4
  %73 = sdiv i32 %72, 2
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %48
  %76 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %77 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %76, i32 0, i32 4
  %78 = load %struct.virtqueue*, %struct.virtqueue** %77, align 8
  %79 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %78)
  %80 = mul nsw i32 %79, 2
  %81 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %82 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %87

83:                                               ; preds = %48
  %84 = load i32, i32* @MAX_RPMSG_NUM_BUFS, align 4
  %85 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %86 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i64, i64* @MAX_RPMSG_BUF_SIZE, align 8
  %89 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %90 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %92 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %96 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 %94, %97
  store i64 %98, i64* %10, align 8
  %99 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %100 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %105 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %104, i32 0, i32 3
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @dma_alloc_coherent(i32 %102, i64 %103, i32* %105, i32 %106)
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %87
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %224

113:                                              ; preds = %87
  %114 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %115 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %114, i32 0, i32 1
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %118 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %117, i32 0, i32 3
  %119 = call i32 @dev_dbg(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32* %118)
  %120 = load i8*, i8** %7, align 8
  %121 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %122 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %10, align 8
  %125 = udiv i64 %124, 2
  %126 = getelementptr i8, i8* %123, i64 %125
  %127 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %128 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %127, i32 0, i32 8
  store i8* %126, i8** %128, align 8
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %161, %113
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %132 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 2
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %129
  %137 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %138 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %137, i32 0, i32 7
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %143 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = mul i64 %141, %144
  %146 = getelementptr i8, i8* %139, i64 %145
  store i8* %146, i8** %13, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %149 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @rpmsg_sg_init(%struct.scatterlist* %12, i8* %147, i32 %151)
  %153 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %154 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %153, i32 0, i32 4
  %155 = load %struct.virtqueue*, %struct.virtqueue** %154, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %155, %struct.scatterlist* %12, i32 1, i8* %156, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @WARN_ON(i32 %159)
  br label %161

161:                                              ; preds = %136
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %129

164:                                              ; preds = %129
  %165 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %166 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %165, i32 0, i32 6
  %167 = load %struct.virtqueue*, %struct.virtqueue** %166, align 8
  %168 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %167)
  %169 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %170 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %171 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %170, i32 0, i32 2
  store %struct.virtproc_info* %169, %struct.virtproc_info** %171, align 8
  %172 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %173 = load i32, i32* @VIRTIO_RPMSG_F_NS, align 4
  %174 = call i64 @virtio_has_feature(%struct.virtio_device* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %164
  %177 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %178 = load i32, i32* @rpmsg_ns_cb, align 4
  %179 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %180 = load i32, i32* @RPMSG_NS_ADDR, align 4
  %181 = call i32 @__rpmsg_create_ept(%struct.virtproc_info* %177, i32* null, i32 %178, %struct.virtproc_info* %179, i32 %180)
  %182 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %183 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %185 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %176
  %189 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %190 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %189, i32 0, i32 1
  %191 = call i32 @dev_err(%struct.TYPE_6__* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %8, align 4
  br label %213

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194, %164
  %196 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %197 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %196, i32 0, i32 4
  %198 = load %struct.virtqueue*, %struct.virtqueue** %197, align 8
  %199 = call i32 @virtqueue_kick_prepare(%struct.virtqueue* %198)
  store i32 %199, i32* %11, align 4
  %200 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %201 = call i32 @virtio_device_ready(%struct.virtio_device* %200)
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %195
  %205 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %206 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %205, i32 0, i32 4
  %207 = load %struct.virtqueue*, %struct.virtqueue** %206, align 8
  %208 = call i32 @virtqueue_notify(%struct.virtqueue* %207)
  br label %209

209:                                              ; preds = %204, %195
  %210 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %211 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %210, i32 0, i32 1
  %212 = call i32 @dev_info(%struct.TYPE_6__* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %239

213:                                              ; preds = %188
  %214 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %215 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %221 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @dma_free_coherent(i32 %217, i64 %218, i8* %219, i32 %222)
  br label %224

224:                                              ; preds = %213, %110
  %225 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %226 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = bitcast {}** %228 to i32 (%struct.virtio_device*)**
  %230 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %229, align 8
  %231 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %232 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %231, i32 0, i32 2
  %233 = load %struct.virtio_device*, %struct.virtio_device** %232, align 8
  %234 = call i32 %230(%struct.virtio_device* %233)
  br label %235

235:                                              ; preds = %224, %47
  %236 = load %struct.virtproc_info*, %struct.virtproc_info** %6, align 8
  %237 = call i32 @kfree(%struct.virtproc_info* %236)
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %235, %209, %22
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.virtproc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @virtio_find_vqs(%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.virtqueue*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i8*, i32*) #1

declare dso_local i32 @rpmsg_sg_init(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i8*, i32) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @__rpmsg_create_ept(%struct.virtproc_info*, i32*, i32, %struct.virtproc_info*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @virtqueue_kick_prepare(%struct.virtqueue*) #1

declare dso_local i32 @virtio_device_ready(%struct.virtio_device*) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

declare dso_local i32 @kfree(%struct.virtproc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
