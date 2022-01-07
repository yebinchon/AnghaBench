; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_assign_bus_target_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_assign_bus_target_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_scsi_dev = type { i32, i64, i32* }

@PQI_HBA_BUS = common dso_local global i32 0, align 4
@PQI_EXTERNAL_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@PQI_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@PQI_PHYSICAL_DEVICE_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_scsi_dev*)* @pqi_assign_bus_target_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_assign_bus_target_lun(%struct.pqi_scsi_dev* %0) #0 {
  %2 = alloca %struct.pqi_scsi_dev*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev** %2, align 8
  %8 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @get_unaligned_le32(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @pqi_is_hba_lunid(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %18 = load i32, i32* @PQI_HBA_BUS, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 16383
  %21 = call i32 @pqi_set_bus_target_lun(%struct.pqi_scsi_dev* %17, i32 %18, i32 0, i32 %20)
  %22 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %26 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @PQI_EXTERNAL_RAID_VOLUME_BUS, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 16383
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @PQI_RAID_VOLUME_BUS, align 4
  store i32 %41, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 16383
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pqi_set_bus_target_lun(%struct.pqi_scsi_dev* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %51 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %56

52:                                               ; preds = %24
  %53 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %2, align 8
  %54 = load i32, i32* @PQI_PHYSICAL_DEVICE_BUS, align 4
  %55 = call i32 @pqi_set_bus_target_lun(%struct.pqi_scsi_dev* %53, i32 %54, i32 0, i32 0)
  br label %56

56:                                               ; preds = %52, %44, %16
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i64 @pqi_is_hba_lunid(i32*) #1

declare dso_local i32 @pqi_set_bus_target_lun(%struct.pqi_scsi_dev*, i32, i32, i32) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
