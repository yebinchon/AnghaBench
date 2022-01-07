; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_allocate_msi_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_allocate_msi_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { %struct.mobiveil_msi, %struct.TYPE_2__* }
%struct.mobiveil_msi = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }

@msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mobiveil_msi_domain_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mobiveil_pcie*)* @mobiveil_allocate_msi_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_allocate_msi_domains(%struct.mobiveil_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mobiveil_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.mobiveil_msi*, align 8
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %3, align 8
  %7 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fwnode_handle* @of_node_to_fwnode(i32 %13)
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %5, align 8
  %15 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %15, i32 0, i32 0
  store %struct.mobiveil_msi* %16, %struct.mobiveil_msi** %6, align 8
  %17 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %22 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %25 = call i32 @irq_domain_add_linear(i32* null, i32 %23, i32* @msi_domain_ops, %struct.mobiveil_pcie* %24)
  %26 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %27 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %29 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %1
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %39 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %40 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_msi_create_irq_domain(%struct.fwnode_handle* %38, i32* @mobiveil_msi_domain_info, i32 %41)
  %43 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %44 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %46 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %6, align 8
  %53 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @irq_domain_remove(i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %49, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.fwnode_handle* @of_node_to_fwnode(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.mobiveil_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_msi_create_irq_domain(%struct.fwnode_handle*, i32*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
