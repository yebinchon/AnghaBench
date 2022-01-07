; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_nopout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_nopout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i64, %struct.TYPE_6__, i32, i32, i32, %struct.qedi_endpoint*, %struct.qedi_ctx* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.qedi_endpoint = type { %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i32, i64, i32, i32, i32, %struct.scsi_sgl_task_params*, i64, %struct.scsi_sgl_task_params*, %struct.TYPE_5__, %struct.scsi_sge*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.scsi_sge = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.iscsi_nop_out_hdr = type { i32, i32, i64, i32, i32, i32, %struct.iscsi_nop_out_hdr*, i64, %struct.iscsi_nop_out_hdr*, %struct.TYPE_5__, %struct.scsi_sge*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, i32, i32 }
%struct.iscsi_task_params = type { i32, i32, i64, i32, i32, i32, %struct.iscsi_task_params*, i64, %struct.iscsi_task_params*, %struct.TYPE_5__, %struct.scsi_sge*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, i32, i32 }
%struct.e4_iscsi_task_context = type { i32, i32, i64, i32, i32, i32, %struct.e4_iscsi_task_context*, i64, %struct.e4_iscsi_task_context*, %struct.TYPE_5__, %struct.scsi_sge*, i8*, i8*, i8*, i8*, %struct.TYPE_4__, i32, i32 }
%struct.iscsi_nopout = type { i8*, i8*, i64, i8*, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_NOP_OUT_HDR_CONST1 = common dso_local global i32 0, align 4
@ISCSI_NOP_OUT_HDR_RSRV = common dso_local global i32 0, align 4
@ISCSI_TTT_ALL_ONES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_send_iscsi_nopout(%struct.qedi_conn* %0, %struct.iscsi_task* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iscsi_nop_out_hdr, align 8
  %13 = alloca %struct.scsi_sgl_task_params, align 8
  %14 = alloca %struct.scsi_sgl_task_params, align 8
  %15 = alloca %struct.iscsi_task_params, align 8
  %16 = alloca %struct.qedi_ctx*, align 8
  %17 = alloca %struct.e4_iscsi_task_context*, align 8
  %18 = alloca %struct.iscsi_nopout*, align 8
  %19 = alloca %struct.scsi_sge*, align 8
  %20 = alloca %struct.qedi_cmd*, align 8
  %21 = alloca %struct.qedi_endpoint*, align 8
  %22 = alloca [2 x i8*], align 16
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %7, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %27 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %26, i32 0, i32 6
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %27, align 8
  store %struct.qedi_ctx* %28, %struct.qedi_ctx** %16, align 8
  store %struct.scsi_sge* null, %struct.scsi_sge** %19, align 8
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %29 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %30 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.scsi_sge*
  store %struct.scsi_sge* %33, %struct.scsi_sge** %19, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %37, %struct.qedi_cmd** %20, align 8
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.iscsi_nopout*
  store %struct.iscsi_nopout* %41, %struct.iscsi_nopout** %18, align 8
  %42 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %43 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %42, i32 0, i32 5
  %44 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %43, align 8
  store %struct.qedi_endpoint* %44, %struct.qedi_endpoint** %21, align 8
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %16, align 8
  %46 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %45)
  store i32 %46, i32* %23, align 4
  %47 = load i32, i32* %23, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %255

52:                                               ; preds = %5
  %53 = load %struct.qedi_ctx*, %struct.qedi_ctx** %16, align 8
  %54 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %23, align 4
  %56 = call i64 @qedi_get_task_mem(i32* %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %57, %struct.e4_iscsi_task_context** %17, align 8
  %58 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %17, align 8
  %59 = bitcast %struct.e4_iscsi_task_context* %58 to %struct.scsi_sgl_task_params*
  %60 = call i32 @memset(%struct.scsi_sgl_task_params* %59, i32 0, i32 136)
  %61 = load i32, i32* %23, align 4
  %62 = load %struct.qedi_cmd*, %struct.qedi_cmd** %20, align 8
  %63 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = bitcast %struct.iscsi_task_params* %15 to %struct.scsi_sgl_task_params*
  %65 = call i32 @memset(%struct.scsi_sgl_task_params* %64, i32 0, i32 136)
  %66 = bitcast %struct.iscsi_nop_out_hdr* %12 to %struct.scsi_sgl_task_params*
  %67 = call i32 @memset(%struct.scsi_sgl_task_params* %66, i32 0, i32 136)
  %68 = call i32 @memset(%struct.scsi_sgl_task_params* %13, i32 0, i32 136)
  %69 = call i32 @memset(%struct.scsi_sgl_task_params* %14, i32 0, i32 136)
  %70 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %71 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 17
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 16
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ISCSI_NOP_OUT_HDR_CONST1, align 4
  %77 = call i32 @SET_FIELD(i32 %75, i32 %76, i32 1)
  %78 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 16
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ISCSI_NOP_OUT_HDR_RSRV, align 4
  %81 = call i32 @SET_FIELD(i32 %79, i32 %80, i32 0)
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %83 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %84 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %83, i32 0, i32 4
  %85 = call i32 @memcpy(i8** %82, i32* %84, i32 4)
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %87 = load i8*, i8** %86, align 16
  %88 = call i8* @be32_to_cpu(i8* %87)
  %89 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 15
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @be32_to_cpu(i8* %92)
  %94 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 15
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %97 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @be32_to_cpu(i8* %98)
  %100 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 14
  store i8* %99, i8** %100, align 8
  %101 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %102 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @be32_to_cpu(i8* %103)
  %105 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 13
  store i8* %104, i8** %105, align 8
  %106 = load %struct.qedi_ctx*, %struct.qedi_ctx** %16, align 8
  %107 = load i32, i32* %23, align 4
  %108 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %109 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qedi_cmd*, %struct.qedi_cmd** %20, align 8
  %112 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %106, i32 %107, i32 %110, %struct.qedi_cmd* %111)
  %113 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %114 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ISCSI_TTT_ALL_ONES, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %52
  %119 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %120 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @be32_to_cpu(i8* %121)
  %123 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 12
  store i8* %122, i8** %123, align 8
  %124 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %18, align 8
  %125 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = call i8* @be32_to_cpu(i8* %127)
  %129 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 11
  store i8* %128, i8** %129, align 8
  br label %158

130:                                              ; preds = %52
  %131 = load i32, i32* %23, align 4
  %132 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %133 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @get_itt(i32 %134)
  %136 = call i8* @qedi_set_itt(i32 %131, i32 %135)
  %137 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 12
  store i8* %136, i8** %137, align 8
  %138 = load i64, i64* @ISCSI_TTT_ALL_ONES, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %12, i32 0, i32 11
  store i8* %139, i8** %140, align 8
  %141 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %142 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %141, i32 0, i32 2
  %143 = call i32 @spin_lock(i32* %142)
  %144 = load %struct.qedi_cmd*, %struct.qedi_cmd** %20, align 8
  %145 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %144, i32 0, i32 2
  %146 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %147 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %146, i32 0, i32 4
  %148 = call i32 @list_add_tail(i32* %145, i32* %147)
  %149 = load %struct.qedi_cmd*, %struct.qedi_cmd** %20, align 8
  %150 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %152 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %156 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %155, i32 0, i32 2
  %157 = call i32 @spin_unlock(i32* %156)
  br label %158

158:                                              ; preds = %130, %118
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %216

161:                                              ; preds = %158
  %162 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %163 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.scsi_sge*
  %167 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 10
  store %struct.scsi_sge* %166, %struct.scsi_sge** %167, align 8
  %168 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %169 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %176 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = ashr i32 %179, 32
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %10, align 4
  %186 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 0
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %13, i32 0, i32 1
  store i32 1, i32* %187, align 4
  %188 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %189 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.scsi_sge*
  %193 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %14, i32 0, i32 10
  store %struct.scsi_sge* %192, %struct.scsi_sge** %193, align 8
  %194 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %195 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %14, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %202 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = ashr i32 %205, 32
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %14, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.scsi_sge*, %struct.scsi_sge** %19, align 8
  %212 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %14, i32 0, i32 0
  store i32 %213, i32* %214, align 8
  %215 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %14, i32 0, i32 1
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %161, %158
  %217 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %17, align 8
  %218 = bitcast %struct.e4_iscsi_task_context* %217 to %struct.iscsi_task_params*
  %219 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 8
  store %struct.iscsi_task_params* %218, %struct.iscsi_task_params** %219, align 8
  %220 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %221 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 2
  store i64 %222, i64* %223, align 8
  %224 = load i32, i32* %23, align 4
  %225 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 3
  store i32 %224, i32* %225, align 8
  %226 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 7
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* %10, align 4
  %228 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 4
  store i32 %227, i32* %228, align 4
  %229 = load %struct.scsi_sge*, %struct.scsi_sge** %19, align 8
  %230 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 5
  store i32 %231, i32* %232, align 8
  %233 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %234 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %233)
  store i64 %234, i64* %24, align 8
  %235 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %21, align 8
  %236 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %235, i32 0, i32 0
  %237 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %236, align 8
  %238 = load i64, i64* %24, align 8
  %239 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %237, i64 %238
  %240 = bitcast %struct.scsi_sgl_task_params* %239 to %struct.iscsi_task_params*
  %241 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 6
  store %struct.iscsi_task_params* %240, %struct.iscsi_task_params** %241, align 8
  %242 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %15, i32 0, i32 6
  %243 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %242, align 8
  %244 = bitcast %struct.iscsi_task_params* %243 to %struct.scsi_sgl_task_params*
  %245 = call i32 @memset(%struct.scsi_sgl_task_params* %244, i32 0, i32 4)
  %246 = bitcast %struct.iscsi_task_params* %15 to %struct.scsi_sgl_task_params*
  %247 = bitcast %struct.iscsi_nop_out_hdr* %12 to %struct.scsi_sgl_task_params*
  %248 = call i32 @init_initiator_nop_out_task(%struct.scsi_sgl_task_params* %246, %struct.scsi_sgl_task_params* %247, %struct.scsi_sgl_task_params* %13, %struct.scsi_sgl_task_params* %14)
  store i32 %248, i32* %25, align 4
  %249 = load i32, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %216
  store i32 -1, i32* %6, align 4
  br label %255

252:                                              ; preds = %216
  %253 = load %struct.qedi_conn*, %struct.qedi_conn** %7, align 8
  %254 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %253)
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %252, %251, %49
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i8* @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_initiator_nop_out_task(%struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @qedi_ring_doorbell(%struct.qedi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
