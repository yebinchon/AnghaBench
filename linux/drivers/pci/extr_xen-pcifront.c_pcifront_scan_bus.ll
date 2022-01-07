; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_bus = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"New device on %04x:%02x:%02x.%d found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*, i32, i32, %struct.pci_bus*)* @pcifront_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_scan_bus(%struct.pcifront_device* %0, i32 %1, i32 %2, %struct.pci_bus* %3) #0 {
  %5 = alloca %struct.pcifront_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pci_bus* %3, %struct.pci_bus** %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ult i32 %12, 256
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %15, i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %19 = icmp ne %struct.pci_dev* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %22 = call i32 @pci_dev_put(%struct.pci_dev* %21)
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %24, i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %9, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.pcifront_device*, %struct.pcifront_device** %5, align 8
  %31 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @PCI_SLOT(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @PCI_FUNC(i32 %38)
  %40 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %29, %23
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %11

45:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
