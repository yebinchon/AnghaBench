; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_6__, %struct.asd_sas_phy** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.asd_sas_phy = type { i32 }
%struct.sas_internal = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }
%struct.sas_rphy = type { i32 }
%struct.domain_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PHY_FUNC_HARD_RESET = common dso_local global i32 0, align 4
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_phy_reset(%struct.sas_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca %struct.asd_sas_phy*, align 8
  %11 = alloca %struct.sas_internal*, align 8
  %12 = alloca %struct.sas_rphy*, align 8
  %13 = alloca %struct.domain_device*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %15 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @PHY_FUNC_HARD_RESET, align 4
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %30 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %34 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.Scsi_Host* @dev_to_shost(i32 %36)
  store %struct.Scsi_Host* %37, %struct.Scsi_Host** %8, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %39 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %38)
  store %struct.sas_ha_struct* %39, %struct.sas_ha_struct** %9, align 8
  %40 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %41 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %40, i32 0, i32 1
  %42 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %41, align 8
  %43 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %44 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %42, i64 %45
  %47 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %46, align 8
  store %struct.asd_sas_phy* %47, %struct.asd_sas_phy** %10, align 8
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %49 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.sas_internal* @to_sas_internal(i32 %53)
  store %struct.sas_internal* %54, %struct.sas_internal** %11, align 8
  %55 = load %struct.sas_internal*, %struct.sas_internal** %11, align 8
  %56 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %58, align 8
  %60 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %59(%struct.asd_sas_phy* %60, i32 %61, i32* null)
  store i32 %62, i32* %6, align 4
  br label %77

63:                                               ; preds = %28
  %64 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %65 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.sas_rphy* @dev_to_rphy(i32 %67)
  store %struct.sas_rphy* %68, %struct.sas_rphy** %12, align 8
  %69 = load %struct.sas_rphy*, %struct.sas_rphy** %12, align 8
  %70 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %69)
  store %struct.domain_device* %70, %struct.domain_device** %13, align 8
  %71 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %72 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %73 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @sas_smp_phy_control(%struct.domain_device* %71, i64 %74, i32 %75, i32* null)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %63, %32
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
