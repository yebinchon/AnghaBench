; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"3172 SCSI layer issued Host Reset Data:\0A\00", align 1
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"3323 Failed host reset\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %5, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %6, align 8
  %21 = load i32, i32* @SUCCESS, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @LOG_FCP, align 4
  %25 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %27 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %28 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %26, i32 %27)
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %30 = call i32 @lpfc_offline(%struct.lpfc_hba* %29)
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %38 = call i32 @lpfc_online(%struct.lpfc_hba* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %44 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %41, %35
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = load i32, i32* @LOG_FCP, align 4
  %50 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %52 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %51)
  %53 = load i32, i32* @FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
