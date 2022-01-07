; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_discovery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_discovery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { %struct.lpfc_nvmet_tgtport* }
%struct.lpfc_nvmet_tgtport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"6420 NVMET subsystem change: Notification %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Sent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_target_port*)* @lpfc_nvmet_discovery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvmet_discovery_event(%struct.nvmet_fc_target_port* %0) #0 {
  %2 = alloca %struct.nvmet_fc_target_port*, align 8
  %3 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %2, align 8
  %6 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %6, i32 0, i32 0
  %8 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  store %struct.lpfc_nvmet_tgtport* %8, %struct.lpfc_nvmet_tgtport** %3, align 8
  %9 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %9, i32 0, i32 0
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %4, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @lpfc_issue_els_rscn(i32 %14, i32 0)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_NVME, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %22)
  ret void
}

declare dso_local i64 @lpfc_issue_els_rscn(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
