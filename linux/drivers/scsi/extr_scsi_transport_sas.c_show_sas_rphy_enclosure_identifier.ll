; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_show_sas_rphy_enclosure_identifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_show_sas_rphy_enclosure_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sas_rphy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sas_phy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sas_rphy*, i64*)* }

@.str = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_sas_rphy_enclosure_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_sas_rphy_enclosure_identifier(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  %9 = alloca %struct.sas_phy*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.sas_internal*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.sas_rphy* @transport_class_to_rphy(%struct.device* %14)
  store %struct.sas_rphy* %15, %struct.sas_rphy** %8, align 8
  %16 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %17 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sas_phy* @dev_to_phy(i32 %19)
  store %struct.sas_phy* %20, %struct.sas_phy** %9, align 8
  %21 = load %struct.sas_phy*, %struct.sas_phy** %9, align 8
  %22 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.Scsi_Host* @dev_to_shost(i32 %24)
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %10, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sas_internal* @to_sas_internal(i32 %28)
  store %struct.sas_internal* %29, %struct.sas_internal** %11, align 8
  %30 = load %struct.sas_internal*, %struct.sas_internal** %11, align 8
  %31 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.sas_rphy*, i64*)*, i32 (%struct.sas_rphy*, i64*)** %33, align 8
  %35 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %36 = call i32 %34(%struct.sas_rphy* %35, i64* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.sas_rphy* @transport_class_to_rphy(%struct.device*) #1

declare dso_local %struct.sas_phy* @dev_to_phy(i32) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
