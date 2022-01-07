; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_figure_bus_target_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_figure_bus_target_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i64, i32 }

@HPSA_HBA_BUS = common dso_local global i32 0, align 4
@HPSA_LEGACY_HBA_BUS = common dso_local global i32 0, align 4
@HPSA_PHYSICAL_DEVICE_BUS = common dso_local global i32 0, align 4
@HPSA_EXTERNAL_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@HPSA_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32*, %struct.hpsa_scsi_dev_t*)* @figure_bus_target_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @figure_bus_target_lun(%struct.ctlr_info* %0, i32* %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_unaligned_le32(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @is_logical_dev_addr_mode(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @is_hba_lunid(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32, i32* @HPSA_HBA_BUS, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %21 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @HPSA_LEGACY_HBA_BUS, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 16383
  %31 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %27, i32 %28, i32 0, i32 %30)
  br label %36

32:                                               ; preds = %14
  %33 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %34 = load i32, i32* @HPSA_PHYSICAL_DEVICE_BUS, align 4
  %35 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %33, i32 %34, i32 -1, i32 -1)
  br label %36

36:                                               ; preds = %32, %26
  br label %57

37:                                               ; preds = %3
  %38 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %39 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %44 = load i32, i32* @HPSA_EXTERNAL_RAID_VOLUME_BUS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 16383
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 255
  %50 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %43, i32 %44, i32 %47, i32 %49)
  br label %57

51:                                               ; preds = %37
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %53 = load i32, i32* @HPSA_RAID_VOLUME_BUS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 16383
  %56 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %52, i32 %53, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %51, %42, %36
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @is_logical_dev_addr_mode(i32*) #1

declare dso_local i64 @is_hba_lunid(i32*) #1

declare dso_local i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
