; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_ldev_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_ldev_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i16, i32, i32, i32 }
%struct.myrb_hba = type { %struct.myrb_ldev_info* }
%struct.myrb_ldev_info = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"slave alloc ldev %d state %x\0A\00", align 1
@RAID_LEVEL_LINEAR = common dso_local global i32 0, align 4
@RAID_LEVEL_1 = common dso_local global i32 0, align 4
@RAID_LEVEL_3 = common dso_local global i32 0, align 4
@RAID_LEVEL_5 = common dso_local global i32 0, align 4
@RAID_LEVEL_6 = common dso_local global i32 0, align 4
@RAID_LEVEL_JBOD = common dso_local global i32 0, align 4
@RAID_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@myrb_raid_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @myrb_ldev_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrb_ldev_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrb_hba*, align 8
  %5 = alloca %struct.myrb_ldev_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.myrb_hba* @shost_priv(i32 %10)
  store %struct.myrb_hba* %11, %struct.myrb_hba** %4, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 4
  store i16 %14, i16* %6, align 2
  %15 = load %struct.myrb_hba*, %struct.myrb_hba** %4, align 8
  %16 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %15, i32 0, i32 0
  %17 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %16, align 8
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %17, i64 %20
  store %struct.myrb_ldev_info* %21, %struct.myrb_ldev_info** %5, align 8
  %22 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %23 = icmp ne %struct.myrb_ldev_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kzalloc(i32 8, i32 %28)
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %75

39:                                               ; preds = %27
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 1
  %42 = load i16, i16* %6, align 2
  %43 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %44 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i16 zeroext %42, i32 %45)
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %51 = call i32 @memcpy(i32 %49, %struct.myrb_ldev_info* %50, i32 8)
  %52 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %5, align 8
  %53 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %67 [
    i32 132, label %55
    i32 131, label %57
    i32 130, label %59
    i32 129, label %61
    i32 128, label %63
    i32 133, label %65
  ]

55:                                               ; preds = %39
  %56 = load i32, i32* @RAID_LEVEL_LINEAR, align 4
  store i32 %56, i32* %7, align 4
  br label %69

57:                                               ; preds = %39
  %58 = load i32, i32* @RAID_LEVEL_1, align 4
  store i32 %58, i32* %7, align 4
  br label %69

59:                                               ; preds = %39
  %60 = load i32, i32* @RAID_LEVEL_3, align 4
  store i32 %60, i32* %7, align 4
  br label %69

61:                                               ; preds = %39
  %62 = load i32, i32* @RAID_LEVEL_5, align 4
  store i32 %62, i32* %7, align 4
  br label %69

63:                                               ; preds = %39
  %64 = load i32, i32* @RAID_LEVEL_6, align 4
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %39
  %66 = load i32, i32* @RAID_LEVEL_JBOD, align 4
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %39
  %68 = load i32, i32* @RAID_LEVEL_UNKNOWN, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65, %63, %61, %59, %57, %55
  %70 = load i32, i32* @myrb_raid_template, align 4
  %71 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 1
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @raid_set_level(i32 %70, i32* %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %36, %24
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @memcpy(i32, %struct.myrb_ldev_info*, i32) #1

declare dso_local i32 @raid_set_level(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
