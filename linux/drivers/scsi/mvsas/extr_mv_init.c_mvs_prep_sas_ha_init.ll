; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_prep_sas_ha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_prep_sas_ha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32 }
%struct.mvs_chip_info = type { i16, i16 }
%struct.asd_sas_phy = type opaque
%struct.asd_sas_port = type { i32 }
%struct.sas_ha_struct = type { i64, %struct.TYPE_2__, %struct.asd_sas_port**, %struct.asd_sas_port** }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.mvs_prv_info = type { i16 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mvs_stt = common dso_local global i32 0, align 4
@MVS_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.mvs_chip_info*)* @mvs_prep_sas_ha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_prep_sas_ha_init(%struct.Scsi_Host* %0, %struct.mvs_chip_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.mvs_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.asd_sas_phy**, align 8
  %10 = alloca %struct.asd_sas_port**, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.mvs_chip_info* %1, %struct.mvs_chip_info** %5, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %12)
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %11, align 8
  %14 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %5, align 8
  %15 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %8, align 2
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  %19 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %5, align 8
  %20 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = mul nsw i32 %18, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %26 = call i32 @memset(%struct.sas_ha_struct* %25, i32 0, i32 32)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.asd_sas_port** @kcalloc(i32 %27, i32 8, i32 %28)
  %30 = bitcast %struct.asd_sas_port** %29 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %30, %struct.asd_sas_phy*** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.asd_sas_port** @kcalloc(i32 %31, i32 8, i32 %32)
  store %struct.asd_sas_port** %33, %struct.asd_sas_port*** %10, align 8
  %34 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %35 = icmp ne %struct.asd_sas_phy** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %38 = icmp ne %struct.asd_sas_port** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %2
  br label %80

40:                                               ; preds = %36
  %41 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %42 = bitcast %struct.asd_sas_phy** %41 to %struct.asd_sas_port**
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %44 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %43, i32 0, i32 3
  store %struct.asd_sas_port** %42, %struct.asd_sas_port*** %44, align 8
  %45 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %46 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %47 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %46, i32 0, i32 2
  store %struct.asd_sas_port** %45, %struct.asd_sas_port*** %47, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %50 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.Scsi_Host* %48, %struct.Scsi_Host** %51, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i64 @kzalloc(i32 2, i32 %52)
  %54 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %55 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %57 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %40
  br label %80

61:                                               ; preds = %40
  %62 = load i16, i16* %8, align 2
  %63 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %64 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.mvs_prv_info*
  %67 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %66, i32 0, i32 0
  store i16 %62, i16* %67, align 2
  %68 = load i32, i32* @mvs_stt, align 4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @MVS_MAX_DEVICES, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 2
  store i32 -1, i32* %75, align 4
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 1
  store i32 16, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %86

80:                                               ; preds = %60, %39
  %81 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %82 = bitcast %struct.asd_sas_phy** %81 to %struct.asd_sas_port**
  %83 = call i32 @kfree(%struct.asd_sas_port** %82)
  %84 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %85 = call i32 @kfree(%struct.asd_sas_port** %84)
  store i32 -1, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %61
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.sas_ha_struct*, i32, i32) #1

declare dso_local %struct.asd_sas_port** @kcalloc(i32, i32, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.asd_sas_port**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
