; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_write_ebuf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_write_ebuf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.bsg_job = type { %struct.bsg_job_data*, %struct.TYPE_14__, %struct.fc_bsg_reply* }
%struct.bsg_job_data = type { %struct.TYPE_17__, %struct.bsg_job*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.bsg_job_data*, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.lpfc_dmabuf = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nemb_mse = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"2966 SLI_CONFIG (mse) ext-buffer wr set buffer[%d], size:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"2967 SLI_CONFIG (hbd) ext-buffer wr set buffer[%d], size:%d\0A\00", align 1
@mbox_wr = common dso_local global i32 0, align 4
@dma_ebuf = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"2968 SLI_CONFIG ext-buffer wr all %d ebuffers received\0A\00", align 1
@OWN_HOST = common dso_local global i32 0, align 4
@lpfc_bsg_issue_write_mbox_ext_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@LPFC_BSG_MBOX_PORT = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"2969 Issued SLI_CONFIG ext-buffer mailbox command, rc:x%x\0A\00", align 1
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"2970 Failed to issue SLI_CONFIG ext-buffer mailbox command, rc:x%x\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.bsg_job*, %struct.lpfc_dmabuf*)* @lpfc_bsg_write_ebuf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_write_ebuf_set(%struct.lpfc_hba* %0, %struct.bsg_job* %1, %struct.lpfc_dmabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca %struct.fc_bsg_reply*, align 8
  %9 = alloca %struct.bsg_job_data*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %6, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %7, align 8
  %17 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 2
  %19 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %18, align 8
  store %struct.fc_bsg_reply* %19, %struct.fc_bsg_reply** %8, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %9, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %10, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.bsg_job_data* @kmalloc(i32 32, i32 %33)
  store %struct.bsg_job_data* %34, %struct.bsg_job_data** %9, align 8
  %35 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %36 = icmp ne %struct.bsg_job_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %16, align 4
  br label %238

40:                                               ; preds = %3
  %41 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %42 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %13, align 8
  %45 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  %49 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %50 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %54 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @sg_copy_to_buffer(i32 %52, i32 %56, i32* %57, i64 %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @nemb_mse, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %40
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load i32, i32* @LOG_LIBDFC, align 4
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %14, align 8
  %77 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76)
  br label %89

78:                                               ; preds = %40
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load i32, i32* @LOG_LIBDFC, align 4
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* %14, align 8
  %88 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %78, %67
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %98 = call i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba* %90, i32 %91, i64 %92, %struct.TYPE_13__* %96, %struct.lpfc_dmabuf* %97)
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 0
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 5
  %104 = call i32 @list_add_tail(i32* %100, i32* %103)
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* @mbox_wr, align 4
  %112 = load i32, i32* @dma_ebuf, align 4
  %113 = load i32, i32* @sta_pos_addr, align 4
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %105, i64 %110, i32 %111, i32 %112, i32 %113, %struct.lpfc_dmabuf* %114, i64 %115)
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %120, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %89
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %128 = load i32, i32* @KERN_INFO, align 4
  %129 = load i32, i32* @LOG_LIBDFC, align 4
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.TYPE_20__* @mempool_alloc(i32 %138, i32 %139)
  store %struct.TYPE_20__* %140, %struct.TYPE_20__** %10, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = icmp ne %struct.TYPE_20__* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %126
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %16, align 4
  br label %238

146:                                              ; preds = %126
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = call i32 @memset(%struct.TYPE_20__* %147, i32 0, i32 24)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** %13, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  store %struct.TYPE_19__* %158, %struct.TYPE_19__** %11, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = call i32 @memcpy(%struct.TYPE_19__* %159, i32* %160, i32 4)
  %162 = load i32, i32* @OWN_HOST, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %166 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @lpfc_bsg_issue_write_mbox_ext_cmpl, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store %struct.bsg_job_data* %173, %struct.bsg_job_data** %175, align 8
  %176 = load i32, i32* @TYPE_MBOX, align 4
  %177 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %178 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %180 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %181 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %180, i32 0, i32 1
  store %struct.bsg_job* %179, %struct.bsg_job** %181, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %183 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %184 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  store %struct.TYPE_20__* %182, %struct.TYPE_20__** %186, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = bitcast i32* %187 to %struct.TYPE_19__*
  %189 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %190 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  store %struct.TYPE_19__* %188, %struct.TYPE_19__** %192, align 8
  %193 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %194 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %195 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %194, i32 0, i32 0
  store %struct.bsg_job_data* %193, %struct.bsg_job_data** %195, align 8
  %196 = load i32, i32* @LPFC_BSG_MBOX_PORT, align 4
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 8
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = load i32, i32* @MBX_NOWAIT, align 4
  %203 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %200, %struct.TYPE_20__* %201, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* @MBX_SUCCESS, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %146
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @MBX_BUSY, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207, %146
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %213 = load i32, i32* @KERN_INFO, align 4
  %214 = load i32, i32* @LOG_LIBDFC, align 4
  %215 = load i32, i32* %16, align 4
  %216 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %217, i32* %4, align 4
  br label %245

218:                                              ; preds = %207
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %220 = load i32, i32* @KERN_ERR, align 4
  %221 = load i32, i32* @LOG_LIBDFC, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @EPIPE, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %16, align 4
  br label %238

226:                                              ; preds = %89
  %227 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %228 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %230 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %231 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %234 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @bsg_job_done(%struct.bsg_job* %229, i64 %232, i32 %235)
  %237 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %237, i32* %4, align 4
  br label %245

238:                                              ; preds = %218, %143, %37
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %240 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %241 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %239, %struct.lpfc_dmabuf* %240)
  %242 = load %struct.bsg_job_data*, %struct.bsg_job_data** %9, align 8
  %243 = call i32 @kfree(%struct.bsg_job_data* %242)
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %238, %226, %211
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba*, i32, i64, %struct.TYPE_13__*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i64, i32, i32, i32, %struct.lpfc_dmabuf*, i64) #1

declare dso_local %struct.TYPE_20__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i64, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
