; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, i32, %struct.myrb_ldev_info* }
%struct.myrb_ldev_info = type { i32 }
%struct.myrb_hba = type { i32 }

@RAID_STATE_UNKNOWN = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@RAID_STATE_RESYNCING = common dso_local global i32 0, align 4
@RAID_STATE_ACTIVE = common dso_local global i32 0, align 4
@RAID_STATE_DEGRADED = common dso_local global i32 0, align 4
@RAID_STATE_OFFLINE = common dso_local global i32 0, align 4
@myrb_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @myrb_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_get_state(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.myrb_ldev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.scsi_device* @to_scsi_device(%struct.device* %8)
  store %struct.scsi_device* %9, %struct.scsi_device** %3, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.myrb_hba* @shost_priv(i32 %12)
  store %struct.myrb_hba* %13, %struct.myrb_hba** %4, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 2
  %16 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %15, align 8
  store %struct.myrb_ldev_info* %16, %struct.myrb_ldev_info** %5, align 8
  %17 = load i32, i32* @RAID_STATE_UNKNOWN, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @myrb_logical_channel(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %28 = icmp ne %struct.myrb_ldev_info* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* @RAID_STATE_UNKNOWN, align 4
  store i32 %30, i32* %6, align 4
  br label %53

31:                                               ; preds = %26
  %32 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %33 = call zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %32, i32* null)
  store i16 %33, i16* %7, align 2
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @RAID_STATE_RESYNCING, align 4
  store i32 %40, i32* %6, align 4
  br label %52

41:                                               ; preds = %31
  %42 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %43 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %49 [
    i32 129, label %45
    i32 128, label %47
    i32 130, label %47
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @RAID_STATE_ACTIVE, align 4
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %41, %41
  %48 = load i32, i32* @RAID_STATE_DEGRADED, align 4
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @RAID_STATE_OFFLINE, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47, %45
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* @myrb_raid_template, align 4
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @raid_set_state(i32 %54, %struct.device* %55, i32 %56)
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba*, i32*) #1

declare dso_local i32 @raid_set_state(i32, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
