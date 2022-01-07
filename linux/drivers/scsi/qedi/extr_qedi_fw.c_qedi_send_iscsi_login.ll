; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.qedi_endpoint*, %struct.qedi_ctx* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.qedi_endpoint = type { %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i64, i32, %struct.scsi_sgl_task_params*, i8*, i8*, i64, %struct.scsi_sgl_task_params*, i8*, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.scsi_sge = type { i8* }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.iscsi_login_req_hdr = type { i32, i64, i32, %struct.iscsi_login_req_hdr*, i8*, i8*, i64, %struct.iscsi_login_req_hdr*, i8*, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task_params = type { i32, i64, i32, %struct.iscsi_task_params*, i8*, i8*, i64, %struct.iscsi_task_params*, i8*, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.e4_iscsi_task_context = type { i32, i64, i32, %struct.e4_iscsi_task_context*, i8*, i8*, i64, %struct.e4_iscsi_task_context*, i8*, %struct.TYPE_3__, %struct.scsi_sge*, i8*, i8*, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_login_req = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_send_iscsi_login(%struct.qedi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_login_req_hdr, align 8
  %7 = alloca %struct.scsi_sgl_task_params, align 8
  %8 = alloca %struct.scsi_sgl_task_params, align 8
  %9 = alloca %struct.iscsi_task_params, align 8
  %10 = alloca %struct.e4_iscsi_task_context*, align 8
  %11 = alloca %struct.qedi_ctx*, align 8
  %12 = alloca %struct.iscsi_login_req*, align 8
  %13 = alloca %struct.scsi_sge*, align 8
  %14 = alloca %struct.qedi_cmd*, align 8
  %15 = alloca %struct.qedi_endpoint*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %19 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %19, i32 0, i32 6
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %20, align 8
  store %struct.qedi_ctx* %21, %struct.qedi_ctx** %11, align 8
  store %struct.scsi_sge* null, %struct.scsi_sge** %13, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %23 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.scsi_sge*
  store %struct.scsi_sge* %26, %struct.scsi_sge** %13, align 8
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %30, %struct.qedi_cmd** %14, align 8
  %31 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %32 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %31, i32 0, i32 5
  %33 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %32, align 8
  store %struct.qedi_endpoint* %33, %struct.qedi_endpoint** %15, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %37, %struct.iscsi_login_req** %12, align 8
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %39 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %245

45:                                               ; preds = %2
  %46 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %47 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @qedi_get_task_mem(i32* %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %50, %struct.e4_iscsi_task_context** %10, align 8
  %51 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %52 = bitcast %struct.e4_iscsi_task_context* %51 to %struct.scsi_sgl_task_params*
  %53 = call i32 @memset(%struct.scsi_sgl_task_params* %52, i32 0, i32 168)
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %56 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %58 = call i32 @memset(%struct.scsi_sgl_task_params* %57, i32 0, i32 168)
  %59 = bitcast %struct.iscsi_login_req_hdr* %6 to %struct.scsi_sgl_task_params*
  %60 = call i32 @memset(%struct.scsi_sgl_task_params* %59, i32 0, i32 168)
  %61 = call i32 @memset(%struct.scsi_sgl_task_params* %7, i32 0, i32 168)
  %62 = call i32 @memset(%struct.scsi_sgl_task_params* %8, i32 0, i32 168)
  %63 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %64 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 22
  store i32 %65, i32* %66, align 8
  %67 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %68 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 21
  store i32 %69, i32* %70, align 4
  %71 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %72 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 20
  store i32 %73, i32* %74, align 8
  %75 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %76 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 19
  store i32 %77, i32* %78, align 4
  %79 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %80 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8**
  %83 = call i32 @swab32p(i8** %82)
  %84 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 18
  store i32 %83, i32* %84, align 8
  %85 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %86 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = bitcast i32* %88 to i64*
  %90 = call i32 @swab16p(i64* %89)
  %91 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 17
  store i32 %90, i32* %91, align 4
  %92 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %93 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 16
  store i32 %94, i32* %95, align 8
  %96 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %97 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @ntoh24(i32 %98)
  %100 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 15
  store i8* %99, i8** %100, align 8
  %101 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %104 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %107 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %101, i32 %102, i32 %105, %struct.qedi_cmd* %106)
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %110 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @get_itt(i32 %111)
  %113 = call i32 @qedi_set_itt(i32 %108, i32 %112)
  %114 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 14
  store i32 %113, i32* %114, align 8
  %115 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %116 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 13
  store i64 %117, i64* %118, align 8
  %119 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %120 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @be32_to_cpu(i32 %121)
  %123 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 12
  store i8* %122, i8** %123, align 8
  %124 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %125 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @be32_to_cpu(i32 %126)
  %128 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 11
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.iscsi_login_req_hdr, %struct.iscsi_login_req_hdr* %6, i32 0, i32 11
  store i8* null, i8** %129, align 8
  %130 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %131 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.scsi_sge*
  %135 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 10
  store %struct.scsi_sge* %134, %struct.scsi_sge** %135, align 8
  %136 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %137 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %144 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = ashr i32 %147, 32
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %154 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @ntoh24(i32 %155)
  %157 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 8
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %7, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %160 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.scsi_sge*
  %164 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 10
  store %struct.scsi_sge* %163, %struct.scsi_sge** %164, align 8
  %165 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %166 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %173 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = ashr i32 %176, 32
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.scsi_sge*, %struct.scsi_sge** %13, align 8
  %183 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 8
  store i8* %184, i8** %185, align 8
  %186 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %8, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %188 = bitcast %struct.e4_iscsi_task_context* %187 to %struct.iscsi_task_params*
  %189 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 7
  store %struct.iscsi_task_params* %188, %struct.iscsi_task_params** %189, align 8
  %190 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %191 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 1
  store i64 %192, i64* %193, align 8
  %194 = load i32, i32* %16, align 4
  %195 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 2
  store i32 %194, i32* %195, align 8
  %196 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 6
  store i64 0, i64* %196, align 8
  %197 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %12, align 8
  %198 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @ntoh24(i32 %199)
  %201 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 5
  store i8* %200, i8** %201, align 8
  %202 = load %struct.scsi_sge*, %struct.scsi_sge** %13, align 8
  %203 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 4
  store i8* %204, i8** %205, align 8
  %206 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %207 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %206)
  store i64 %207, i64* %17, align 8
  %208 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %15, align 8
  %209 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %208, i32 0, i32 0
  %210 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %209, align 8
  %211 = load i64, i64* %17, align 8
  %212 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %210, i64 %211
  %213 = bitcast %struct.scsi_sgl_task_params* %212 to %struct.iscsi_task_params*
  %214 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  store %struct.iscsi_task_params* %213, %struct.iscsi_task_params** %214, align 8
  %215 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  %216 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %215, align 8
  %217 = bitcast %struct.iscsi_task_params* %216 to %struct.scsi_sgl_task_params*
  %218 = call i32 @memset(%struct.scsi_sgl_task_params* %217, i32 0, i32 4)
  %219 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %220 = bitcast %struct.iscsi_login_req_hdr* %6 to %struct.scsi_sgl_task_params*
  %221 = call i32 @init_initiator_login_request_task(%struct.scsi_sgl_task_params* %219, %struct.scsi_sgl_task_params* %220, %struct.scsi_sgl_task_params* %7, %struct.scsi_sgl_task_params* %8)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %245

225:                                              ; preds = %45
  %226 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %227 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %226, i32 0, i32 0
  %228 = call i32 @spin_lock(i32* %227)
  %229 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %230 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %229, i32 0, i32 2
  %231 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %232 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %231, i32 0, i32 2
  %233 = call i32 @list_add_tail(i32* %230, i32* %232)
  %234 = load %struct.qedi_cmd*, %struct.qedi_cmd** %14, align 8
  %235 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  %236 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %237 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %241 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %240, i32 0, i32 0
  %242 = call i32 @spin_unlock(i32* %241)
  %243 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %244 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %225, %224, %42
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i32 @swab32p(i8**) #1

declare dso_local i32 @swab16p(i64*) #1

declare dso_local i8* @ntoh24(i32) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i32 @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_initiator_login_request_task(%struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*) #1

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
