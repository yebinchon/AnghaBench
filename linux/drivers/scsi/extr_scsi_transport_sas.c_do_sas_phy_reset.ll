; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_do_sas_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_do_sas_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sas_phy = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sas_phy*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32)* @do_sas_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sas_phy_reset(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_phy*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.sas_internal*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.sas_phy* @transport_class_to_phy(%struct.device* %12)
  store %struct.sas_phy* %13, %struct.sas_phy** %8, align 8
  %14 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %15 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.Scsi_Host* @dev_to_shost(i32 %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %9, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sas_internal* @to_sas_internal(i32 %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %10, align 8
  %23 = load %struct.sas_internal*, %struct.sas_internal** %10, align 8
  %24 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sas_phy*, i32)*, i32 (%struct.sas_phy*, i32)** %26, align 8
  %28 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %27(%struct.sas_phy* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %3
  %36 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %37 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.sas_phy* @transport_class_to_phy(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
