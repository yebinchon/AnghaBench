; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_text.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.qedi_endpoint*, %struct.qedi_ctx* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.qedi_endpoint = type { %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i64, i32, %struct.scsi_sgl_task_params*, i32, i8*, i64, %struct.scsi_sgl_task_params*, i32, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.scsi_sge = type { i32 }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.iscsi_text_request_hdr = type { i32, i64, i32, %struct.iscsi_text_request_hdr*, i32, i8*, i64, %struct.iscsi_text_request_hdr*, i32, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.iscsi_task_params = type { i32, i64, i32, %struct.iscsi_task_params*, i32, i8*, i64, %struct.iscsi_task_params*, i32, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.e4_iscsi_task_context = type { i32, i64, i32, %struct.e4_iscsi_task_context*, i32, i8*, i64, %struct.e4_iscsi_task_context*, i32, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.iscsi_text = type { i32, i32, i32, i32, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_send_iscsi_text(%struct.qedi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_text_request_hdr, align 8
  %7 = alloca %struct.scsi_sgl_task_params, align 8
  %8 = alloca %struct.scsi_sgl_task_params, align 8
  %9 = alloca %struct.iscsi_task_params, align 8
  %10 = alloca %struct.e4_iscsi_task_context*, align 8
  %11 = alloca %struct.qedi_ctx*, align 8
  %12 = alloca %struct.iscsi_text*, align 8
  %13 = alloca %struct.scsi_sge*, align 8
  %14 = alloca %struct.scsi_sge*, align 8
  %15 = alloca %struct.qedi_cmd*, align 8
  %16 = alloca %struct.qedi_endpoint*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %20 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %21 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %20, i32 0, i32 6
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %21, align 8
  store %struct.qedi_ctx* %22, %struct.qedi_ctx** %11, align 8
  store %struct.scsi_sge* null, %struct.scsi_sge** %13, align 8
  store %struct.scsi_sge* null, %struct.scsi_sge** %14, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %23 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %24 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_sge*
  store %struct.scsi_sge* %27, %struct.scsi_sge** %13, align 8
  %28 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %29 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.scsi_sge*
  store %struct.scsi_sge* %32, %struct.scsi_sge** %14, align 8
  %33 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %36, %struct.qedi_cmd** %15, align 8
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.iscsi_text*
  store %struct.iscsi_text* %40, %struct.iscsi_text** %12, align 8
  %41 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %42 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %41, i32 0, i32 5
  %43 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %42, align 8
  store %struct.qedi_endpoint* %43, %struct.qedi_endpoint** %16, align 8
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %45 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %224

51:                                               ; preds = %2
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @qedi_get_task_mem(i32* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %56, %struct.e4_iscsi_task_context** %10, align 8
  %57 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %58 = bitcast %struct.e4_iscsi_task_context* %57 to %struct.scsi_sgl_task_params*
  %59 = call i32 @memset(%struct.scsi_sgl_task_params* %58, i32 0, i32 136)
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %62 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %64 = call i32 @memset(%struct.scsi_sgl_task_params* %63, i32 0, i32 136)
  %65 = bitcast %struct.iscsi_text_request_hdr* %6 to %struct.scsi_sgl_task_params*
  %66 = call i32 @memset(%struct.scsi_sgl_task_params* %65, i32 0, i32 136)
  %67 = call i32 @memset(%struct.scsi_sgl_task_params* %7, i32 0, i32 136)
  %68 = call i32 @memset(%struct.scsi_sgl_task_params* %8, i32 0, i32 136)
  %69 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %70 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 17
  store i32 %71, i32* %72, align 4
  %73 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %74 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 16
  store i32 %75, i32* %76, align 8
  %77 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %80 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %83 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %77, i32 %78, i32 %81, %struct.qedi_cmd* %82)
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %86 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @get_itt(i32 %87)
  %89 = call i32 @qedi_set_itt(i32 %84, i32 %88)
  %90 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 15
  store i32 %89, i32* %90, align 4
  %91 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %92 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 14
  store i32 %93, i32* %94, align 8
  %95 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %96 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @be32_to_cpu(i32 %97)
  %99 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 13
  store i8* %98, i8** %99, align 8
  %100 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %101 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be32_to_cpu(i32 %102)
  %104 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 12
  store i8* %103, i8** %104, align 8
  %105 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %106 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @ntoh24(i32 %107)
  %109 = getelementptr inbounds %struct.iscsi_text_request_hdr, %struct.iscsi_text_request_hdr* %6, i32 0, i32 11
  store i8* %108, i8** %109, align 8
  %110 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %111 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.scsi_sge*
  %115 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 10
  store %struct.scsi_sge* %114, %struct.scsi_sge** %115, align 8
  %116 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %117 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %124 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = ashr i32 %127, 32
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.scsi_sge*, %struct.scsi_sge** %13, align 8
  %134 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 8
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %139 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.scsi_sge*
  %143 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 10
  store %struct.scsi_sge* %142, %struct.scsi_sge** %143, align 8
  %144 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %145 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %152 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = ashr i32 %155, 32
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.scsi_sge*, %struct.scsi_sge** %14, align 8
  %162 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 8
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %167 = bitcast %struct.e4_iscsi_task_context* %166 to %struct.iscsi_task_params*
  %168 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 7
  store %struct.iscsi_task_params* %167, %struct.iscsi_task_params** %168, align 8
  %169 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %170 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 1
  store i64 %171, i64* %172, align 8
  %173 = load i32, i32* %17, align 4
  %174 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  %175 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 6
  store i64 0, i64* %175, align 8
  %176 = load %struct.iscsi_text*, %struct.iscsi_text** %12, align 8
  %177 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @ntoh24(i32 %178)
  %180 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 5
  store i8* %179, i8** %180, align 8
  %181 = load %struct.scsi_sge*, %struct.scsi_sge** %14, align 8
  %182 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 4
  store i32 %183, i32* %184, align 8
  %185 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %186 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %185)
  store i64 %186, i64* %18, align 8
  %187 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %16, align 8
  %188 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %187, i32 0, i32 0
  %189 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %188, align 8
  %190 = load i64, i64* %18, align 8
  %191 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %189, i64 %190
  %192 = bitcast %struct.scsi_sgl_task_params* %191 to %struct.iscsi_task_params*
  %193 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  store %struct.iscsi_task_params* %192, %struct.iscsi_task_params** %193, align 8
  %194 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  %195 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %194, align 8
  %196 = bitcast %struct.iscsi_task_params* %195 to %struct.scsi_sgl_task_params*
  %197 = call i32 @memset(%struct.scsi_sgl_task_params* %196, i32 0, i32 4)
  %198 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %199 = bitcast %struct.iscsi_text_request_hdr* %6 to %struct.scsi_sgl_task_params*
  %200 = call i32 @init_initiator_text_request_task(%struct.scsi_sgl_task_params* %198, %struct.scsi_sgl_task_params* %199, %struct.scsi_sgl_task_params* %7, %struct.scsi_sgl_task_params* %8)
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %224

204:                                              ; preds = %51
  %205 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %206 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %205, i32 0, i32 0
  %207 = call i32 @spin_lock(i32* %206)
  %208 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %209 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %208, i32 0, i32 2
  %210 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %211 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %210, i32 0, i32 2
  %212 = call i32 @list_add_tail(i32* %209, i32* %211)
  %213 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  %214 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  %215 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %216 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %220 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock(i32* %220)
  %222 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %223 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %204, %203, %48
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i32 @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @ntoh24(i32) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_initiator_text_request_task(%struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qedi_ring_doorbell(%struct.qedi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
