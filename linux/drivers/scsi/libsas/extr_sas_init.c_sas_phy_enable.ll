; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i64, %struct.TYPE_8__ }
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

@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@PHY_FUNC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_phy*, i32)* @sas_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_phy_enable(%struct.sas_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.asd_sas_phy*, align 8
  %10 = alloca %struct.sas_internal*, align 8
  %11 = alloca %struct.sas_rphy*, align 8
  %12 = alloca %struct.domain_device*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  store i32 %16, i32* %6, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PHY_FUNC_DISABLE, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %21 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %25 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.Scsi_Host* @dev_to_shost(i32 %27)
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %7, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %30 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %29)
  store %struct.sas_ha_struct* %30, %struct.sas_ha_struct** %8, align 8
  %31 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %32 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %31, i32 0, i32 1
  %33 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %32, align 8
  %34 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %35 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %33, i64 %36
  %38 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %37, align 8
  store %struct.asd_sas_phy* %38, %struct.asd_sas_phy** %9, align 8
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %40 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.sas_internal* @to_sas_internal(i32 %44)
  store %struct.sas_internal* %45, %struct.sas_internal** %10, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %50 = call i32 @transport_sas_phy_reset(%struct.sas_phy* %49, i32 0)
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %23
  %52 = load %struct.sas_internal*, %struct.sas_internal** %10, align 8
  %53 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %55, align 8
  %57 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %56(%struct.asd_sas_phy* %57, i32 %58, i32* null)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %48
  br label %82

61:                                               ; preds = %19
  %62 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %63 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.sas_rphy* @dev_to_rphy(i32 %65)
  store %struct.sas_rphy* %66, %struct.sas_rphy** %11, align 8
  %67 = load %struct.sas_rphy*, %struct.sas_rphy** %11, align 8
  %68 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %67)
  store %struct.domain_device* %68, %struct.domain_device** %12, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %73 = call i32 @transport_sas_phy_reset(%struct.sas_phy* %72, i32 0)
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %61
  %75 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %76 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %77 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @sas_smp_phy_control(%struct.domain_device* %75, i64 %78, i32 %79, i32* null)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @transport_sas_phy_reset(%struct.sas_phy*, i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
