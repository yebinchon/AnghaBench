; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_offload_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_offload_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { i32, i64, i64, %struct.iscsi_task*, %struct.beiscsi_hba* }
%struct.iscsi_task = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.beiscsi_offload_params = type { i32 }
%struct.wrb_handle = type { i32, i32 }
%struct.hwi_wrb_context = type { i32, i32 }

@DB_WRB_POST_CID_MASK = common dso_local global i32 0, align 4
@DB_DEF_PDU_WRB_INDEX_MASK = common dso_local global i32 0, align 4
@DB_DEF_PDU_WRB_INDEX_SHIFT = common dso_local global i32 0, align 4
@DB_DEF_PDU_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"BM_%d : put CONTEXT_UPDATE pwrb_handle=%p free_index=0x%x wrb_handles_available=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_offload_connection(%struct.beiscsi_conn* %0, %struct.beiscsi_offload_params* %1) #0 {
  %3 = alloca %struct.beiscsi_conn*, align 8
  %4 = alloca %struct.beiscsi_offload_params*, align 8
  %5 = alloca %struct.wrb_handle*, align 8
  %6 = alloca %struct.hwi_wrb_context*, align 8
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.iscsi_session*, align 8
  %10 = alloca i32, align 4
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %3, align 8
  store %struct.beiscsi_offload_params* %1, %struct.beiscsi_offload_params** %4, align 8
  store %struct.hwi_wrb_context* null, %struct.hwi_wrb_context** %6, align 8
  %11 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %12 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %11, i32 0, i32 4
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %12, align 8
  store %struct.beiscsi_hba* %13, %struct.beiscsi_hba** %7, align 8
  %14 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %14, i32 0, i32 3
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %15, align 8
  store %struct.iscsi_task* %16, %struct.iscsi_task** %8, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %20, align 8
  store %struct.iscsi_session* %21, %struct.iscsi_session** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %28 = call i32 @beiscsi_cleanup_task(%struct.iscsi_task* %27)
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %30 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %33 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %34 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba* %32, i32 %35, %struct.hwi_wrb_context** %6)
  store %struct.wrb_handle* %36, %struct.wrb_handle** %5, align 8
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %38 = call i64 @is_chip_be2_be3r(%struct.beiscsi_hba* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load %struct.beiscsi_offload_params*, %struct.beiscsi_offload_params** %4, align 8
  %42 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %47 = call i32 @beiscsi_offload_cxn_v0(%struct.beiscsi_offload_params* %41, %struct.wrb_handle* %42, i32 %45, %struct.hwi_wrb_context* %46)
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.beiscsi_offload_params*, %struct.beiscsi_offload_params** %4, align 8
  %50 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %51 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %52 = call i32 @beiscsi_offload_cxn_v2(%struct.beiscsi_offload_params* %49, %struct.wrb_handle* %50, %struct.hwi_wrb_context* %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %55 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be_dws_le_to_cpu(i32 %56, i32 4)
  %58 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %59 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DB_WRB_POST_CID_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %66 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DB_DEF_PDU_WRB_INDEX_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @DB_DEF_PDU_WRB_INDEX_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @DB_DEF_PDU_NUM_POSTED_SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %83 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i32 @iowrite32(i32 %78, i64 %85)
  %87 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %88 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %90 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @beiscsi_put_wrb_handle(%struct.hwi_wrb_context* %87, %struct.wrb_handle* %88, i32 %92)
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %95 = load i32, i32* @KERN_INFO, align 4
  %96 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %97 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.wrb_handle*, %struct.wrb_handle** %5, align 8
  %100 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %101 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %104 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %98, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), %struct.wrb_handle* %99, i32 %102, i32 %105)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @beiscsi_cleanup_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.wrb_handle* @alloc_wrb_handle(%struct.beiscsi_hba*, i32, %struct.hwi_wrb_context**) #1

declare dso_local i64 @is_chip_be2_be3r(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_offload_cxn_v0(%struct.beiscsi_offload_params*, %struct.wrb_handle*, i32, %struct.hwi_wrb_context*) #1

declare dso_local i32 @beiscsi_offload_cxn_v2(%struct.beiscsi_offload_params*, %struct.wrb_handle*, %struct.hwi_wrb_context*) #1

declare dso_local i32 @be_dws_le_to_cpu(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @beiscsi_put_wrb_handle(%struct.hwi_wrb_context*, %struct.wrb_handle*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, %struct.wrb_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
