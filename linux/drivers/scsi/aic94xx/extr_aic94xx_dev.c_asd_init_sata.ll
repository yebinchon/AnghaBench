; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.dev_to_host_fis = type { i32 }

@ATA_CMD_SCBPTR = common dso_local global i32 0, align 4
@SAS_SATA_DEV = common dso_local global i64 0, align 8
@SAS_SATA_PM = common dso_local global i64 0, align 8
@SAS_SATA_PM_PORT = common dso_local global i64 0, align 8
@SATA_STATUS = common dso_local global i32 0, align 4
@NCQ_DATA_SCB_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @asd_init_sata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_sata(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_to_host_fis*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %11, align 8
  store %struct.asd_ha_struct* %12, %struct.asd_ha_struct** %3, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ATA_CMD_SCBPTR, align 4
  %20 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %17, i32 %18, i32 %19, i32 65535)
  %21 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SAS_SATA_DEV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SAS_SATA_PM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SAS_SATA_PM_PORT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32, %26, %1
  %39 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %40 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.dev_to_host_fis*
  store %struct.dev_to_host_fis* %42, %struct.dev_to_host_fis** %5, align 8
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SATA_STATUS, align 4
  %46 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %5, align 8
  %47 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %43, i32 %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %32
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @NCQ_DATA_SCB_PTR, align 4
  %54 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %51, i32 %52, i32 %53, i32 65535)
  ret i32 0
}

declare dso_local i32 @asd_ddbsite_write_word(%struct.asd_ha_struct*, i32, i32, i32) #1

declare dso_local i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
