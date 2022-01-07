; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_export_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_export_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"exporting dom %x bus %x slot %x func %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Couldn't locate PCI device (%04x:%02x:%02x.%d)! perhaps already in-use?\00", align 1
@xen_pcibk_publish_pci_dev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"registering for %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Stealing ownership from dom%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*, i32, i32, i32, i32, i32)* @xen_pcibk_export_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_export_device(%struct.xen_pcibk_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.xen_pcibk_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %16 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.pci_dev* @pcistub_get_pci_dev_by_slot(%struct.xen_pcibk_device* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %13, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %31 = icmp ne %struct.pci_dev* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %36 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @xenbus_dev_fatal(%struct.TYPE_2__* %37, i32 %38, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  br label %86

44:                                               ; preds = %6
  %45 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @xen_pcibk_publish_pci_dev, align 4
  %49 = call i32 @xen_pcibk_add_pci_dev(%struct.xen_pcibk_device* %45, %struct.pci_dev* %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %86

53:                                               ; preds = %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %57 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %63 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %64 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @xen_register_device_domain_owner(%struct.pci_dev* %62, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %53
  %71 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %74 = call i32 @xen_find_device_domain_owner(%struct.pci_dev* %73)
  %75 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %77 = call i32 @xen_unregister_device_domain_owner(%struct.pci_dev* %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %79 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %7, align 8
  %80 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @xen_register_device_domain_owner(%struct.pci_dev* %78, i32 %83)
  br label %85

85:                                               ; preds = %70, %53
  br label %86

86:                                               ; preds = %85, %52, %32
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.pci_dev* @pcistub_get_pci_dev_by_slot(%struct.xen_pcibk_device*, i32, i32, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_2__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xen_pcibk_add_pci_dev(%struct.xen_pcibk_device*, %struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @xen_register_device_domain_owner(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @xen_find_device_domain_owner(%struct.pci_dev*) #1

declare dso_local i32 @xen_unregister_device_domain_owner(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
