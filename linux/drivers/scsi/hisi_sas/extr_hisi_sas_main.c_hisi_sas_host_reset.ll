; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.hisi_hba = type { i32, i32 }

@SCSI_ADAPTER_RESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_host_reset(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_hba*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = call %struct.hisi_hba* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.hisi_hba* %8, %struct.hisi_hba** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SCSI_ADAPTER_RESET, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 0
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.hisi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
