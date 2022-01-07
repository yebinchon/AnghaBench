; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_get_scsi_buf_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_get_scsi_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_io_buf = type { i64, i32, %struct.TYPE_10__, i64, i32, i32, i64, i32*, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }
%struct.lpfc_hba = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.lpfc_sli4_hdw_queue*, %struct.TYPE_8__* }
%struct.lpfc_sli4_hdw_queue = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.lpfc_nodelist = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.sli4_sge = type { i32, i8*, i8*, i8* }
%struct.fcp_cmd_rsp_buf = type { i64, i32, i32 }

@LPFC_FCP_SCHED_BY_HDWQ = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SBUF_BUMP_QDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_io_buf* (%struct.lpfc_hba*, %struct.lpfc_nodelist*, %struct.scsi_cmnd*)* @lpfc_get_scsi_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_io_buf* @lpfc_get_scsi_buf_s4(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.lpfc_io_buf*, align 8
  %9 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %10 = alloca %struct.sli4_sge*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fcp_cmd_rsp_buf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store %struct.fcp_cmd_rsp_buf* null, %struct.fcp_cmd_rsp_buf** %17, align 8
  %18 = call i64 (...) @raw_smp_processor_id()
  store i64 %18, i64* %14, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %20 = icmp ne %struct.scsi_cmnd* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_FCP_SCHED_BY_HDWQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @blk_mq_unique_tag(i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i64 @blk_mq_unique_tag_to_hwq(i32 %32)
  store i64 %33, i64* %15, align 8
  br label %43

34:                                               ; preds = %21, %3
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call %struct.lpfc_io_buf* @lpfc_get_io_buf(%struct.lpfc_hba* %44, %struct.lpfc_nodelist* %45, i64 %46, i32 %52)
  store %struct.lpfc_io_buf* %53, %struct.lpfc_io_buf** %8, align 8
  %54 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %55 = icmp ne %struct.lpfc_io_buf* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %43
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %60, i64 %61
  store %struct.lpfc_sli4_hdw_queue* %62, %struct.lpfc_sli4_hdw_queue** %9, align 8
  %63 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %9, align 8
  %64 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store %struct.lpfc_io_buf* null, %struct.lpfc_io_buf** %4, align 8
  br label %231

67:                                               ; preds = %43
  %68 = load i32, i32* @LPFC_IO_FCP, align 4
  %69 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %70 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %73 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %72, i32 0, i32 11
  store i64 0, i64* %73, align 8
  %74 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %75 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %74, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %79 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @jiffies, align 4
  %81 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %82 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %84 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %83, i32 0, i32 7
  store i32* null, i32** %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %87 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %90 = call %struct.fcp_cmd_rsp_buf* @lpfc_get_cmd_rsp_buf_per_hdwq(%struct.lpfc_hba* %88, %struct.lpfc_io_buf* %89)
  store %struct.fcp_cmd_rsp_buf* %90, %struct.fcp_cmd_rsp_buf** %17, align 8
  %91 = load %struct.fcp_cmd_rsp_buf*, %struct.fcp_cmd_rsp_buf** %17, align 8
  %92 = icmp ne %struct.fcp_cmd_rsp_buf* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %67
  store %struct.lpfc_io_buf* null, %struct.lpfc_io_buf** %4, align 8
  br label %231

94:                                               ; preds = %67
  %95 = load %struct.fcp_cmd_rsp_buf*, %struct.fcp_cmd_rsp_buf** %17, align 8
  %96 = getelementptr inbounds %struct.fcp_cmd_rsp_buf, %struct.fcp_cmd_rsp_buf* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %99 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fcp_cmd_rsp_buf*, %struct.fcp_cmd_rsp_buf** %17, align 8
  %101 = getelementptr inbounds %struct.fcp_cmd_rsp_buf, %struct.fcp_cmd_rsp_buf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %104 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %106 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.sli4_sge*
  store %struct.sli4_sge* %108, %struct.sli4_sge** %10, align 8
  %109 = load %struct.fcp_cmd_rsp_buf*, %struct.fcp_cmd_rsp_buf** %17, align 8
  %110 = getelementptr inbounds %struct.fcp_cmd_rsp_buf, %struct.fcp_cmd_rsp_buf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @putPaddrHigh(i64 %112)
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %116 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @putPaddrLow(i64 %117)
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %121 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %123 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %128 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %130 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %131 = call i32 @bf_set(i32 %129, %struct.sli4_sge* %130, i32 0)
  %132 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %133 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %138 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = call i8* @cpu_to_le32(i32 4)
  %140 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %141 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %143 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %142, i32 1
  store %struct.sli4_sge* %143, %struct.sli4_sge** %10, align 8
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %144, 4
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @putPaddrHigh(i64 %146)
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %150 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @putPaddrLow(i64 %151)
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %155 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %157 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @le32_to_cpu(i32 %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %162 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %164 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %165 = call i32 @bf_set(i32 %163, %struct.sli4_sge* %164, i32 1)
  %166 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %167 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @cpu_to_le32(i32 %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %172 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = call i8* @cpu_to_le32(i32 4)
  %174 = load %struct.sli4_sge*, %struct.sli4_sge** %10, align 8
  %175 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %177 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %11, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  store i32 %184, i32* %189, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i32 4, i32* %194, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @putPaddrLow(i64 %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i32 %196, i32* %201, align 4
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @putPaddrHigh(i64 %202)
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  store i32 %203, i32* %208, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  %213 = load i32, i32* @CLASS3, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %217 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %218 = call i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba* %216, %struct.lpfc_nodelist* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %94
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %222 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %221, i32 0, i32 0
  %223 = call i32 @atomic_inc(i32* %222)
  %224 = load i32, i32* @LPFC_SBUF_BUMP_QDEPTH, align 4
  %225 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  %226 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %220, %94
  %230 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %8, align 8
  store %struct.lpfc_io_buf* %230, %struct.lpfc_io_buf** %4, align 8
  br label %231

231:                                              ; preds = %229, %93, %56
  %232 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  ret %struct.lpfc_io_buf* %232
}

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i32 @blk_mq_unique_tag(i32) #1

declare dso_local i64 @blk_mq_unique_tag_to_hwq(i32) #1

declare dso_local %struct.lpfc_io_buf* @lpfc_get_io_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i64, i32) #1

declare dso_local %struct.fcp_cmd_rsp_buf* @lpfc_get_cmd_rsp_buf_per_hdwq(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @putPaddrHigh(i64) #1

declare dso_local i32 @putPaddrLow(i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
