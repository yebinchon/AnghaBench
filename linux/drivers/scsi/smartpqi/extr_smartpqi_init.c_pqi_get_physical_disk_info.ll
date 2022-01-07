; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_physical_disk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_physical_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bmic_identify_physical_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@PQI_PHYSICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.bmic_identify_physical_device*)* @pqi_get_physical_disk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_get_physical_disk_info(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1, %struct.bmic_identify_physical_device* %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca %struct.bmic_identify_physical_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  store %struct.bmic_identify_physical_device* %2, %struct.bmic_identify_physical_device** %6, align 8
  %8 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %9 = call i32 @memset(%struct.bmic_identify_physical_device* %8, i32 0, i32 48)
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %11 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %12 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %13 = call i32 @pqi_identify_physical_device(%struct.pqi_ctrl_info* %10, %struct.pqi_scsi_dev* %11, %struct.bmic_identify_physical_device* %12, i32 48)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @PQI_PHYSICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH, align 4
  %18 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %22 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %27 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %32 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %39 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %38, i32 0, i32 6
  %40 = call i32 @get_unaligned_le16(i32* %39)
  %41 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %42 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %44 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %49 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %54 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %58, i32 0, i32 2
  %60 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %61 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %60, i32 0, i32 2
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 4)
  %63 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %64 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %63, i32 0, i32 1
  %65 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %66 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %65, i32 0, i32 1
  %67 = call i32 @memcpy(i32* %64, i32* %66, i32 4)
  %68 = load %struct.bmic_identify_physical_device*, %struct.bmic_identify_physical_device** %6, align 8
  %69 = getelementptr inbounds %struct.bmic_identify_physical_device, %struct.bmic_identify_physical_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %72 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @memset(%struct.bmic_identify_physical_device*, i32, i32) #1

declare dso_local i32 @pqi_identify_physical_device(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.bmic_identify_physical_device*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
