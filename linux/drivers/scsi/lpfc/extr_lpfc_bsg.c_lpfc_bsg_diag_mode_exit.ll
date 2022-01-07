; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_mode_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_mode_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_bsg_diag_mode_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport**, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %6)
  store %struct.lpfc_vport** %7, %struct.lpfc_vport*** %4, align 8
  %8 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %9 = icmp ne %struct.lpfc_vport** %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %18, i64 %20
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  %23 = icmp ne %struct.lpfc_vport* %22, null
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i1 [ false, %11 ], [ %23, %17 ]
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %27, i64 %29
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %30, align 8
  %32 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %31)
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %3, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %34 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %24
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %41 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %39, %struct.lpfc_vport** %40)
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %44, align 8
  %46 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %45)
  store %struct.Scsi_Host* %46, %struct.Scsi_Host** %3, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %48 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %47)
  br label %49

49:                                               ; preds = %42, %38
  ret void
}

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
