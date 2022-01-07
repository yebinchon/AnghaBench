; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vfio_pci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vfio_pci_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vfio_pci_device*
  store %struct.vfio_pci_device* %7, %struct.vfio_pci_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = call i32 @try_module_get(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %21 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %14
  %25 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %26 = call i32 @vfio_pci_enable(%struct.vfio_pci_device* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  %31 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %32 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vfio_spapr_pci_eeh_open(i32 %33)
  br label %35

35:                                               ; preds = %30, %14
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %37 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %42 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = call i32 @module_put(i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_pci_enable(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_spapr_pci_eeh_open(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
