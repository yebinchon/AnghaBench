; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i64, i32 }

@SA_RAID_UNKNOWN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@CISS_VPD_LV_DEVICE_GEOMETRY = common dso_local global i32 0, align 4
@SA_RAID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_get_raid_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_get_raid_level(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %8 = load i64, i64* @SA_RAID_UNKNOWN, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64* @kmalloc(i32 64, i32 %9)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VPD_PAGE, align 4
  %19 = load i32, i32* @CISS_VPD_LV_DEVICE_GEOMETRY, align 4
  %20 = or i32 %18, %19
  %21 = load i64*, i64** %7, align 8
  %22 = call i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info* %14, i32 %17, i32 %20, i64* %21, i32 64)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SA_RAID_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @SA_RAID_UNKNOWN, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @kfree(i64* %36)
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  ret void
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info*, i32, i32, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
