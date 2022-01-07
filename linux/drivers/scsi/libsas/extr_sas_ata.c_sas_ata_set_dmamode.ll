; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.domain_device* }
%struct.domain_device = type { i32 }
%struct.ata_device = type { i32 }
%struct.sas_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.domain_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sas_ata_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_ata_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.sas_internal*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  store %struct.domain_device* %9, %struct.domain_device** %5, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %11 = call %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device* %10)
  store %struct.sas_internal* %11, %struct.sas_internal** %6, align 8
  %12 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %13 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.domain_device*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %20 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %22, align 8
  %24 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %25 = call i32 %23(%struct.domain_device* %24)
  br label %26

26:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
