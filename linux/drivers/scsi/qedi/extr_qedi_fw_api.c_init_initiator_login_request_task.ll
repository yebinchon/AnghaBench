; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_login_request_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_login_request_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i64, i64, %struct.e4_iscsi_task_context* }
%struct.e4_iscsi_task_context = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_login_req_hdr = type { i32 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.data_hdr = type { i32 }
%struct.iscsi_common_hdr = type { i32 }

@ISCSI_TASK_TYPE_MIDPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_login_request_task(%struct.iscsi_task_params* %0, %struct.iscsi_login_req_hdr* %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params* %3) #0 {
  %5 = alloca %struct.iscsi_task_params*, align 8
  %6 = alloca %struct.iscsi_login_req_hdr*, align 8
  %7 = alloca %struct.scsi_sgl_task_params*, align 8
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.e4_iscsi_task_context*, align 8
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %5, align 8
  store %struct.iscsi_login_req_hdr* %1, %struct.iscsi_login_req_hdr** %6, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %7, align 8
  store %struct.scsi_sgl_task_params* %3, %struct.scsi_sgl_task_params** %8, align 8
  %10 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %10, i32 0, i32 2
  %12 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %11, align 8
  store %struct.e4_iscsi_task_context* %12, %struct.e4_iscsi_task_context** %9, align 8
  %13 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %14 = load %struct.iscsi_login_req_hdr*, %struct.iscsi_login_req_hdr** %6, align 8
  %15 = bitcast %struct.iscsi_login_req_hdr* %14 to %struct.data_hdr*
  %16 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %17 = call i32 @init_default_iscsi_task(%struct.iscsi_task_params* %13, %struct.data_hdr* %15, i32 %16)
  %18 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %19 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %18, i32 0, i32 3
  %20 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %21 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %20, i32 0, i32 2
  %22 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %28 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  %44 = call i32 @init_ustorm_task_contexts(i32* %19, i32* %21, i32 %32, i32 %43, i32 0, i32 0)
  %45 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %51 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %55 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %59 = call i32 @init_scsi_sgl_context(i32* %53, i32* %57, %struct.scsi_sgl_task_params* %58)
  br label %60

60:                                               ; preds = %49, %42
  %61 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %67 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %70 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %73 = call i32 @init_scsi_sgl_context(i32* %68, i32* %71, %struct.scsi_sgl_task_params* %72)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %81 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %84

83:                                               ; preds = %74
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
  %92 = load %struct.iscsi_login_req_hdr*, %struct.iscsi_login_req_hdr** %6, align 8
  %93 = bitcast %struct.iscsi_login_req_hdr* %92 to %struct.iscsi_common_hdr*
  %94 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %95 = call i32 @init_sqe(%struct.iscsi_task_params* %90, %struct.scsi_sgl_task_params* %91, i32* null, %struct.iscsi_common_hdr* %93, i32* null, i32 %94, i32 0)
  ret i32 0
}

declare dso_local i32 @init_default_iscsi_task(%struct.iscsi_task_params*, %struct.data_hdr*, i32) #1

declare dso_local i32 @init_ustorm_task_contexts(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @init_scsi_sgl_context(i32*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @init_sqe(%struct.iscsi_task_params*, %struct.scsi_sgl_task_params*, i32*, %struct.iscsi_common_hdr*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
