; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_hw_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_get_device_id(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %4 = call i64 @csio_is_dev_id_cached(%struct.csio_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %9 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_VENDOR_ID, align 4
  %12 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @pci_read_config_word(i32 %10, i32 %11, i32* %15)
  %17 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCI_DEVICE_ID, align 4
  %21 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %22 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @pci_read_config_word(i32 %19, i32 %20, i32* %24)
  %26 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %27 = call i32 @csio_dev_id_cached(%struct.csio_hw* %26)
  %28 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %29 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %36 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @csio_is_dev_id_cached(%struct.csio_hw*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @csio_dev_id_cached(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
