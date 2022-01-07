; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_device_with_sas_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_device_with_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_scsi_dev = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_scsi_dev*)* @pqi_is_device_with_sas_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_is_device_with_sas_address(%struct.pqi_scsi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev** %3, align 8
  %4 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %21

15:                                               ; preds = %9
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %20 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %15, %15, %15
  store i32 1, i32* %2, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %14, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
