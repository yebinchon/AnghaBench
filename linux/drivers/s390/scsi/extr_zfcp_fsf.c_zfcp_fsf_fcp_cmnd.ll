; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, i8*, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.TYPE_12__*, i32, %struct.scsi_cmnd*, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.fsf_qtcb_bottom_io }
%struct.fsf_qtcb_bottom_io = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.fcp_cmnd }
%struct.fcp_cmnd = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.zfcp_qdio*, %struct.TYPE_7__ }
%struct.zfcp_qdio = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SBAL_SFLAGS0_TYPE_WRITE = common dso_local global i32 0, align 4
@FSF_QTCB_FCP_CMND = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_fcp_cmnd_handler = common dso_local global i32 0, align 4
@FSF_CLASS_3 = common dso_local global i32 0, align 4
@FCP_CMND_LEN = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i64 0, align 8
@FSF_FCP_CMND_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_fcp_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.fcp_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.zfcp_scsi_dev*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca %struct.zfcp_qdio*, align 8
  %12 = alloca %struct.fsf_qtcb_bottom_io*, align 8
  %13 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %14 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 2
  %19 = load %struct.scsi_device*, %struct.scsi_device** %18, align 8
  store %struct.scsi_device* %19, %struct.scsi_device** %8, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %21 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %20)
  store %struct.zfcp_scsi_dev* %21, %struct.zfcp_scsi_dev** %9, align 8
  %22 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %23 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %25, align 8
  store %struct.zfcp_adapter* %26, %struct.zfcp_adapter** %10, align 8
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 0
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %28, align 8
  store %struct.zfcp_qdio* %29, %struct.zfcp_qdio** %11, align 8
  %30 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %31 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %30, i32 0, i32 2
  %32 = call i32 @atomic_read(i32* %31)
  %33 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %240

43:                                               ; preds = %1
  %44 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %45 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %44, i32 0, i32 0
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %49 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %48, i32 0, i32 2
  %50 = call i32 @atomic_read(i32* %49)
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %54 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %53, i32 0, i32 1
  %55 = call i32 @atomic_inc(i32* %54)
  br label %234

56:                                               ; preds = %43
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_TO_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %66 = load i32, i32* @FSF_QTCB_FCP_CMND, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %69 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %65, i32 %66, i32 %67, i32 %71)
  store %struct.zfcp_fsf_req* %72, %struct.zfcp_fsf_req** %4, align 8
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %74 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %78 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %77)
  store i32 %78, i32* %7, align 4
  br label %234

79:                                               ; preds = %64
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %81 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %87 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store %struct.fsf_qtcb_bottom_io* %90, %struct.fsf_qtcb_bottom_io** %12, align 8
  %91 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %92 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %93 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %98 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %97, i32 0, i32 3
  store %struct.scsi_cmnd* %96, %struct.scsi_cmnd** %98, align 8
  %99 = load i32, i32* @zfcp_fsf_fcp_cmnd_handler, align 4
  %100 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %101 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %103 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %106 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %9, align 8
  %111 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %116 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* @FSF_CLASS_3, align 4
  %121 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %122 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @FCP_CMND_LEN, align 4
  %124 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %125 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %126)
  %128 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %79
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 2
  %133 = load %struct.scsi_device*, %struct.scsi_device** %132, align 8
  %134 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %137 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %139 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %138)
  %140 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %141 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %130, %79
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %144 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %145 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %144, i32 0, i32 3
  %146 = call i64 @zfcp_fsf_set_data_dir(%struct.scsi_cmnd* %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %229

149:                                              ; preds = %142
  %150 = load i32, i32* @FSF_FCP_CMND_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ugt i64 4, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @BUILD_BUG_ON(i32 %153)
  %155 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %156 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %155, i32 0, i32 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store %struct.fcp_cmnd* %161, %struct.fcp_cmnd** %5, align 8
  %162 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %164 = call i32 @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd* %162, %struct.scsi_cmnd* %163)
  %165 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %166 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %165)
  %167 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %195

169:                                              ; preds = %149
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %171 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %175 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %176 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %175, i32 0, i32 0
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %178 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %177)
  %179 = call i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio* %174, i32* %176, i64 %178)
  %180 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %181 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %182 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %181, i32 0, i32 0
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %184 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %183)
  %185 = call i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %180, i32* %182, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %229

189:                                              ; preds = %173
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %191 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %190)
  %192 = call i32 @zfcp_qdio_real_bytes(i32 %191)
  %193 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %194 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %169, %149
  %196 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %197 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %198 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %197, i32 0, i32 0
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %200 = call i32 @scsi_sglist(%struct.scsi_cmnd* %199)
  %201 = call i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %196, i32* %198, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %195
  br label %229

206:                                              ; preds = %195
  %207 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %208 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %207, i32 0, i32 0
  %209 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %208, align 8
  %210 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %211 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %210, i32 0, i32 0
  %212 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %209, i32* %211)
  %213 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %214 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %206
  %217 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %218 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %219 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %218, i32 0, i32 0
  %220 = call i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio* %217, i32* %219)
  br label %221

221:                                              ; preds = %216, %206
  %222 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %223 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %222)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %229

228:                                              ; preds = %221
  br label %234

229:                                              ; preds = %227, %205, %188, %148
  %230 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %231 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %230)
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %233 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %232, i32 0, i32 1
  store i8* null, i8** %233, align 8
  br label %234

234:                                              ; preds = %229, %228, %76, %52
  %235 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %236 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %235, i32 0, i32 0
  %237 = load i64, i64* %13, align 8
  %238 = call i32 @spin_unlock_irqrestore(i32* %236, i64 %237)
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %234, %40
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i64 @zfcp_fsf_set_data_dir(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd*, %struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio*, i32*, i64) #1

declare dso_local i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio*, i32*, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_real_bytes(i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
