; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_supported_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_supported_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_scsi_dev = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_scsi_dev*)* @pqi_is_supported_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_is_supported_device(%struct.pqi_scsi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pqi_scsi_dev* %0, %struct.pqi_scsi_dev** %3, align 8
  %5 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %11 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %23 [
    i32 133, label %14
    i32 128, label %14
    i32 129, label %14
    i32 131, label %14
    i32 132, label %14
    i32 130, label %15
  ]

14:                                               ; preds = %10, %10, %10, %10, %10
  store i32 1, i32* %4, align 4
  br label %23

15:                                               ; preds = %10
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pqi_is_hba_lunid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %15
  br label %23

23:                                               ; preds = %10, %22, %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pqi_is_hba_lunid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
