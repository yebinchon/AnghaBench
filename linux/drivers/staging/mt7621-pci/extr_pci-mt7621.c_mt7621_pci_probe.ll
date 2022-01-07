; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_mt7621_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mt7621_pcie = type { i32, %struct.device* }
%struct.pci_host_bridge = type { i32 }

@res = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Parsing DT failed\0A\00", align 1
@iomem_resource = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ioport_resource = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Nothing is connected in virtual bridges. Exiting...\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error requesting pci resources from ranges\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error requesting resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Error registering host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7621_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mt7621_pcie*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @res, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %89

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %20, i32 16)
  store %struct.pci_host_bridge* %21, %struct.pci_host_bridge** %6, align 8
  %22 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %23 = icmp ne %struct.pci_host_bridge* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %89

27:                                               ; preds = %19
  %28 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %29 = call %struct.mt7621_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %28)
  store %struct.mt7621_pcie* %29, %struct.mt7621_pcie** %5, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %32 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %31, i32 0, i32 1
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.mt7621_pcie* %34)
  %36 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %37 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %40 = call i32 @mt7621_pcie_parse_dt(%struct.mt7621_pcie* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %27
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iomem_resource, i32 0, i32 1), align 8
  store i64 -1, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iomem_resource, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ioport_resource, i32 0, i32 1), align 8
  store i64 -1, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ioport_resource, i32 0, i32 0), align 8
  %48 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %49 = call i32 @mt7621_pcie_init_ports(%struct.mt7621_pcie* %48)
  %50 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %51 = call i32 @mt7621_pcie_init_virtual_bridges(%struct.mt7621_pcie* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

57:                                               ; preds = %47
  %58 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %59 = call i32 @mt7621_pcie_enable_ports(%struct.mt7621_pcie* %58)
  %60 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %61 = call i32 @mt7621_pci_parse_request_of_pci_ranges(%struct.mt7621_pcie* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %89

68:                                               ; preds = %57
  %69 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %70 = call i32 @setup_cm_memory_region(%struct.mt7621_pcie* %69)
  %71 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %5, align 8
  %72 = call i32 @mt7621_pcie_request_resources(%struct.mt7621_pcie* %71, i32* @res)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %89

79:                                               ; preds = %68
  %80 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %81 = call i32 @mt7621_pcie_register_host(%struct.pci_host_bridge* %80, i32* @res)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %84, %75, %64, %54, %43, %24, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.mt7621_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt7621_pcie*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mt7621_pcie_parse_dt(%struct.mt7621_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mt7621_pcie_init_ports(%struct.mt7621_pcie*) #1

declare dso_local i32 @mt7621_pcie_init_virtual_bridges(%struct.mt7621_pcie*) #1

declare dso_local i32 @mt7621_pcie_enable_ports(%struct.mt7621_pcie*) #1

declare dso_local i32 @mt7621_pci_parse_request_of_pci_ranges(%struct.mt7621_pcie*) #1

declare dso_local i32 @setup_cm_memory_region(%struct.mt7621_pcie*) #1

declare dso_local i32 @mt7621_pcie_request_resources(%struct.mt7621_pcie*, i32*) #1

declare dso_local i32 @mt7621_pcie_register_host(%struct.pci_host_bridge*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
