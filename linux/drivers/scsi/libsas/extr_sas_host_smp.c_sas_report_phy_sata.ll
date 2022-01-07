; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_report_phy_sata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_report_phy_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, %struct.sas_rphy* }
%struct.sas_rphy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dev_to_host_fis = type { i32 }

@SMP_RESP_NO_PHY = common dso_local global i64 0, align 8
@SMP_RESP_PHY_NO_SATA = common dso_local global i64 0, align 8
@SAS_PROTOCOL_SATA = common dso_local global i64 0, align 8
@SMP_RESP_FUNC_ACC = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_ha_struct*, i64*, i64)* @sas_report_phy_sata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_report_phy_sata(%struct.sas_ha_struct* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sas_rphy*, align 8
  %8 = alloca %struct.dev_to_host_fis*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* @SMP_RESP_NO_PHY, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 %18, i64* %20, align 8
  br label %140

21:                                               ; preds = %3
  %22 = load i64, i64* @SMP_RESP_PHY_NO_SATA, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %26 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %140

35:                                               ; preds = %21
  %36 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %37 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.sas_rphy*, %struct.sas_rphy** %46, align 8
  store %struct.sas_rphy* %47, %struct.sas_rphy** %7, align 8
  %48 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %49 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast i64* %59 to %struct.dev_to_host_fis*
  store %struct.dev_to_host_fis* %60, %struct.dev_to_host_fis** %8, align 8
  %61 = load %struct.sas_rphy*, %struct.sas_rphy** %7, align 8
  %62 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SAS_PROTOCOL_SATA, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %35
  br label %140

68:                                               ; preds = %35
  %69 = load i64, i64* @SMP_RESP_FUNC_ACC, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64*, i64** %5, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 9
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 16
  %77 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %78 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %86 = call i32 @memcpy(i64* %76, i32 %84, i32 %85)
  %87 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %8, align 8
  %88 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 52
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %140

92:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %137, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 20
  br i1 %95, label %96, label %140

96:                                               ; preds = %93
  %97 = load i64*, i64** %5, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 24
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64* %101, i64** %10, align 8
  %102 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %103 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64* %116, i64** %11, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %10, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 %119, i64* %121, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  store i64 %124, i64* %126, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  store i64 %129, i64* %131, align 8
  %132 = load i64*, i64** %11, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 3
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %96
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 4
  store i32 %139, i32* %9, align 4
  br label %93

140:                                              ; preds = %17, %34, %67, %91, %93
  ret void
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
