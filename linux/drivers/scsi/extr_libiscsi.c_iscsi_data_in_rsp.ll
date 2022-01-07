; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_data_in_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_data_in_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32 }
%struct.iscsi_hdr = type { i32 }
%struct.iscsi_task = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_data_rsp = type { i32, i32, i32, i32 }
%struct.iscsi_nopin = type { i32 }

@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_UNDERFLOW = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_OVERFLOW = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_OVERFLOW = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"data in with status done [sc %p res %d itt 0x%x]\0A\00", align 1
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, %struct.iscsi_hdr*, %struct.iscsi_task*)* @iscsi_data_in_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_data_in_rsp(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, %struct.iscsi_task* %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_hdr*, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca %struct.iscsi_data_rsp*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %5, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %6, align 8
  %10 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %11 = bitcast %struct.iscsi_hdr* %10 to %struct.iscsi_data_rsp*
  store %struct.iscsi_data_rsp* %11, %struct.iscsi_data_rsp** %7, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 1
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %8, align 8
  %15 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %106

22:                                               ; preds = %3
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %27 = bitcast %struct.iscsi_hdr* %26 to %struct.iscsi_nopin*
  %28 = call i32 @iscsi_update_cmdsn(i32 %25, %struct.iscsi_nopin* %27)
  %29 = load i32, i32* @DID_OK, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %32 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %38 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = add nsw i32 %40, 1
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %45 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ISCSI_FLAG_DATA_UNDERFLOW, align 4
  %48 = load i32, i32* @ISCSI_FLAG_DATA_OVERFLOW, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %22
  %53 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %54 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %61 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ISCSI_FLAG_CMD_OVERFLOW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66, %59
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %74, i32 %75)
  br label %86

77:                                               ; preds = %66, %52
  %78 = load i32, i32* @DID_BAD_TARGET, align 4
  %79 = shl i32 %78, 16
  %80 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %7, align 8
  %81 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %73
  br label %87

87:                                               ; preds = %86, %22
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %89 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %96 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ISCSI_DBG_SESSION(i32 %90, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %91, i32 %94, i32 %97)
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %104 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %105 = call i32 @iscsi_complete_task(%struct.iscsi_task* %103, i32 %104)
  br label %106

106:                                              ; preds = %87, %21
  ret void
}

declare dso_local i32 @iscsi_update_cmdsn(i32, %struct.iscsi_nopin*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(i32, i8*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
