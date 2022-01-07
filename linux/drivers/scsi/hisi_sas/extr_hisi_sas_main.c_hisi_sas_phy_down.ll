; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__*, i32, %struct.device*, %struct.sas_ha_struct, %struct.hisi_sas_phy* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32)* }
%struct.device = type { i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)* }
%struct.asd_sas_phy = type opaque
%struct.hisi_sas_phy = type { i32, i64, %struct.hisi_sas_port*, %struct.asd_sas_phy.0 }
%struct.hisi_sas_port = type { i32, i64 }
%struct.asd_sas_phy.0 = type { i32 }

@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ignore flutter phy%d down\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_phy_down(%struct.hisi_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_sas_phy*, align 8
  %8 = alloca %struct.asd_sas_phy.0*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.hisi_sas_port*, align 8
  %12 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 4
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i64 %17
  store %struct.hisi_sas_phy* %18, %struct.hisi_sas_phy** %7, align 8
  %19 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %19, i32 0, i32 3
  store %struct.asd_sas_phy.0* %20, %struct.asd_sas_phy.0** %8, align 8
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 3
  store %struct.sas_ha_struct* %22, %struct.sas_ha_struct** %9, align 8
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 2
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hisi_sas_bytes_dmaed(%struct.hisi_hba* %29, i32 %30)
  %32 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %8, align 8
  %33 = call i32 @hisi_sas_port_notify_formed(%struct.asd_sas_phy.0* %32)
  br label %103

34:                                               ; preds = %3
  %35 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %36 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %35, i32 0, i32 2
  %37 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %36, align 8
  store %struct.hisi_sas_port* %37, %struct.hisi_sas_port** %11, align 8
  %38 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %40 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %45 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %34
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_info(%struct.device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %103

52:                                               ; preds = %43
  %53 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %54 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %53, i32 0, i32 0
  %55 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %54, align 8
  %56 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %8, align 8
  %57 = bitcast %struct.asd_sas_phy.0* %56 to %struct.asd_sas_phy*
  %58 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %59 = call i32 %55(%struct.asd_sas_phy* %57, i32 %58)
  %60 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %8, align 8
  %61 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy.0* %60)
  %62 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %63 = icmp ne %struct.hisi_sas_port* %62, null
  br i1 %63, label %64, label %100

64:                                               ; preds = %52
  %65 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %66 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PORT_TYPE_SAS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %73 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %12, align 4
  %75 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %76 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.hisi_hba*, i32)*, i32 (%struct.hisi_hba*, i32)** %78, align 8
  %80 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 %79(%struct.hisi_hba* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %71
  %85 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %86 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %71
  br label %99

88:                                               ; preds = %64
  %89 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %90 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PORT_TYPE_SATA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %97 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %52
  %101 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %7, align 8
  %102 = call i32 @hisi_sas_phy_disconnected(%struct.hisi_sas_phy* %101)
  br label %103

103:                                              ; preds = %48, %100, %28
  ret void
}

declare dso_local i32 @hisi_sas_bytes_dmaed(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_port_notify_formed(%struct.asd_sas_phy.0*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @sas_phy_disconnected(%struct.asd_sas_phy.0*) #1

declare dso_local i32 @hisi_sas_phy_disconnected(%struct.hisi_sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
