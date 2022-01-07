; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_add_device(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %6 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %7 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scsi_add_device(i32 %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %28 = call i32 @pqi_add_sas_device(i32 %26, %struct.pqi_scsi_dev* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %9
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @scsi_add_device(i32, i32, i32, i32) #1

declare dso_local i32 @pqi_add_sas_device(i32, %struct.pqi_scsi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
