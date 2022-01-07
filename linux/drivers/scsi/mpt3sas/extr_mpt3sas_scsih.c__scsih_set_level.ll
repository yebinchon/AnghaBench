; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_device = type { i32 }

@RAID_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@RAID_LEVEL_0 = common dso_local global i32 0, align 4
@RAID_LEVEL_10 = common dso_local global i32 0, align 4
@RAID_LEVEL_1E = common dso_local global i32 0, align 4
@RAID_LEVEL_1 = common dso_local global i32 0, align 4
@mpt2sas_raid_template = common dso_local global i32 0, align 4
@mpt3sas_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.scsi_device*, i32)* @_scsih_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_set_level(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @RAID_LEVEL_UNKNOWN, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %18 [
    i32 132, label %10
    i32 130, label %12
    i32 129, label %14
    i32 131, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @RAID_LEVEL_0, align 4
  store i32 %11, i32* %7, align 4
  br label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @RAID_LEVEL_10, align 4
  store i32 %13, i32* %7, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @RAID_LEVEL_1E, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @RAID_LEVEL_1, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %3, %16, %14, %12, %10
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %20 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 134, label %28
    i32 133, label %28
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @mpt2sas_raid_template, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @raid_set_level(i32 %23, i32* %25, i32 %26)
  br label %34

28:                                               ; preds = %18, %18
  %29 = load i32, i32* @mpt3sas_raid_template, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @raid_set_level(i32 %29, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %28, %22
  ret void
}

declare dso_local i32 @raid_set_level(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
