; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-host-common.c_pci_host_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-host-common.c_pci_host_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_ecam_ops = type { i32 }
%struct.pci_host_bridge = type { i32, i32, i32, i32*, i32, %struct.pci_config_window*, %struct.TYPE_3__, i32 }
%struct.pci_config_window = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.list_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@PCI_REASSIGN_ALL_BUS = common dso_local global i32 0, align 4
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_host_common_probe(%struct.platform_device* %0, %struct.pci_ecam_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.pci_ecam_ops*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pci_host_bridge*, align 8
  %8 = alloca %struct.pci_config_window*, align 8
  %9 = alloca %struct.list_head, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.pci_ecam_ops* %1, %struct.pci_ecam_ops** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %13, i32 0)
  store %struct.pci_host_bridge* %14, %struct.pci_host_bridge** %7, align 8
  %15 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %16 = icmp ne %struct.pci_host_bridge* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = call i32 (...) @of_pci_check_probe_only()
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.pci_ecam_ops*, %struct.pci_ecam_ops** %5, align 8
  %24 = call %struct.pci_config_window* @gen_pci_init(%struct.device* %22, %struct.list_head* %9, %struct.pci_ecam_ops* %23)
  store %struct.pci_config_window* %24, %struct.pci_config_window** %8, align 8
  %25 = load %struct.pci_config_window*, %struct.pci_config_window** %8, align 8
  %26 = call i64 @IS_ERR(%struct.pci_config_window* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.pci_config_window*, %struct.pci_config_window** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.pci_config_window* %29)
  store i32 %30, i32* %3, align 4
  br label %78

31:                                               ; preds = %20
  %32 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %33 = call i32 @pci_has_flag(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @PCI_REASSIGN_ALL_BUS, align 4
  %37 = call i32 @pci_add_flags(i32 %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %40 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %39, i32 0, i32 7
  %41 = call i32 @list_splice_init(%struct.list_head* %9, i32* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %44 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.device* %42, %struct.device** %45, align 8
  %46 = load %struct.pci_config_window*, %struct.pci_config_window** %8, align 8
  %47 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %48 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %47, i32 0, i32 5
  store %struct.pci_config_window* %46, %struct.pci_config_window** %48, align 8
  %49 = load %struct.pci_config_window*, %struct.pci_config_window** %8, align 8
  %50 = getelementptr inbounds %struct.pci_config_window, %struct.pci_config_window* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %54 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pci_ecam_ops*, %struct.pci_ecam_ops** %5, align 8
  %56 = getelementptr inbounds %struct.pci_ecam_ops, %struct.pci_ecam_ops* %55, i32 0, i32 0
  %57 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %58 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %60 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %61 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @pci_common_swizzle, align 4
  %63 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %64 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %66 = call i32 @pci_host_probe(%struct.pci_host_bridge* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %38
  %70 = call i32 @pci_free_resource_list(%struct.list_head* %9)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %38
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %75 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %69, %28, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local i32 @of_pci_check_probe_only(...) #1

declare dso_local %struct.pci_config_window* @gen_pci_init(%struct.device*, %struct.list_head*, %struct.pci_ecam_ops*) #1

declare dso_local i64 @IS_ERR(%struct.pci_config_window*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_config_window*) #1

declare dso_local i32 @pci_has_flag(i32) #1

declare dso_local i32 @pci_add_flags(i32) #1

declare dso_local i32 @list_splice_init(%struct.list_head*, i32*) #1

declare dso_local i32 @pci_host_probe(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_free_resource_list(%struct.list_head*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
