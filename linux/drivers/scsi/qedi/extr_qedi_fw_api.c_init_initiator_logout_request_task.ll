; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_logout_request_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_logout_request_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i64, i64, %struct.e4_iscsi_task_context* }
%struct.e4_iscsi_task_context = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_logout_req_hdr = type { i32 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.data_hdr = type { i32 }
%struct.iscsi_common_hdr = type { i32 }

@ISCSI_TASK_TYPE_MIDPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_logout_request_task(%struct.iscsi_task_params* %0, %struct.iscsi_logout_req_hdr* %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params* %3) #0 {
  %5 = alloca %struct.iscsi_task_params*, align 8
  %6 = alloca %struct.iscsi_logout_req_hdr*, align 8
  %7 = alloca %struct.scsi_sgl_task_params*, align 8
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.e4_iscsi_task_context*, align 8
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %5, align 8
  store %struct.iscsi_logout_req_hdr* %1, %struct.iscsi_logout_req_hdr** %6, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %7, align 8
  store %struct.scsi_sgl_task_params* %3, %struct.scsi_sgl_task_params** %8, align 8
  %10 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %10, i32 0, i32 2
  %12 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %11, align 8
  store %struct.e4_iscsi_task_context* %12, %struct.e4_iscsi_task_context** %9, align 8
  %13 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %14 = load %struct.iscsi_logout_req_hdr*, %struct.iscsi_logout_req_hdr** %6, align 8
  %15 = bitcast %struct.iscsi_logout_req_hdr* %14 to %struct.data_hdr*
  %16 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %17 = call i32 @init_default_iscsi_task(%struct.iscsi_task_params* %13, %struct.data_hdr* %15, i32 %16)
  %18 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %24 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %28 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %32 = call i32 @init_scsi_sgl_context(i32* %26, i32* %30, %struct.scsi_sgl_task_params* %31)
  br label %33

33:                                               ; preds = %22, %4
  %34 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %40 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %43 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %46 = call i32 @init_scsi_sgl_context(i32* %41, i32* %44, %struct.scsi_sgl_task_params* %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %49 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %48, i32 0, i32 2
  %50 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %51 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %50, i32 0, i32 1
  %52 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %58 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %63 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %69 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = call i32 @init_ustorm_task_contexts(i32* %49, i32* %51, i32 %62, i32 %73, i32 0, i32 0)
  %75 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %81 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ %82, %79 ], [ 0, %83 ]
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %88 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %91 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %92 = load %struct.iscsi_logout_req_hdr*, %struct.iscsi_logout_req_hdr** %6, align 8
  %93 = bitcast %struct.iscsi_logout_req_hdr* %92 to %struct.iscsi_common_hdr*
  %94 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %95 = call i32 @init_sqe(%struct.iscsi_task_params* %90, %struct.scsi_sgl_task_params* %91, i32* null, %struct.iscsi_common_hdr* %93, i32* null, i32 %94, i32 0)
  ret i32 0
}

declare dso_local i32 @init_default_iscsi_task(%struct.iscsi_task_params*, %struct.data_hdr*, i32) #1

declare dso_local i32 @init_scsi_sgl_context(i32*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @init_ustorm_task_contexts(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @init_sqe(%struct.iscsi_task_params*, %struct.scsi_sgl_task_params*, i32*, %struct.iscsi_common_hdr*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
