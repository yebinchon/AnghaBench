; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_bytes_dmaed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_bytes_dmaed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_3__*, %struct.sas_ha_struct, %struct.hisi_sas_phy* }
%struct.TYPE_3__ = type { i32 (...)* }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)* }
%struct.asd_sas_phy = type opaque
%struct.asd_sas_phy.0 = type opaque
%struct.hisi_sas_phy = type { i64, i64, i32, i32, %struct.TYPE_4__, i64, i32, %struct.asd_sas_phy.1 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.asd_sas_phy.1 = type { i32, i32, %struct.sas_phy* }
%struct.sas_phy = type { i64, i64, i32, i32, i32 }
%struct.sas_identify_frame = type { i32, i32, i32 }

@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@PORTE_BYTES_DMAED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @hisi_sas_bytes_dmaed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_bytes_dmaed(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_phy.1*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca %struct.sas_phy*, align 8
  %9 = alloca %struct.sas_identify_frame*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 2
  %12 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %12, i64 %14
  store %struct.hisi_sas_phy* %15, %struct.hisi_sas_phy** %5, align 8
  %16 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %16, i32 0, i32 7
  store %struct.asd_sas_phy.1* %17, %struct.asd_sas_phy.1** %6, align 8
  %18 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %130

23:                                               ; preds = %2
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 1
  store %struct.sas_ha_struct* %25, %struct.sas_ha_struct** %7, align 8
  %26 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %27 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %26, i32 0, i32 1
  %28 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %27, align 8
  %29 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %30 = bitcast %struct.asd_sas_phy.1* %29 to %struct.asd_sas_phy.0*
  %31 = load i32, i32* @PHYE_OOB_DONE, align 4
  %32 = call i32 %28(%struct.asd_sas_phy.0* %30, i32 %31)
  %33 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %34 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %33, i32 0, i32 2
  %35 = load %struct.sas_phy*, %struct.sas_phy** %34, align 8
  %36 = icmp ne %struct.sas_phy* %35, null
  br i1 %36, label %37, label %81

37:                                               ; preds = %23
  %38 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %39 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %38, i32 0, i32 2
  %40 = load %struct.sas_phy*, %struct.sas_phy** %39, align 8
  store %struct.sas_phy* %40, %struct.sas_phy** %8, align 8
  %41 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %42 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %45 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %47 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %48 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  %55 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %56 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %58 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %37
  %63 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %64 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %67 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %37
  %69 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %70 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SAS_LINK_RATE_UNKNOWN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %79 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %68
  br label %81

81:                                               ; preds = %80, %23
  %82 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %83 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PORT_TYPE_SAS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %90 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %92, %struct.sas_identify_frame** %9, align 8
  %93 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %94 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %98 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %100 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %101 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %103 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %107 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %117

108:                                              ; preds = %81
  %109 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %110 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PORT_TYPE_SATA, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %108
  br label %117

117:                                              ; preds = %116, %88
  %118 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %119 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %122 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %124 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %123, i32 0, i32 0
  %125 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %124, align 8
  %126 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %127 = bitcast %struct.asd_sas_phy.1* %126 to %struct.asd_sas_phy*
  %128 = load i32, i32* @PORTE_BYTES_DMAED, align 4
  %129 = call i32 %125(%struct.asd_sas_phy* %127, i32 %128)
  br label %130

130:                                              ; preds = %117, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
