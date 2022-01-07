; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_calc_rw_task_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_calc_rw_task_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i32, i32 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.scsi_dif_task_params = type { i32 }

@ISCSI_TASK_TYPE_INITIATOR_WRITE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_TARGET_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task_params*, i32, %struct.scsi_sgl_task_params*, %struct.scsi_dif_task_params*)* @calc_rw_task_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_rw_task_size(%struct.iscsi_task_params* %0, i32 %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_dif_task_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.scsi_dif_task_params*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %8, align 8
  store %struct.scsi_dif_task_params* %3, %struct.scsi_dif_task_params** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ISCSI_TASK_TYPE_TARGET_READ, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %4
  %19 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %48

30:                                               ; preds = %26
  %31 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %9, align 8
  %32 = icmp ne %struct.scsi_dif_task_params* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %48

35:                                               ; preds = %30
  %36 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %9, align 8
  %37 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %44 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %33, %29
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
