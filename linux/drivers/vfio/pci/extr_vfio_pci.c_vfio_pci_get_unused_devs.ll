; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_get_unused_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_get_unused_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vfio_devices = type { i64, i64, %struct.vfio_device** }
%struct.vfio_device = type { i32 }
%struct.vfio_pci_device = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vfio_pci_driver = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @vfio_pci_get_unused_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_get_unused_devs(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_devices*, align 8
  %7 = alloca %struct.vfio_device*, align 8
  %8 = alloca %struct.vfio_pci_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vfio_devices*
  store %struct.vfio_devices* %10, %struct.vfio_devices** %6, align 8
  %11 = load %struct.vfio_devices*, %struct.vfio_devices** %6, align 8
  %12 = getelementptr inbounds %struct.vfio_devices, %struct.vfio_devices* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vfio_devices*, %struct.vfio_devices** %6, align 8
  %15 = getelementptr inbounds %struct.vfio_devices, %struct.vfio_devices* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call %struct.vfio_device* @vfio_device_get_from_dev(i32* %23)
  store %struct.vfio_device* %24, %struct.vfio_device** %7, align 8
  %25 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %26 = icmp ne %struct.vfio_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32* @pci_dev_driver(%struct.pci_dev* %31)
  %33 = icmp ne i32* %32, @vfio_pci_driver
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %36 = call i32 @vfio_device_put(%struct.vfio_device* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %41 = call %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device* %40)
  store %struct.vfio_pci_device* %41, %struct.vfio_pci_device** %8, align 8
  %42 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %43 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %48 = call i32 @vfio_device_put(%struct.vfio_device* %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %61

51:                                               ; preds = %39
  %52 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %53 = load %struct.vfio_devices*, %struct.vfio_devices** %6, align 8
  %54 = getelementptr inbounds %struct.vfio_devices, %struct.vfio_devices* %53, i32 0, i32 2
  %55 = load %struct.vfio_device**, %struct.vfio_device*** %54, align 8
  %56 = load %struct.vfio_devices*, %struct.vfio_devices** %6, align 8
  %57 = getelementptr inbounds %struct.vfio_devices, %struct.vfio_devices* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds %struct.vfio_device*, %struct.vfio_device** %55, i64 %58
  store %struct.vfio_device* %52, %struct.vfio_device** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %51, %46, %34, %27, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.vfio_device* @vfio_device_get_from_dev(i32*) #1

declare dso_local i32* @pci_dev_driver(%struct.pci_dev*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
