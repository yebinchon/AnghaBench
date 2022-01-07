; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_container = type { i32 }
%struct.device = type { i32 }
%struct.sas_phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sas_phy*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @sas_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_phy_setup(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.transport_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.sas_internal*, align 8
  store %struct.transport_container* %0, %struct.transport_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.sas_phy* @dev_to_phy(%struct.device* %10)
  store %struct.sas_phy* %11, %struct.sas_phy** %7, align 8
  %12 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %13 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.Scsi_Host* @dev_to_shost(i32 %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sas_internal* @to_sas_internal(i32 %19)
  store %struct.sas_internal* %20, %struct.sas_internal** %9, align 8
  %21 = load %struct.sas_internal*, %struct.sas_internal** %9, align 8
  %22 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sas_phy*)*, i32 (%struct.sas_phy*)** %24, align 8
  %26 = icmp ne i32 (%struct.sas_phy*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.sas_internal*, %struct.sas_internal** %9, align 8
  %29 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sas_phy*)*, i32 (%struct.sas_phy*)** %31, align 8
  %33 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %34 = call i32 %32(%struct.sas_phy* %33)
  br label %35

35:                                               ; preds = %27, %3
  ret i32 0
}

declare dso_local %struct.sas_phy* @dev_to_phy(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
