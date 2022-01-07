; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_scan_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_scan_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.isci_host* }
%struct.isci_host = type { i32 }

@IHOST_START_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_host_scan_finished(%struct.Scsi_Host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sas_ha_struct*, align 8
  %7 = alloca %struct.isci_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %8)
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %6, align 8
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %11 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %10, i32 0, i32 0
  %12 = load %struct.isci_host*, %struct.isci_host** %11, align 8
  store %struct.isci_host* %12, %struct.isci_host** %7, align 8
  %13 = load i32, i32* @IHOST_START_PENDING, align 4
  %14 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %15 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %21 = call i32 @sas_drain_work(%struct.sas_ha_struct* %20)
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sas_drain_work(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
