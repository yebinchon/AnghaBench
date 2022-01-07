; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_tango_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_tango_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tango_pcie = type { i32, %struct.irq_domain*, i64, i64 }
%struct.irq_domain = type { i32 }
%struct.resource = type { i64 }
%struct.fwnode_handle = type { i32 }
%struct.of_pci_range_parser = type { i32 }
%struct.of_pci_range = type { i64, i64 }

@.str = private unnamed_addr constant [69 x i8] c"simultaneous PCI config and MMIO accesses may cause data corruption\0A\00", align 1
@TAINT_CRAP = common dso_local global i32 0, align 4
@LOCKDEP_STILL_OK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SMP8759_DOORBELL = common dso_local global i64 0, align 8
@MSI_MAX = common dso_local global i32 0, align 4
@SMP8759_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to map IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@dom_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@msi_dom_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create MSI domain\0A\00", align 1
@tango_msi_isr = common dso_local global i32 0, align 4
@smp8759_ecam_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tango_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tango_pcie*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.irq_domain*, align 8
  %10 = alloca %struct.of_pci_range_parser, align 4
  %11 = alloca %struct.of_pci_range, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.fwnode_handle* @of_node_to_fwnode(i32 %18)
  store %struct.fwnode_handle* %19, %struct.fwnode_handle** %7, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_warn(%struct.device* %20, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TAINT_CRAP, align 4
  %23 = load i32, i32* @LOCKDEP_STILL_OK, align 4
  %24 = call i32 @add_taint(i32 %22, i32 %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tango_pcie* @devm_kzalloc(%struct.device* %25, i32 32, i32 %26)
  store %struct.tango_pcie* %27, %struct.tango_pcie** %5, align 8
  %28 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %29 = icmp ne %struct.tango_pcie* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %159

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 1)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call i64 @devm_ioremap_resource(%struct.device* %37, %struct.resource* %38)
  %40 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %41 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %43 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @IS_ERR(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %49 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @PTR_ERR(i64 %50)
  store i32 %51, i32* %2, align 4
  br label %159

52:                                               ; preds = %33
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.tango_pcie* %54)
  %56 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %57 = call i32 @tango_pcie_link_up(%struct.tango_pcie* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %159

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* %10, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %159

71:                                               ; preds = %62
  %72 = call i32* @of_pci_range_parser_one(%struct.of_pci_range_parser* %10, %struct.of_pci_range* %11)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %159

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %11, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %11, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.resource*, %struct.resource** %6, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* @SMP8759_DOORBELL, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %92 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %108, %77
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @MSI_MAX, align 4
  %96 = sdiv i32 %95, 8
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %100 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SMP8759_ENABLE, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call i32 @writel_relaxed(i32 0, i64 %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 4
  store i32 %110, i32* %13, align 4
  br label %93

111:                                              ; preds = %93
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @platform_get_irq(%struct.platform_device* %112, i32 1)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @ENXIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %159

121:                                              ; preds = %111
  %122 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %123 = load i32, i32* @MSI_MAX, align 4
  %124 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %125 = call %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* %122, i32 %123, i32* @dom_ops, %struct.tango_pcie* %124)
  store %struct.irq_domain* %125, %struct.irq_domain** %9, align 8
  %126 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %127 = icmp ne %struct.irq_domain* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %159

133:                                              ; preds = %121
  %134 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %135 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %136 = call %struct.irq_domain* @pci_msi_create_irq_domain(%struct.fwnode_handle* %134, i32* @msi_dom_info, %struct.irq_domain* %135)
  store %struct.irq_domain* %136, %struct.irq_domain** %8, align 8
  %137 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %138 = icmp ne %struct.irq_domain* %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %133
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %143 = call i32 @irq_domain_remove(%struct.irq_domain* %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %159

146:                                              ; preds = %133
  %147 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %148 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %149 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %148, i32 0, i32 1
  store %struct.irq_domain* %147, %struct.irq_domain** %149, align 8
  %150 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %151 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %150, i32 0, i32 0
  %152 = call i32 @spin_lock_init(i32* %151)
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @tango_msi_isr, align 4
  %155 = load %struct.tango_pcie*, %struct.tango_pcie** %5, align 8
  %156 = call i32 @irq_set_chained_handler_and_data(i32 %153, i32 %154, %struct.tango_pcie* %155)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = call i32 @pci_host_common_probe(%struct.platform_device* %157, i32* @smp8759_ecam_ops)
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %146, %139, %128, %116, %74, %68, %59, %47, %30
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.fwnode_handle* @of_node_to_fwnode(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local %struct.tango_pcie* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tango_pcie*) #1

declare dso_local i32 @tango_pcie_link_up(%struct.tango_pcie*) #1

declare dso_local i64 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser*, i32) #1

declare dso_local i32* @of_pci_range_parser_one(%struct.of_pci_range_parser*, %struct.of_pci_range*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle*, i32, i32*, %struct.tango_pcie*) #1

declare dso_local %struct.irq_domain* @pci_msi_create_irq_domain(%struct.fwnode_handle*, i32*, %struct.irq_domain*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.tango_pcie*) #1

declare dso_local i32 @pci_host_common_probe(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
