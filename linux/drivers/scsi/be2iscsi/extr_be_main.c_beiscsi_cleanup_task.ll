; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, i32*, %struct.iscsi_conn*, %struct.beiscsi_io_task* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, i32, %struct.beiscsi_session*, %struct.beiscsi_hba* }
%struct.beiscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.beiscsi_io_task = type { i32*, i64, i32*, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @beiscsi_cleanup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.beiscsi_io_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_conn*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.beiscsi_session*, align 8
  %8 = alloca %struct.hwi_wrb_context*, align 8
  %9 = alloca %struct.hwi_controller*, align 8
  %10 = alloca i64, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 3
  %13 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %12, align 8
  store %struct.beiscsi_io_task* %13, %struct.beiscsi_io_task** %3, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 2
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %4, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %18, align 8
  store %struct.beiscsi_conn* %19, %struct.beiscsi_conn** %5, align 8
  %20 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %20, i32 0, i32 3
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %21, align 8
  store %struct.beiscsi_hba* %22, %struct.beiscsi_hba** %6, align 8
  %23 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %24 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %23, i32 0, i32 2
  %25 = load %struct.beiscsi_session*, %struct.beiscsi_session** %24, align 8
  store %struct.beiscsi_session* %25, %struct.beiscsi_session** %7, align 8
  %26 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @BE_GET_CRI_FROM_CID(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = load %struct.hwi_controller*, %struct.hwi_controller** %31, align 8
  store %struct.hwi_controller* %32, %struct.hwi_controller** %9, align 8
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %9, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 0
  %35 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %35, i64 %36
  store %struct.hwi_wrb_context* %37, %struct.hwi_wrb_context** %8, align 8
  %38 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %39 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %1
  %43 = load %struct.beiscsi_session*, %struct.beiscsi_session** %7, align 8
  %44 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %47 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %50 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_pool_free(i32 %45, i32* %48, i32 %54)
  %56 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %57 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %59 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %42, %1
  %61 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %62 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %60
  %66 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %67 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %72 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %8, align 8
  %73 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %74 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @free_wrb_handle(%struct.beiscsi_hba* %71, %struct.hwi_wrb_context* %72, i32* %75)
  %77 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %78 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %70, %65
  %80 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %81 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %86 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %87 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @free_io_sgl_handle(%struct.beiscsi_hba* %85, i32* %88)
  %90 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %91 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %84, %79
  %93 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %94 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %99 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %104 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @scsi_dma_unmap(i32* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %3, align 8
  %109 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %107, %92
  br label %121

111:                                              ; preds = %60
  %112 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %113 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %5, align 8
  %118 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %119 = call i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn* %117, %struct.iscsi_task* %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %121

121:                                              ; preds = %120, %110
  ret void
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @free_wrb_handle(%struct.beiscsi_hba*, %struct.hwi_wrb_context*, i32*) #1

declare dso_local i32 @free_io_sgl_handle(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @scsi_dma_unmap(i32*) #1

declare dso_local i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn*, %struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
