; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 (%struct.mvs_info*)* }
%struct.mvs_info = type { i64, i32, i8*, %struct.Scsi_Host*, %struct.sas_ha_struct*, %struct.TYPE_3__*, i32, i32*, %struct.pci_dev* }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { i64 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.mvs_prv_info = type { i32, %struct.mvs_info** }

@mvs_chips = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MVS_CHIP_SLOT_SZ = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvs_info* (%struct.pci_dev*, %struct.pci_device_id*, %struct.Scsi_Host*, i32)* @mvs_pci_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvs_info* @mvs_pci_alloc(%struct.pci_dev* %0, %struct.pci_device_id* %1, %struct.Scsi_Host* %2, i32 %3) #0 {
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_device_id*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvs_info*, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %7, align 8
  store %struct.Scsi_Host* %2, %struct.Scsi_Host** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mvs_info* null, %struct.mvs_info** %10, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %13 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %12)
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mvs_chips, align 8
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %7, align 8
  %16 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 1, %20
  %22 = mul i64 %21, 4
  %23 = add i64 72, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.mvs_info*
  store %struct.mvs_info* %27, %struct.mvs_info** %10, align 8
  %28 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %29 = icmp ne %struct.mvs_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store %struct.mvs_info* null, %struct.mvs_info** %5, align 8
  br label %113

31:                                               ; preds = %4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %34 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %33, i32 0, i32 8
  store %struct.pci_dev* %32, %struct.pci_dev** %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %38 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %37, i32 0, i32 7
  store i32* %36, i32** %38, align 8
  %39 = load %struct.pci_device_id*, %struct.pci_device_id** %7, align 8
  %40 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %43 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mvs_chips, align 8
  %45 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %46 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %50 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %49, i32 0, i32 5
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %52 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %51, i32 0, i32 6
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %55 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %56 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.mvs_prv_info*
  %59 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %58, i32 0, i32 1
  %60 = load %struct.mvs_info**, %struct.mvs_info*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %60, i64 %62
  store %struct.mvs_info* %54, %struct.mvs_info** %63, align 8
  %64 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %65 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %70 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.mvs_prv_info*
  %73 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %76 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %78 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %79 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %78, i32 0, i32 4
  store %struct.sas_ha_struct* %77, %struct.sas_ha_struct** %79, align 8
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %81 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %82 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %81, i32 0, i32 3
  store %struct.Scsi_Host* %80, %struct.Scsi_Host** %82, align 8
  %83 = load i32, i32* @MVS_CHIP_SLOT_SZ, align 4
  %84 = ashr i32 %83, 3
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kzalloc(i32 %84, i32 %85)
  %87 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %88 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %90 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %31
  br label %110

94:                                               ; preds = %31
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64 (%struct.mvs_info*)*, i64 (%struct.mvs_info*)** %96, align 8
  %98 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %99 = call i64 %97(%struct.mvs_info* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %110

102:                                              ; preds = %94
  %103 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %105 = call i32 @mvs_alloc(%struct.mvs_info* %103, %struct.Scsi_Host* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  store %struct.mvs_info* %108, %struct.mvs_info** %5, align 8
  br label %113

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %101, %93
  %111 = load %struct.mvs_info*, %struct.mvs_info** %10, align 8
  %112 = call i32 @mvs_free(%struct.mvs_info* %111)
  store %struct.mvs_info* null, %struct.mvs_info** %5, align 8
  br label %113

113:                                              ; preds = %110, %107, %30
  %114 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  ret %struct.mvs_info* %114
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mvs_alloc(%struct.mvs_info*, %struct.Scsi_Host*) #1

declare dso_local i32 @mvs_free(%struct.mvs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
