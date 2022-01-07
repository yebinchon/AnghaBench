; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_setup_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_setup_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_ccw_vq_info* }
%struct.virtio_ccw_vq_info = type { i32, %struct.TYPE_9__*, i32, %struct.virtqueue* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i8* }
%struct.virtio_device = type { i32 }
%struct.ccw1 = type { i32, i64, i32, i32 }
%struct.virtio_ccw_device = type { i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no info block\0A\00", align 1
@KVM_VIRTIO_CCW_RING_ALIGN = common dso_local global i32 0, align 4
@virtio_ccw_kvm_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"no vq\0A\00", align 1
@CCW_CMD_SET_VQ = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_SET_VQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"SET_VQ failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, i32*, i8*, i32, %struct.ccw1*)* @virtio_ccw_setup_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @virtio_ccw_setup_vq(%struct.virtio_device* %0, i32 %1, i32* %2, i8* %3, i32 %4, %struct.ccw1* %5) #0 {
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.virtio_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccw1*, align 8
  %14 = alloca %struct.virtio_ccw_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.virtqueue*, align 8
  %17 = alloca %struct.virtio_ccw_vq_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ccw1* %5, %struct.ccw1** %13, align 8
  %21 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %22 = call %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device* %21)
  store %struct.virtio_ccw_device* %22, %struct.virtio_ccw_device** %14, align 8
  store %struct.virtqueue* null, %struct.virtqueue** %16, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.virtio_ccw_vq_info* @kzalloc(i32 32, i32 %23)
  store %struct.virtio_ccw_vq_info* %24, %struct.virtio_ccw_vq_info** %17, align 8
  %25 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %26 = icmp ne %struct.virtio_ccw_vq_info* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %6
  %28 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %29 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  br label %223

35:                                               ; preds = %6
  %36 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %37 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call %struct.TYPE_9__* @ccw_device_dma_zalloc(%struct.TYPE_10__* %38, i32 56)
  %40 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %41 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %40, i32 0, i32 1
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %43 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %35
  %47 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %48 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  br label %223

54:                                               ; preds = %35
  %55 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %56 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @virtio_ccw_read_vq_conf(%struct.virtio_ccw_device* %55, %struct.ccw1* %56, i32 %57)
  %59 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %60 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %62 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %67 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %15, align 4
  br label %223

69:                                               ; preds = %54
  %70 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %71 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %77 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @KVM_VIRTIO_CCW_RING_ALIGN, align 4
  %80 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @virtio_ccw_kvm_notify, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call %struct.virtqueue* @vring_create_virtqueue(i32 %75, i32 %78, i32 %79, %struct.virtio_device* %80, i32 1, i32 %81, i32 %82, i32 %83, i32* %84, i8* %85)
  store %struct.virtqueue* %86, %struct.virtqueue** %16, align 8
  %87 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %88 = icmp ne %struct.virtqueue* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %69
  %90 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %91 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = call i32 @dev_warn(i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  br label %223

97:                                               ; preds = %69
  %98 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %99 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %98)
  %100 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %101 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %103 = call i8* @virtqueue_get_desc_addr(%struct.virtqueue* %102)
  store i8* %103, i8** %18, align 8
  %104 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %105 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %97
  %109 = load i8*, i8** %18, align 8
  %110 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %111 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i8* %109, i8** %114, align 8
  %115 = load i32, i32* @KVM_VIRTIO_CCW_RING_ALIGN, align 4
  %116 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %117 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store i32 %115, i32* %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %123 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 8
  %127 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %128 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %131 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 %129, i32* %134, align 4
  %135 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %136 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %135, i32 0, i32 0
  store i32 24, i32* %136, align 8
  br label %176

137:                                              ; preds = %97
  %138 = load i8*, i8** %18, align 8
  %139 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %140 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  store i8* %138, i8** %143, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %146 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 8
  %150 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %151 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %154 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  %158 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %159 = call i64 @virtqueue_get_avail_addr(%struct.virtqueue* %158)
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %162 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %161, i32 0, i32 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  store i8* %160, i8** %165, align 8
  %166 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %167 = call i64 @virtqueue_get_used_addr(%struct.virtqueue* %166)
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %170 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  store i8* %168, i8** %173, align 8
  %174 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %175 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %174, i32 0, i32 0
  store i32 32, i32* %175, align 8
  br label %176

176:                                              ; preds = %137, %108
  %177 = load i32, i32* @CCW_CMD_SET_VQ, align 4
  %178 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %179 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %181 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %180, i32 0, i32 2
  store i32 0, i32* %181, align 8
  %182 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %183 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %182, i32 0, i32 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = ptrtoint %struct.TYPE_9__* %184 to i64
  %186 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %187 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %189 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %190 = load i32, i32* @VIRTIO_CCW_DOING_SET_VQ, align 4
  %191 = load i32, i32* %9, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %188, %struct.ccw1* %189, i32 %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %176
  %197 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %198 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = call i32 @dev_warn(i32* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %223

202:                                              ; preds = %176
  %203 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %204 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %205 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %204, i32 0, i32 3
  store %struct.virtqueue* %203, %struct.virtqueue** %205, align 8
  %206 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %207 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %208 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %207, i32 0, i32 0
  store %struct.virtio_ccw_vq_info* %206, %struct.virtio_ccw_vq_info** %208, align 8
  %209 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %210 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %209, i32 0, i32 2
  %211 = load i64, i64* %19, align 8
  %212 = call i32 @spin_lock_irqsave(i32* %210, i64 %211)
  %213 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %214 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %213, i32 0, i32 2
  %215 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %216 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %215, i32 0, i32 3
  %217 = call i32 @list_add(i32* %214, i32* %216)
  %218 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %219 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %218, i32 0, i32 2
  %220 = load i64, i64* %19, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32* %219, i64 %220)
  %222 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  store %struct.virtqueue* %222, %struct.virtqueue** %7, align 8
  br label %245

223:                                              ; preds = %196, %89, %65, %46, %27
  %224 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %225 = icmp ne %struct.virtqueue* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %228 = call i32 @vring_del_virtqueue(%struct.virtqueue* %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %231 = icmp ne %struct.virtio_ccw_vq_info* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %14, align 8
  %234 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %233, i32 0, i32 1
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %237 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %236, i32 0, i32 1
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = call i32 @ccw_device_dma_free(%struct.TYPE_10__* %235, %struct.TYPE_9__* %238, i32 56)
  br label %240

240:                                              ; preds = %232, %229
  %241 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %17, align 8
  %242 = call i32 @kfree(%struct.virtio_ccw_vq_info* %241)
  %243 = load i32, i32* %15, align 4
  %244 = call %struct.virtqueue* @ERR_PTR(i32 %243)
  store %struct.virtqueue* %244, %struct.virtqueue** %7, align 8
  br label %245

245:                                              ; preds = %240, %202
  %246 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  ret %struct.virtqueue* %246
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device*) #1

declare dso_local %struct.virtio_ccw_vq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @ccw_device_dma_zalloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @virtio_ccw_read_vq_conf(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local %struct.virtqueue* @vring_create_virtqueue(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.virtqueue*) #1

declare dso_local i8* @virtqueue_get_desc_addr(%struct.virtqueue*) #1

declare dso_local i64 @virtqueue_get_avail_addr(%struct.virtqueue*) #1

declare dso_local i64 @virtqueue_get_used_addr(%struct.virtqueue*) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @ccw_device_dma_free(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_ccw_vq_info*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
