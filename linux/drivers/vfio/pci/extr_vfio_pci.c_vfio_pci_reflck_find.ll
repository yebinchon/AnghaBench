; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vfio_pci_reflck = type { i32 }
%struct.vfio_device = type { i32 }
%struct.vfio_pci_device = type { %struct.vfio_pci_reflck* }

@vfio_pci_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @vfio_pci_reflck_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_reflck_find(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_pci_reflck**, align 8
  %7 = alloca %struct.vfio_device*, align 8
  %8 = alloca %struct.vfio_pci_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vfio_pci_reflck**
  store %struct.vfio_pci_reflck** %10, %struct.vfio_pci_reflck*** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call %struct.vfio_device* @vfio_device_get_from_dev(i32* %12)
  store %struct.vfio_device* %13, %struct.vfio_device** %7, align 8
  %14 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %15 = icmp ne %struct.vfio_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32* @pci_dev_driver(%struct.pci_dev* %18)
  %20 = icmp ne i32* %19, @vfio_pci_driver
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %23 = call i32 @vfio_device_put(%struct.vfio_device* %22)
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %17
  %25 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %26 = call %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device* %25)
  store %struct.vfio_pci_device* %26, %struct.vfio_pci_device** %8, align 8
  %27 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %28 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %27, i32 0, i32 0
  %29 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %28, align 8
  %30 = icmp ne %struct.vfio_pci_reflck* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %33 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %32, i32 0, i32 0
  %34 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %33, align 8
  %35 = call i32 @vfio_pci_reflck_get(%struct.vfio_pci_reflck* %34)
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %37 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %36, i32 0, i32 0
  %38 = load %struct.vfio_pci_reflck*, %struct.vfio_pci_reflck** %37, align 8
  %39 = load %struct.vfio_pci_reflck**, %struct.vfio_pci_reflck*** %6, align 8
  store %struct.vfio_pci_reflck* %38, %struct.vfio_pci_reflck** %39, align 8
  %40 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %41 = call i32 @vfio_device_put(%struct.vfio_device* %40)
  store i32 1, i32* %3, align 4
  br label %45

42:                                               ; preds = %24
  %43 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %44 = call i32 @vfio_device_put(%struct.vfio_device* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %31, %21, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.vfio_device* @vfio_device_get_from_dev(i32*) #1

declare dso_local i32* @pci_dev_driver(%struct.pci_dev*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device*) #1

declare dso_local i32 @vfio_pci_reflck_get(%struct.vfio_pci_reflck*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
