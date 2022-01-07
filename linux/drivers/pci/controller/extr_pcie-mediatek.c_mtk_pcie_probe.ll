; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_pcie = type { i32, %struct.TYPE_4__*, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_host_bridge = type { %struct.mtk_pcie*, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_pcie*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %10, i32 32)
  store %struct.pci_host_bridge* %11, %struct.pci_host_bridge** %6, align 8
  %12 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %13 = icmp ne %struct.pci_host_bridge* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %19 = call %struct.mtk_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge* %18)
  store %struct.mtk_pcie* %19, %struct.mtk_pcie** %5, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %21, i32 0, i32 2
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %23)
  %25 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %25, i32 0, i32 1
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.mtk_pcie* %28)
  %30 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %34 = call i32 @mtk_pcie_setup(%struct.mtk_pcie* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %17
  %40 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %41 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %44 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %46 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %45, i32 0, i32 2
  %47 = load %struct.device*, %struct.device** %46, align 8
  %48 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %49 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.device* %47, %struct.device** %50, align 8
  %51 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %52 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %57 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %59 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %60 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @pci_common_swizzle, align 4
  %62 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %63 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %65 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %66 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %65, i32 0, i32 0
  store %struct.mtk_pcie* %64, %struct.mtk_pcie** %66, align 8
  %67 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %68 = call i32 @pci_host_probe(%struct.pci_host_bridge* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %39
  br label %73

72:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %83

73:                                               ; preds = %71
  %74 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %75 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %74, i32 0, i32 0
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load %struct.mtk_pcie*, %struct.mtk_pcie** %5, align 8
  %80 = call i32 @mtk_pcie_put_resources(%struct.mtk_pcie* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %72, %37, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.mtk_pcie* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_pcie*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtk_pcie_setup(%struct.mtk_pcie*) #1

declare dso_local i32 @pci_host_probe(%struct.pci_host_bridge*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mtk_pcie_put_resources(%struct.mtk_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
