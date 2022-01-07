; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_bsg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_request* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.iscsi_bsg_reply = type { i16, i32 }
%struct.iscsi_bsg_request = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i16*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.be_dma_mem = type { i32, i32*, i32 }
%struct.be_cmd_resp_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BM_%d : HBA in error 0x%lx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"BM_%d : Failed to allocate memory for beiscsi_bsg_request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"BM_%d : MBX Tag Allocation Failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BEISCSI_HOST_MBX_TIMEOUT = common dso_local global i32 0, align 4
@BEISCSI_HBA_ONLINE = common dso_local global i32 0, align 4
@MCC_TAG_STATE_RUNNING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CQE_STATUS_ADDL_MASK = common dso_local global i16 0, align 2
@CQE_STATUS_ADDL_SHIFT = common dso_local global i16 0, align 2
@CQE_STATUS_MASK = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [53 x i8] c"BM_%d : MBX Cmd Failed status = %d extd_status = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BM_%d : Unsupported bsg command: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @beiscsi_bsg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.iscsi_bsg_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca %struct.be_cmd_resp_hdr*, align 8
  %11 = alloca %struct.iscsi_bsg_reply*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 3
  %16 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %15, align 8
  store %struct.iscsi_bsg_request* %16, %struct.iscsi_bsg_request** %6, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 2
  %21 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %20, align 8
  store %struct.iscsi_bsg_reply* %21, %struct.iscsi_bsg_reply** %11, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = call %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %4, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %24)
  store %struct.beiscsi_hba* %25, %struct.beiscsi_hba** %5, align 8
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %27 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %1
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %256

39:                                               ; preds = %1
  %40 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %246 [
    i32 128, label %43
  ]

43:                                               ; preds = %39
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %50 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @dma_alloc_coherent(i32* %48, i32 %52, i32* %53, i32 %54)
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %43
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %64 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %256

67:                                               ; preds = %43
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %69 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %68, i32 0, i32 1
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %71 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %72 = call i32 @mgmt_vendor_specific_fw_cmd(%struct.TYPE_11__* %69, %struct.beiscsi_hba* %70, %struct.bsg_job* %71, %struct.be_dma_mem* %9)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %79 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %81 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_free_coherent(i32* %84, i32 %86, i32* %88, i32 %90)
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %256

94:                                               ; preds = %67
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %104 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i16*, i16** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = load i32, i32* @BEISCSI_HOST_MBX_TIMEOUT, align 4
  %112 = call i32 @msecs_to_jiffies(i32 %111)
  %113 = call i32 @wait_event_interruptible_timeout(i32 %102, i16 zeroext %110, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @BEISCSI_HBA_ONLINE, align 4
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %116 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %115, i32 0, i32 0
  %117 = call i32 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %94
  %120 = load i32, i32* @MCC_TAG_STATE_RUNNING, align 4
  %121 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %122 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = call i32 @clear_bit(i32 %120, i32* %128)
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %131 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dma_free_coherent(i32* %134, i32 %136, i32* %138, i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %256

144:                                              ; preds = %94
  %145 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %146 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i16*, i16** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i16, i16* %148, i64 %150
  %152 = load i16, i16* %151, align 2
  %153 = zext i16 %152 to i32
  %154 = load i16, i16* @CQE_STATUS_ADDL_MASK, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %153, %155
  %157 = load i16, i16* @CQE_STATUS_ADDL_SHIFT, align 2
  %158 = zext i16 %157 to i32
  %159 = ashr i32 %156, %158
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %13, align 2
  %161 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %162 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i16*, i16** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i16, i16* %164, i64 %166
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = load i16, i16* @CQE_STATUS_MASK, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %169, %171
  %173 = trunc i32 %172 to i16
  store i16 %173, i16* %12, align 2
  %174 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %175 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %174, i32 0, i32 1
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @free_mcc_wrb(%struct.TYPE_11__* %175, i32 %176)
  %178 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = bitcast i32* %179 to %struct.be_cmd_resp_hdr*
  store %struct.be_cmd_resp_hdr* %180, %struct.be_cmd_resp_hdr** %10, align 8
  %181 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %182 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %186 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %10, align 8
  %192 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = call i32 @sg_copy_from_buffer(i32 %184, i32 %188, i32* %190, i32 %196)
  %198 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %10, align 8
  %199 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %202 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load i16, i16* %12, align 2
  %204 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %205 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %204, i32 0, i32 0
  store i16 %203, i16* %205, align 4
  %206 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %207 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %208 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %207, i32 0, i32 0
  %209 = load i16, i16* %208, align 4
  %210 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %211 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @bsg_job_done(%struct.bsg_job* %206, i16 zeroext %209, i32 %212)
  %214 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %215 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @dma_free_coherent(i32* %218, i32 %220, i32* %222, i32 %224)
  %226 = load i16, i16* %12, align 2
  %227 = zext i16 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %144
  %230 = load i16, i16* %13, align 2
  %231 = zext i16 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %229, %144
  %234 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %235 = load i32, i32* @KERN_ERR, align 4
  %236 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %237 = load i16, i16* %12, align 2
  %238 = zext i16 %237 to i32
  %239 = load i16, i16* %13, align 2
  %240 = zext i16 %239 to i32
  %241 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %240)
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %256

244:                                              ; preds = %229
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %244
  br label %254

246:                                              ; preds = %39
  %247 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %248 = load i32, i32* @KERN_ERR, align 4
  %249 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %250 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %6, align 8
  %251 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %246, %245
  %255 = load i32, i32* %7, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %254, %233, %119, %75, %60, %29
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mgmt_vendor_specific_fw_cmd(%struct.TYPE_11__*, %struct.beiscsi_hba*, %struct.bsg_job*, %struct.be_dma_mem*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i16 zeroext, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @free_mcc_wrb(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
