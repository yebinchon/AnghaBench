; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_rescan_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_rescan_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.hisi_sas_phy*, %struct.sas_ha_struct }
%struct.hisi_sas_phy = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { %struct.TYPE_2__*, %struct.asd_sas_port* }
%struct.TYPE_2__ = type { i32 }
%struct.asd_sas_port = type { %struct.domain_device* }
%struct.domain_device = type { i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)* }
%struct.asd_sas_phy.0 = type opaque

@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @hisi_sas_rescan_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_rescan_topology(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_sas_phy*, align 8
  %9 = alloca %struct.asd_sas_phy*, align 8
  %10 = alloca %struct.asd_sas_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.domain_device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 2
  store %struct.sas_ha_struct* %14, %struct.sas_ha_struct** %5, align 8
  store %struct.asd_sas_port* null, %struct.asd_sas_port** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %88, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %15
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 1
  %24 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %24, i64 %26
  store %struct.hisi_sas_phy* %27, %struct.hisi_sas_phy** %8, align 8
  %28 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %8, align 8
  %29 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %28, i32 0, i32 0
  store %struct.asd_sas_phy* %29, %struct.asd_sas_phy** %9, align 8
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %31 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %30, i32 0, i32 1
  %32 = load %struct.asd_sas_port*, %struct.asd_sas_port** %31, align 8
  store %struct.asd_sas_port* %32, %struct.asd_sas_port** %10, align 8
  %33 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %34 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %35 = icmp ne %struct.asd_sas_port* %33, %34
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %40 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %21
  br label %88

46:                                               ; preds = %21
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %57 = icmp ne %struct.asd_sas_port* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %60 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %59, i32 0, i32 0
  %61 = load %struct.domain_device*, %struct.domain_device** %60, align 8
  %62 = icmp ne %struct.domain_device* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %65 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %64, i32 0, i32 0
  %66 = load %struct.domain_device*, %struct.domain_device** %65, align 8
  store %struct.domain_device* %66, %struct.domain_device** %12, align 8
  %67 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  store %struct.asd_sas_port* %67, %struct.asd_sas_port** %6, align 8
  %68 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  %69 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @dev_is_expander(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %75 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %74, i32 0, i32 0
  %76 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %75, align 8
  %77 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %9, align 8
  %78 = bitcast %struct.asd_sas_phy* %77 to %struct.asd_sas_phy.0*
  %79 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %80 = call i32 %76(%struct.asd_sas_phy.0* %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %81, %58, %55, %52
  br label %87

83:                                               ; preds = %46
  %84 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @hisi_sas_phy_down(%struct.hisi_hba* %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %83, %82
  br label %88

88:                                               ; preds = %87, %45
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %15

91:                                               ; preds = %15
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @hisi_sas_phy_down(%struct.hisi_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
