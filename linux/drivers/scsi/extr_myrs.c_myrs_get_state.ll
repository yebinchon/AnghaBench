; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_ldev_info*, i32 }
%struct.myrs_ldev_info = type { i32 }
%struct.myrs_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RAID_STATE_UNKNOWN = common dso_local global i32 0, align 4
@RAID_STATE_ACTIVE = common dso_local global i32 0, align 4
@RAID_STATE_DEGRADED = common dso_local global i32 0, align 4
@RAID_STATE_RESYNCING = common dso_local global i32 0, align 4
@RAID_STATE_OFFLINE = common dso_local global i32 0, align 4
@myrs_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @myrs_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_get_state(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca %struct.myrs_ldev_info*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.scsi_device* @to_scsi_device(%struct.device* %7)
  store %struct.scsi_device* %8, %struct.scsi_device** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.myrs_hba* @shost_priv(i32 %11)
  store %struct.myrs_hba* %12, %struct.myrs_hba** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 1
  %15 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %14, align 8
  store %struct.myrs_ldev_info* %15, %struct.myrs_ldev_info** %5, align 8
  %16 = load i32, i32* @RAID_STATE_UNKNOWN, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %21 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %28 = icmp ne %struct.myrs_ldev_info* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* @RAID_STATE_UNKNOWN, align 4
  store i32 %30, i32* %6, align 4
  br label %46

31:                                               ; preds = %26
  %32 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %33 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %43 [
    i32 131, label %35
    i32 129, label %37
    i32 133, label %37
    i32 130, label %39
    i32 128, label %41
    i32 132, label %41
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @RAID_STATE_ACTIVE, align 4
  store i32 %36, i32* %6, align 4
  br label %45

37:                                               ; preds = %31, %31
  %38 = load i32, i32* @RAID_STATE_DEGRADED, align 4
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @RAID_STATE_RESYNCING, align 4
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %31, %31
  %42 = load i32, i32* @RAID_STATE_UNKNOWN, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @RAID_STATE_OFFLINE, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* @myrs_raid_template, align 4
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @raid_set_state(i32 %47, %struct.device* %48, i32 %49)
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @raid_set_state(i32, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
