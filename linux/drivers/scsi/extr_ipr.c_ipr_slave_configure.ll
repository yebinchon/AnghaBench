; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i32, i32, %struct.ipr_resource_entry*, %struct.TYPE_4__* }
%struct.ipr_resource_entry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@TYPE_RAID = common dso_local global i32 0, align 4
@SCSI_SPC_3 = common dso_local global i32 0, align 4
@IPR_VSET_RW_TIMEOUT = common dso_local global i32 0, align 4
@IPR_VSET_MAX_SECTORS = common dso_local global i32 0, align 4
@IPR_MAX_CMD_PER_ATA_LUN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Resource path: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ipr_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_resource_entry*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %16, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.ata_port* null, %struct.ata_port** %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 5
  %30 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %29, align 8
  store %struct.ipr_resource_entry* %30, %struct.ipr_resource_entry** %5, align 8
  %31 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %32 = icmp ne %struct.ipr_resource_entry* %31, null
  br i1 %32, label %33, label %122

33:                                               ; preds = %1
  %34 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %35 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @TYPE_RAID, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %43 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %47 = call i64 @ipr_is_ioa_resource(%struct.ipr_resource_entry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %41
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %56 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32, i32* @SCSI_SPC_3, align 4
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IPR_VSET_RW_TIMEOUT, align 4
  %68 = call i32 @blk_queue_rq_timeout(i32 %66, i32 %67)
  %69 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IPR_VSET_MAX_SECTORS, align 4
  %73 = call i32 @blk_queue_max_hw_sectors(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %58, %54
  %75 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %76 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %80 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %85 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.ata_port*, %struct.ata_port** %87, align 8
  store %struct.ata_port* %88, %struct.ata_port** %6, align 8
  br label %89

89:                                               ; preds = %83, %78, %74
  %90 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %98 = icmp ne %struct.ata_port* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %101 = load i32, i32* @IPR_MAX_CMD_PER_ATA_LUN, align 4
  %102 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %100, i32 %101)
  %103 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %104 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %105 = call i32 @ata_sas_slave_configure(%struct.scsi_device* %103, %struct.ata_port* %104)
  br label %106

106:                                              ; preds = %99, %89
  %107 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %108 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i32, i32* @KERN_INFO, align 4
  %113 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %114 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %115 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %116 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = trunc i64 %18 to i32
  %119 = call i32 @ipr_format_res_path(%struct.ipr_ioa_cfg* %114, i32 %117, i8* %20, i32 %118)
  %120 = call i32 @sdev_printk(i32 %112, %struct.scsi_device* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %111, %106
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %130

122:                                              ; preds = %1
  %123 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %124 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32 %127, i64 %128)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %122, %121
  %131 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #2

declare dso_local i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry*) #2

declare dso_local i64 @ipr_is_ioa_resource(%struct.ipr_resource_entry*) #2

declare dso_local i64 @ipr_is_vset_device(%struct.ipr_resource_entry*) #2

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #2

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #2

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #2

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #2

declare dso_local i32 @ata_sas_slave_configure(%struct.scsi_device*, %struct.ata_port*) #2

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #2

declare dso_local i32 @ipr_format_res_path(%struct.ipr_ioa_cfg*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
