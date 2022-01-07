; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"removing dom %x bus %x slot %x func %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Couldn't locate PCI device (%04x:%02x:%02x.%d)! not owned by this domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unregistering for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32)* @xen_pcibk_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_remove_device(%struct.xen_pcibk_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xen_pcibk_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %14 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @PCI_DEVFN(i32 %25, i32 %26)
  %28 = call %struct.pci_dev* @xen_pcibk_get_pci_dev(%struct.xen_pcibk_device* %22, i32 %23, i32 %24, i32 %27)
  store %struct.pci_dev* %28, %struct.pci_dev** %12, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %35 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  br label %57

43:                                               ; preds = %5
  %44 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %47 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %53 = call i32 @xen_unregister_device_domain_owner(%struct.pci_dev* %52)
  %54 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %56 = call i32 @xen_pcibk_release_pci_dev(%struct.xen_pcibk_device* %54, %struct.pci_dev* %55, i32 1)
  br label %57

57:                                               ; preds = %43, %31
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local %struct.pci_dev* @xen_pcibk_get_pci_dev(%struct.xen_pcibk_device*, i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @xen_unregister_device_domain_owner(%struct.pci_dev*) #1

declare dso_local i32 @xen_pcibk_release_pci_dev(%struct.xen_pcibk_device*, %struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
