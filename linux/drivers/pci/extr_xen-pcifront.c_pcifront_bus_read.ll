; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_bus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_bus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.pcifront_sd* }
%struct.pcifront_sd = type { i32 }
%struct.xen_pci_op = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XEN_PCI_OP_conf_read = common dso_local global i32 0, align 4
@verbose_request = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"read dev=%04x:%02x:%02x.%d - offset %x size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"read got back value %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pcifront_bus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_bus_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xen_pci_op, align 4
  %13 = alloca %struct.pcifront_sd*, align 8
  %14 = alloca %struct.pcifront_device*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 4
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 5
  %27 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %28 = call i32 @pci_domain_nr(%struct.pci_bus* %27)
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 6
  %30 = load i32, i32* @XEN_PCI_OP_conf_read, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 1
  %33 = load %struct.pcifront_sd*, %struct.pcifront_sd** %32, align 8
  store %struct.pcifront_sd* %33, %struct.pcifront_sd** %13, align 8
  %34 = load %struct.pcifront_sd*, %struct.pcifront_sd** %13, align 8
  %35 = call %struct.pcifront_device* @pcifront_get_pdev(%struct.pcifront_sd* %34)
  store %struct.pcifront_device* %35, %struct.pcifront_device** %14, align 8
  %36 = load i64, i64* @verbose_request, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %5
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %14, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %44 = call i32 @pci_domain_nr(%struct.pci_bus* %43)
  %45 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %46 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PCI_SLOT(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @PCI_FUNC(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %49, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %38, %5
  %56 = load %struct.pcifront_device*, %struct.pcifront_device** %14, align 8
  %57 = call i32 @do_pci_op(%struct.pcifront_device* %56, %struct.xen_pci_op* %12)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i64, i64* @verbose_request, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.pcifront_device*, %struct.pcifront_device** %14, align 8
  %69 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = getelementptr inbounds %struct.xen_pci_op, %struct.xen_pci_op* %12, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %87

79:                                               ; preds = %55
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @errno_to_pcibios_err(i32 %88)
  ret i32 %89
}

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.pcifront_device* @pcifront_get_pdev(%struct.pcifront_sd*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @do_pci_op(%struct.pcifront_device*, %struct.xen_pci_op*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @errno_to_pcibios_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
