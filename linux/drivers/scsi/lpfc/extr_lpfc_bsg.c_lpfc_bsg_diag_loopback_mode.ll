; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_diag_loopback_mode(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %8 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %9 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = icmp ne %struct.Scsi_Host* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %5, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = icmp ne %struct.lpfc_vport* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %15
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %6, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %28 = icmp ne %struct.lpfc_hba* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %23
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LPFC_SLI_REV4, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %40 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %41 = call i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba* %39, %struct.bsg_job* %40)
  store i32 %41, i32* %7, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i64 @bf_get(i32 %43, i32* %46)
  %48 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %52 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %53 = call i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba* %51, %struct.bsg_job* %52)
  store i32 %53, i32* %7, align 4
  br label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %29, %20, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba*, %struct.bsg_job*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba*, %struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
