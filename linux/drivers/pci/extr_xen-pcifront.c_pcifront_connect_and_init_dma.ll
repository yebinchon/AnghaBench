; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_connect_and_init_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_connect_and_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@pcifront_dev_lock = common dso_local global i32 0, align 4
@pcifront_dev = common dso_local global %struct.pcifront_device* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Installing PCI frontend\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not setup SWIOTLB!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_connect_and_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_connect_and_init_dma(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @pcifront_dev_lock)
  %5 = load %struct.pcifront_device*, %struct.pcifront_device** @pcifront_dev, align 8
  %6 = icmp ne %struct.pcifront_device* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  store %struct.pcifront_device* %13, %struct.pcifront_device** @pcifront_dev, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = call i32 @spin_unlock(i32* @pcifront_dev_lock)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @swiotlb_nr_tbl()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @pci_xen_swiotlb_init_late()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %30 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %34, %21, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @swiotlb_nr_tbl(...) #1

declare dso_local i32 @pci_xen_swiotlb_init_late(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
