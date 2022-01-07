; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.pqi_scsi_dev*, i32, i32 }
%struct.pqi_scsi_dev = type { i32, i64, i64, %struct.scsi_device*, i32, i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.scsi_target = type { i32 }
%struct.sas_rphy = type { i32 }

@PQI_PHYSICAL_DEVICE_BUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @pqi_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  %7 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %10)
  store %struct.pqi_ctrl_info* %11, %struct.pqi_ctrl_info** %5, align 8
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = call i64 @sdev_channel(%struct.scsi_device* %16)
  %18 = load i64, i64* @PQI_PHYSICAL_DEVICE_BUS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %21)
  store %struct.scsi_target* %22, %struct.scsi_target** %6, align 8
  %23 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %24 = call %struct.sas_rphy* @target_to_rphy(%struct.scsi_target* %23)
  store %struct.sas_rphy* %24, %struct.sas_rphy** %7, align 8
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %26 = load %struct.sas_rphy*, %struct.sas_rphy** %7, align 8
  %27 = call %struct.pqi_scsi_dev* @pqi_find_device_by_sas_rphy(%struct.pqi_ctrl_info* %25, %struct.sas_rphy* %26)
  store %struct.pqi_scsi_dev* %27, %struct.pqi_scsi_dev** %3, align 8
  %28 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %29 = icmp ne %struct.pqi_scsi_dev* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = call i32 @sdev_id(%struct.scsi_device* %31)
  %33 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %30, %20
  br label %53

43:                                               ; preds = %1
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %46 = call i64 @sdev_channel(%struct.scsi_device* %45)
  %47 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %48 = call i32 @sdev_id(%struct.scsi_device* %47)
  %49 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.pqi_scsi_dev* @pqi_find_scsi_dev(%struct.pqi_ctrl_info* %44, i64 %46, i32 %48, i32 %51)
  store %struct.pqi_scsi_dev* %52, %struct.pqi_scsi_dev** %3, align 8
  br label %53

53:                                               ; preds = %43, %42
  %54 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %55 = icmp ne %struct.pqi_scsi_dev* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %58 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 1
  store %struct.pqi_scsi_dev* %57, %struct.pqi_scsi_dev** %59, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %61 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %61, i32 0, i32 3
  store %struct.scsi_device* %60, %struct.scsi_device** %62, align 8
  %63 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %56
  %68 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %74 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %73, i64 %76)
  br label %78

78:                                               ; preds = %67, %56
  %79 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %80 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %84 = call i32 @pqi_disable_write_same(%struct.scsi_device* %83)
  br label %88

85:                                               ; preds = %78
  %86 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %53
  %90 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %91 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %90, i32 0, i32 0
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret i32 0
}

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sdev_channel(%struct.scsi_device*) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.sas_rphy* @target_to_rphy(%struct.scsi_target*) #1

declare dso_local %struct.pqi_scsi_dev* @pqi_find_device_by_sas_rphy(%struct.pqi_ctrl_info*, %struct.sas_rphy*) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local %struct.pqi_scsi_dev* @pqi_find_scsi_dev(%struct.pqi_ctrl_info*, i64, i32, i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i64) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_disable_write_same(%struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
