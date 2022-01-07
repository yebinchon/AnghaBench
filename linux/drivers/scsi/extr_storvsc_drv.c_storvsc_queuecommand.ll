; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32, %struct.TYPE_7__*, i32 (%struct.scsi_cmnd*)* }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.hv_host_device = type { i32, %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.storvsc_cmd_request = type { i32, %struct.vmbus_packet_mpb_array*, i32, %struct.TYPE_5__, %struct.scsi_cmnd* }
%struct.vmbus_packet_mpb_array = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.vmscsi_request }
%struct.vmscsi_request = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }

@vmstor_proto_version = common dso_local global i64 0, align 8
@VMSTOR_PROTO_VERSION_WIN8 = common dso_local global i64 0, align 8
@SRB_FLAGS_DISABLE_SYNCH_TRANSFER = common dso_local global i32 0, align 4
@SRB_FLAGS_QUEUE_ACTION_ENABLE = common dso_local global i32 0, align 4
@SRB_FLAGS_NO_QUEUE_FREEZE = common dso_local global i32 0, align 4
@SP_UNTAGGED = common dso_local global i32 0, align 4
@SRB_SIMPLE_TAG_REQUEST = common dso_local global i32 0, align 4
@WRITE_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@READ_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_NO_DATA_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected data direction: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_PAGE_BUFFER_COUNT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @storvsc_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_host_device*, align 8
  %8 = alloca %struct.hv_device*, align 8
  %9 = alloca %struct.storvsc_cmd_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmscsi_request*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.vmbus_packet_mpb_array*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = call %struct.hv_host_device* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.hv_host_device* %19, %struct.hv_host_device** %7, align 8
  %20 = load %struct.hv_host_device*, %struct.hv_host_device** %7, align 8
  %21 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %20, i32 0, i32 1
  %22 = load %struct.hv_device*, %struct.hv_device** %21, align 8
  store %struct.hv_device* %22, %struct.hv_device** %8, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call %struct.storvsc_cmd_request* @scsi_cmd_priv(%struct.scsi_cmnd* %23)
  store %struct.storvsc_cmd_request* %24, %struct.storvsc_cmd_request** %9, align 8
  store i32 0, i32* %12, align 4
  %25 = load i64, i64* @vmstor_proto_version, align 8
  %26 = load i64, i64* @VMSTOR_PROTO_VERSION_WIN8, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = call i32 @storvsc_scsi_cmd_ok(%struct.scsi_cmnd* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 4
  %35 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %34, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = call i32 %35(%struct.scsi_cmnd* %36)
  store i32 0, i32* %3, align 4
  br label %251

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %42 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %41, i32 0, i32 4
  store %struct.scsi_cmnd* %40, %struct.scsi_cmnd** %42, align 8
  %43 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %44 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.vmscsi_request* %45, %struct.vmscsi_request** %13, align 8
  %46 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %47 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 60, i32* %48, align 4
  %49 = load i32, i32* @SRB_FLAGS_DISABLE_SYNCH_TRANSFER, align 4
  %50 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %51 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %39
  %62 = load i32, i32* @SRB_FLAGS_QUEUE_ACTION_ENABLE, align 4
  %63 = load i32, i32* @SRB_FLAGS_NO_QUEUE_FREEZE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %66 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @SP_UNTAGGED, align 4
  %71 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %72 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @SRB_SIMPLE_TAG_REQUEST, align 4
  %75 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %76 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %61, %39
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %112 [
    i32 128, label %82
    i32 130, label %92
    i32 129, label %102
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @WRITE_TYPE, align 4
  %84 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %85 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @SRB_FLAGS_DATA_OUT, align 4
  %87 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %88 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %119

92:                                               ; preds = %78
  %93 = load i32, i32* @READ_TYPE, align 4
  %94 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %95 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @SRB_FLAGS_DATA_IN, align 4
  %97 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %98 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %119

102:                                              ; preds = %78
  %103 = load i32, i32* @UNKNOWN_TYPE, align 4
  %104 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %105 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @SRB_FLAGS_NO_DATA_TRANSFER, align 4
  %107 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %108 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 4
  br label %119

112:                                              ; preds = %78
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %251

119:                                              ; preds = %102, %92, %82
  %120 = load %struct.hv_host_device*, %struct.hv_host_device** %7, align 8
  %121 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %124 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %131 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %138 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %145 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %150 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %152 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vmscsi_request*, %struct.vmscsi_request** %13, align 8
  %158 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcpy(i32 %153, i32 %156, i32 %159)
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %162 = call i64 @scsi_sglist(%struct.scsi_cmnd* %161)
  %163 = inttoptr i64 %162 to %struct.scatterlist*
  store %struct.scatterlist* %163, %struct.scatterlist** %11, align 8
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %165 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %164)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %167 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %166)
  store i32 %167, i32* %17, align 4
  %168 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %169 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %168, i32 0, i32 2
  %170 = bitcast i32* %169 to %struct.vmbus_packet_mpb_array*
  store %struct.vmbus_packet_mpb_array* %170, %struct.vmbus_packet_mpb_array** %15, align 8
  store i32 4, i32* %16, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %225

