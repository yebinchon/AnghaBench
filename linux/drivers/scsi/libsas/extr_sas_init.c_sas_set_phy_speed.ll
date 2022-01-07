; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_set_phy_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_set_phy_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i64, i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sas_phy_linkrates = type { i64, i64 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_6__, %struct.asd_sas_phy** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.asd_sas_phy = type { i32 }
%struct.sas_internal = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.asd_sas_phy*, i32, %struct.sas_phy_linkrates*)* }
%struct.sas_rphy = type { i32 }
%struct.domain_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PHY_FUNC_SET_LINK_RATE = common dso_local global i32 0, align 4
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_set_phy_speed(%struct.sas_phy* %0, %struct.sas_phy_linkrates* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_phy*, align 8
  %5 = alloca %struct.sas_phy_linkrates*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.asd_sas_phy*, align 8
  %10 = alloca %struct.sas_internal*, align 8
  %11 = alloca %struct.sas_rphy*, align 8
  %12 = alloca %struct.domain_device*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %4, align 8
  store %struct.sas_phy_linkrates* %1, %struct.sas_phy_linkrates** %5, align 8
  %13 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %14 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %19 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %22 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %27 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %32 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %35 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %17
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %132

41:                                               ; preds = %30, %25
  %42 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %43 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %48 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %51 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %56 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %59 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46, %41
  %61 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %62 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %67 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %70 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %75 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %78 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %65, %60
  %80 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %81 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %85 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.Scsi_Host* @dev_to_shost(i32 %87)
  store %struct.Scsi_Host* %88, %struct.Scsi_Host** %7, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %90 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %89)
  store %struct.sas_ha_struct* %90, %struct.sas_ha_struct** %8, align 8
  %91 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %92 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %91, i32 0, i32 1
  %93 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %92, align 8
  %94 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %95 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %93, i64 %96
  %98 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %97, align 8
  store %struct.asd_sas_phy* %98, %struct.asd_sas_phy** %9, align 8
  %99 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %100 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.sas_internal* @to_sas_internal(i32 %104)
  store %struct.sas_internal* %105, %struct.sas_internal** %10, align 8
  %106 = load %struct.sas_internal*, %struct.sas_internal** %10, align 8
  %107 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32 (%struct.asd_sas_phy*, i32, %struct.sas_phy_linkrates*)*, i32 (%struct.asd_sas_phy*, i32, %struct.sas_phy_linkrates*)** %109, align 8
  %111 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %112 = load i32, i32* @PHY_FUNC_SET_LINK_RATE, align 4
  %113 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %114 = call i32 %110(%struct.asd_sas_phy* %111, i32 %112, %struct.sas_phy_linkrates* %113)
  store i32 %114, i32* %6, align 4
  br label %130

115:                                              ; preds = %79
  %116 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %117 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.sas_rphy* @dev_to_rphy(i32 %119)
  store %struct.sas_rphy* %120, %struct.sas_rphy** %11, align 8
  %121 = load %struct.sas_rphy*, %struct.sas_rphy** %11, align 8
  %122 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %121)
  store %struct.domain_device* %122, %struct.domain_device** %12, align 8
  %123 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %124 = load %struct.sas_phy*, %struct.sas_phy** %4, align 8
  %125 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  %128 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %5, align 8
  %129 = call i32 @sas_smp_phy_control(%struct.domain_device* %123, i64 %126, i32 %127, %struct.sas_phy_linkrates* %128)
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %115, %83
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %38
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i32 @sas_smp_phy_control(%struct.domain_device*, i64, i32, %struct.sas_phy_linkrates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
