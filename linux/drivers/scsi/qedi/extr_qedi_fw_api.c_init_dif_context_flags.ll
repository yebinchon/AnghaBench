; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_dif_context_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_dif_context_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_dif_flags = type { i32 }
%struct.scsi_dif_task_params = type { i32, i64, i64 }

@ISCSI_DIF_FLAGS_PROT_INTERVAL_SIZE_LOG = common dso_local global i32 0, align 4
@ISCSI_DIF_FLAGS_DIF_TO_PEER = common dso_local global i32 0, align 4
@ISCSI_DIF_FLAGS_HOST_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_dif_flags*, %struct.scsi_dif_task_params*)* @init_dif_context_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dif_context_flags(%struct.iscsi_dif_flags* %0, %struct.scsi_dif_task_params* %1) #0 {
  %3 = alloca %struct.iscsi_dif_flags*, align 8
  %4 = alloca %struct.scsi_dif_task_params*, align 8
  store %struct.iscsi_dif_flags* %0, %struct.iscsi_dif_flags** %3, align 8
  store %struct.scsi_dif_task_params* %1, %struct.scsi_dif_task_params** %4, align 8
  %5 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %4, align 8
  %6 = icmp ne %struct.scsi_dif_task_params* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %39

8:                                                ; preds = %2
  %9 = load %struct.iscsi_dif_flags*, %struct.iscsi_dif_flags** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_dif_flags, %struct.iscsi_dif_flags* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ISCSI_DIF_FLAGS_PROT_INTERVAL_SIZE_LOG, align 4
  %13 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @SET_FIELD(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.iscsi_dif_flags*, %struct.iscsi_dif_flags** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_dif_flags, %struct.iscsi_dif_flags* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISCSI_DIF_FLAGS_DIF_TO_PEER, align 4
  %21 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = call i32 @SET_FIELD(i32 %19, i32 %20, i32 %26)
  %28 = load %struct.iscsi_dif_flags*, %struct.iscsi_dif_flags** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_dif_flags, %struct.iscsi_dif_flags* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ISCSI_DIF_FLAGS_HOST_INTERFACE, align 4
  %32 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = call i32 @SET_FIELD(i32 %30, i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
