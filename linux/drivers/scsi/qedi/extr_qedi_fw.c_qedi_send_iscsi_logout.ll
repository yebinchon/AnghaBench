; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_send_iscsi_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, i32, i32, i64, %struct.qedi_endpoint*, %struct.qedi_ctx* }
%struct.qedi_endpoint = type { %struct.scsi_sgl_task_params* }
%struct.scsi_sgl_task_params = type { i32, i64, i32, %struct.scsi_sgl_task_params*, i64, i64, i64, %struct.scsi_sgl_task_params*, i64, i8*, i8*, i32, i32 }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.iscsi_logout_req_hdr = type { i32, i64, i32, %struct.iscsi_logout_req_hdr*, i64, i64, i64, %struct.iscsi_logout_req_hdr*, i64, i8*, i8*, i32, i32 }
%struct.iscsi_task_params = type { i32, i64, i32, %struct.iscsi_task_params*, i64, i64, i64, %struct.iscsi_task_params*, i64, i8*, i8*, i32, i32 }
%struct.e4_iscsi_task_context = type { i32, i64, i32, %struct.e4_iscsi_task_context*, i64, i64, i64, %struct.e4_iscsi_task_context*, i64, i8*, i8*, i32, i32 }
%struct.iscsi_logout = type { i32, i32, i32, i32 }
%struct.qedi_cmd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_send_iscsi_logout(%struct.qedi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_logout_req_hdr, align 8
  %7 = alloca %struct.scsi_sgl_task_params, align 8
  %8 = alloca %struct.scsi_sgl_task_params, align 8
  %9 = alloca %struct.iscsi_task_params, align 8
  %10 = alloca %struct.e4_iscsi_task_context*, align 8
  %11 = alloca %struct.iscsi_logout*, align 8
  %12 = alloca %struct.qedi_ctx*, align 8
  %13 = alloca %struct.qedi_cmd*, align 8
  %14 = alloca %struct.qedi_endpoint*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  store %struct.iscsi_logout* null, %struct.iscsi_logout** %11, align 8
  %18 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %19 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %18, i32 0, i32 5
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %19, align 8
  store %struct.qedi_ctx* %20, %struct.qedi_ctx** %12, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %24, %struct.qedi_cmd** %13, align 8
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.iscsi_logout*
  store %struct.iscsi_logout* %28, %struct.iscsi_logout** %11, align 8
  %29 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %30 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %29, i32 0, i32 4
  %31 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %30, align 8
  store %struct.qedi_endpoint* %31, %struct.qedi_endpoint** %14, align 8
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %12, align 8
  %33 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %145

39:                                               ; preds = %2
  %40 = load %struct.qedi_ctx*, %struct.qedi_ctx** %12, align 8
  %41 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @qedi_get_task_mem(i32* %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.e4_iscsi_task_context*
  store %struct.e4_iscsi_task_context* %44, %struct.e4_iscsi_task_context** %10, align 8
  %45 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %46 = bitcast %struct.e4_iscsi_task_context* %45 to %struct.scsi_sgl_task_params*
  %47 = call i32 @memset(%struct.scsi_sgl_task_params* %46, i32 0, i32 96)
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %50 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %52 = call i32 @memset(%struct.scsi_sgl_task_params* %51, i32 0, i32 96)
  %53 = bitcast %struct.iscsi_logout_req_hdr* %6 to %struct.scsi_sgl_task_params*
  %54 = call i32 @memset(%struct.scsi_sgl_task_params* %53, i32 0, i32 96)
  %55 = call i32 @memset(%struct.scsi_sgl_task_params* %7, i32 0, i32 96)
  %56 = call i32 @memset(%struct.scsi_sgl_task_params* %8, i32 0, i32 96)
  %57 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %58 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 12
  store i32 %59, i32* %60, align 4
  %61 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %62 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 128, %63
  %65 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.qedi_ctx*, %struct.qedi_ctx** %12, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %69 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %72 = call i32 @qedi_update_itt_map(%struct.qedi_ctx* %66, i32 %67, i32 %70, %struct.qedi_cmd* %71)
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %75 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @get_itt(i32 %76)
  %78 = call i32 @qedi_set_itt(i32 %73, i32 %77)
  %79 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 11
  store i32 %78, i32* %79, align 8
  %80 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %81 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @be32_to_cpu(i32 %82)
  %84 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 10
  store i8* %83, i8** %84, align 8
  %85 = load %struct.iscsi_logout*, %struct.iscsi_logout** %11, align 8
  %86 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @be32_to_cpu(i32 %87)
  %89 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 9
  store i8* %88, i8** %89, align 8
  %90 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %91 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.iscsi_logout_req_hdr, %struct.iscsi_logout_req_hdr* %6, i32 0, i32 8
  store i64 %92, i64* %93, align 8
  %94 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %10, align 8
  %95 = bitcast %struct.e4_iscsi_task_context* %94 to %struct.iscsi_task_params*
  %96 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 7
  store %struct.iscsi_task_params* %95, %struct.iscsi_task_params** %96, align 8
  %97 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %98 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %107 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %106)
  store i64 %107, i64* %16, align 8
  %108 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %109 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %108, i32 0, i32 0
  %110 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %109, align 8
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %110, i64 %111
  %113 = bitcast %struct.scsi_sgl_task_params* %112 to %struct.iscsi_task_params*
  %114 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  store %struct.iscsi_task_params* %113, %struct.iscsi_task_params** %114, align 8
  %115 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %9, i32 0, i32 3
  %116 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %115, align 8
  %117 = bitcast %struct.iscsi_task_params* %116 to %struct.scsi_sgl_task_params*
  %118 = call i32 @memset(%struct.scsi_sgl_task_params* %117, i32 0, i32 4)
  %119 = bitcast %struct.iscsi_task_params* %9 to %struct.scsi_sgl_task_params*
  %120 = bitcast %struct.iscsi_logout_req_hdr* %6 to %struct.scsi_sgl_task_params*
  %121 = call i32 @init_initiator_logout_request_task(%struct.scsi_sgl_task_params* %119, %struct.scsi_sgl_task_params* %120, i32* null, i32* null)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %145

125:                                              ; preds = %39
  %126 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %127 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %126, i32 0, i32 0
  %128 = call i32 @spin_lock(i32* %127)
  %129 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %130 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %129, i32 0, i32 2
  %131 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %132 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %131, i32 0, i32 2
  %133 = call i32 @list_add_tail(i32* %130, i32* %132)
  %134 = load %struct.qedi_cmd*, %struct.qedi_cmd** %13, align 8
  %135 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %137 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %141 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %144 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %125, %124, %36
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i64 @qedi_get_task_mem(i32*, i32) #1

declare dso_local i32 @memset(%struct.scsi_sgl_task_params*, i32, i32) #1

declare dso_local i32 @qedi_update_itt_map(%struct.qedi_ctx*, i32, i32, %struct.qedi_cmd*) #1

declare dso_local i32 @qedi_set_itt(i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_initiator_logout_request_task(%struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params*, i32*, i32*) #1

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
