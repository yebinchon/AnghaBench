; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, %struct.TYPE_8__, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.ata_device = type { i32, i32 }

@SAS_SATA_DEV = common dso_local global i64 0, align 8
@SAS_SATA_PM_PORT = common dso_local global i64 0, align 8
@SATA_TAG_ALLOC_MASK = common dso_local global i32 0, align 4
@NUM_SATA_TAGS = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_set_dmamode(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %13, align 8
  store %struct.asd_ha_struct* %14, %struct.asd_ha_struct** %3, align 8
  %15 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %16 = call %struct.ata_device* @sas_to_ata_dev(%struct.domain_device* %15)
  store %struct.ata_device* %16, %struct.ata_device** %4, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %21 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SAS_SATA_DEV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SAS_SATA_PM_PORT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26, %1
  %33 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ata_id_has_ncq(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ata_id_queue_depth(i32 %41)
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SATA_TAG_ALLOC_MASK, align 4
  %47 = load i64, i64* %6, align 8
  %48 = shl i64 1, %47
  %49 = sub i64 %48, 1
  %50 = call i32 @asd_ddbsite_write_dword(%struct.asd_ha_struct* %44, i32 %45, i32 %46, i64 %49)
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NUM_SATA_TAGS, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %51, i32 %52, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %43, %26
  %57 = load i64, i64* %6, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %61 = call i64 @asd_init_sata_tag_ddb(%struct.domain_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %65 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_lock_irqsave(i32 %69, i64 %70)
  %72 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %73 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %74 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %78 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %63, %59
  br label %86

86:                                               ; preds = %85, %56
  ret void
}

declare dso_local %struct.ata_device* @sas_to_ata_dev(%struct.domain_device*) #1

declare dso_local i64 @ata_id_has_ncq(i32) #1

declare dso_local i64 @ata_id_queue_depth(i32) #1

declare dso_local i32 @asd_ddbsite_write_dword(%struct.asd_ha_struct*, i32, i32, i64) #1

declare dso_local i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct*, i32, i32, i64) #1

declare dso_local i64 @asd_init_sata_tag_ddb(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
