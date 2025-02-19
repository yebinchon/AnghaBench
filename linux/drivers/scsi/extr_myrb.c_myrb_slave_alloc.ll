; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @myrb_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrb_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @myrb_logical_channel(i32 %9)
  %11 = icmp sgt i64 %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %15
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @myrb_logical_channel(i32 %29)
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = call i32 @myrb_ldev_slave_alloc(%struct.scsi_device* %33)
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = call i32 @myrb_pdev_slave_alloc(%struct.scsi_device* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %32, %20, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local i32 @myrb_ldev_slave_alloc(%struct.scsi_device*) #1

declare dso_local i32 @myrb_pdev_slave_alloc(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
