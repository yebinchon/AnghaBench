; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.advk_pcie = type { i32, i32, %struct.platform_device* }
%struct.resource = type { i32 }
%struct.pci_host_bridge = type { i32, i32, i32*, i64, %struct.advk_pcie*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@advk_pcie_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"advk-pcie\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to parse resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to initialize irq\0A\00", align 1
@advk_pcie_ops = common dso_local global i32 0, align 4
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @advk_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.advk_pcie*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.pci_host_bridge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %12, i32 16)
  store %struct.pci_host_bridge* %13, %struct.pci_host_bridge** %7, align 8
  %14 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %15 = icmp ne %struct.pci_host_bridge* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %21 = call %struct.advk_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %20)
  store %struct.advk_pcie* %21, %struct.advk_pcie** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %23, i32 0, i32 2
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.device* %28, %struct.resource* %29)
  %31 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %32 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %19
  %39 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %40 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %127

43:                                               ; preds = %19
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @advk_pcie_irq_handler, align 4
  %49 = load i32, i32* @IRQF_SHARED, align 4
  %50 = load i32, i32* @IRQF_NO_THREAD, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %53 = call i32 @devm_request_irq(%struct.device* %46, i32 %47, i32 %48, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.advk_pcie* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %127

60:                                               ; preds = %43
  %61 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %62 = call i32 @advk_pcie_parse_request_of_pci_ranges(%struct.advk_pcie* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %127

69:                                               ; preds = %60
  %70 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %71 = call i32 @advk_pcie_setup_hw(%struct.advk_pcie* %70)
  %72 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %73 = call i32 @advk_sw_pci_bridge_init(%struct.advk_pcie* %72)
  %74 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %75 = call i32 @advk_pcie_init_irq_domain(%struct.advk_pcie* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %127

82:                                               ; preds = %69
  %83 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %84 = call i32 @advk_pcie_init_msi_irq_domain(%struct.advk_pcie* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %91 = call i32 @advk_pcie_remove_irq_domain(%struct.advk_pcie* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %127

93:                                               ; preds = %82
  %94 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %95 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %94, i32 0, i32 0
  %96 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %97 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %96, i32 0, i32 6
  %98 = call i32 @list_splice_init(i32* %95, i32* %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %101 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %104 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %105 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %104, i32 0, i32 4
  store %struct.advk_pcie* %103, %struct.advk_pcie** %105, align 8
  %106 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %107 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %109 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %108, i32 0, i32 2
  store i32* @advk_pcie_ops, i32** %109, align 8
  %110 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %111 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %112 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @pci_common_swizzle, align 4
  %114 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %115 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %117 = call i32 @pci_host_probe(%struct.pci_host_bridge* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %93
  %121 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %122 = call i32 @advk_pcie_remove_msi_irq_domain(%struct.advk_pcie* %121)
  %123 = load %struct.advk_pcie*, %struct.advk_pcie** %5, align 8
  %124 = call i32 @advk_pcie_remove_irq_domain(%struct.advk_pcie* %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %120, %87, %78, %65, %56, %38, %16
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.advk_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.advk_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @advk_pcie_parse_request_of_pci_ranges(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_setup_hw(%struct.advk_pcie*) #1

declare dso_local i32 @advk_sw_pci_bridge_init(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_init_irq_domain(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_init_msi_irq_domain(%struct.advk_pcie*) #1

declare dso_local i32 @advk_pcie_remove_irq_domain(%struct.advk_pcie*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @pci_host_probe(%struct.pci_host_bridge*) #1

declare dso_local i32 @advk_pcie_remove_msi_irq_domain(%struct.advk_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
