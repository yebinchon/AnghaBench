; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_get_bay_identifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_get_bay_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32 }
%struct.Scsi_Host = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_rphy*)* @pqi_sas_get_bay_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_sas_get_bay_identifier(%struct.sas_rphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca %struct.pqi_scsi_dev*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.sas_rphy* %0, %struct.sas_rphy** %3, align 8
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %10 = icmp ne %struct.sas_rphy* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %16 = call %struct.Scsi_Host* @rphy_to_shost(%struct.sas_rphy* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = call %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host* %17)
  store %struct.pqi_ctrl_info* %18, %struct.pqi_ctrl_info** %6, align 8
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %20 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %24 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %25 = call %struct.pqi_scsi_dev* @pqi_find_device_by_sas_rphy(%struct.pqi_ctrl_info* %23, %struct.sas_rphy* %24)
  store %struct.pqi_scsi_dev* %25, %struct.pqi_scsi_dev** %7, align 8
  %26 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %27 = icmp ne %struct.pqi_scsi_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %14
  %32 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %33 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %7, align 8
  %41 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %46 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.Scsi_Host* @rphy_to_shost(%struct.sas_rphy*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pqi_scsi_dev* @pqi_find_device_by_sas_rphy(%struct.pqi_ctrl_info*, %struct.sas_rphy*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