173:                                              ; preds = %119
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @MAX_PAGE_BUFFER_COUNT, align 4
  %176 = icmp ugt i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = zext i32 %178 to i64
  %180 = mul i64 %179, 4
  %181 = add i64 %180, 24
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @GFP_ATOMIC, align 4
  %185 = call %struct.vmbus_packet_mpb_array* @kzalloc(i32 %183, i32 %184)
  store %struct.vmbus_packet_mpb_array* %185, %struct.vmbus_packet_mpb_array** %15, align 8
  %186 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %187 = icmp ne %struct.vmbus_packet_mpb_array* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  %189 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %189, i32* %3, align 4
  br label %251

190:                                              ; preds = %177
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %17, align 4
  %193 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %194 = getelementptr inbounds %struct.vmbus_packet_mpb_array, %struct.vmbus_packet_mpb_array* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %197 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %196, i64 0
  %198 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %201 = getelementptr inbounds %struct.vmbus_packet_mpb_array, %struct.vmbus_packet_mpb_array* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 8
  %203 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %203, %struct.scatterlist** %14, align 8
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %221, %191
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %204
  %209 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %210 = call i32 @sg_page(%struct.scatterlist* %209)
  %211 = call i32 @page_to_pfn(i32 %210)
  %212 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %213 = getelementptr inbounds %struct.vmbus_packet_mpb_array, %struct.vmbus_packet_mpb_array* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %211, i32* %218, align 4
  %219 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %220 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %219)
  store %struct.scatterlist* %220, %struct.scatterlist** %14, align 8
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %204

224:                                              ; preds = %204
  br label %225

225:                                              ; preds = %224, %119
  %226 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %227 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %228 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %227, i32 0, i32 1
  store %struct.vmbus_packet_mpb_array* %226, %struct.vmbus_packet_mpb_array** %228, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %231 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %233 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %9, align 8
  %234 = call i32 (...) @get_cpu()
  %235 = call i32 @storvsc_do_io(%struct.hv_device* %232, %struct.storvsc_cmd_request* %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = call i32 (...) @put_cpu()
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @EAGAIN, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %225
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = icmp ugt i64 %243, 4
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load %struct.vmbus_packet_mpb_array*, %struct.vmbus_packet_mpb_array** %15, align 8
  %247 = call i32 @kfree(%struct.vmbus_packet_mpb_array* %246)
  br label %248

248:                                              ; preds = %245, %241
  %249 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %249, i32* %3, align 4
  br label %251

250:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %248, %188, %112, %32
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.hv_host_device* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.storvsc_cmd_request* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @storvsc_scsi_cmd_ok(%struct.scsi_cmnd*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.vmbus_packet_mpb_array* @kzalloc(i32, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @storvsc_do_io(%struct.hv_device*, %struct.storvsc_cmd_request*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @kfree(%struct.vmbus_packet_mpb_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
