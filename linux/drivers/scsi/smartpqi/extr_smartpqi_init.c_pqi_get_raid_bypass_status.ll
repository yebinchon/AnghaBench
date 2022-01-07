; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_bypass_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_bypass_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@CISS_VPD_LV_BYPASS_STATUS = common dso_local global i32 0, align 4
@RAID_BYPASS_CONFIGURED = common dso_local global i32 0, align 4
@RAID_BYPASS_ENABLED = common dso_local global i32 0, align 4
@RAID_BYPASS_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_get_raid_bypass_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_get_raid_bypass_status(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kmalloc(i32 64, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VPD_PAGE, align 4
  %19 = load i32, i32* @CISS_VPD_LV_BYPASS_STATUS, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info* %14, i32 %17, i32 %20, i32* %21, i32 64)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %53

26:                                               ; preds = %13
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %46 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %47 = call i64 @pqi_get_raid_map(%struct.pqi_ctrl_info* %45, %struct.pqi_scsi_dev* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44, %40, %26
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @kfree(i32* %54)
  br label %56

56:                                               ; preds = %53, %12
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info*, i32, i32, i32*, i32) #1

declare dso_local i64 @pqi_get_raid_map(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
