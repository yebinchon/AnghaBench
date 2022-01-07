; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advk_pcie = type { i32, %struct.irq_chip, %struct.TYPE_2__* }
%struct.irq_chip = type { i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No PCIe Intc node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-irq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@advk_pcie_irq_mask = common dso_local global i8* null, align 8
@advk_pcie_irq_unmask = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@advk_pcie_irq_domain_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advk_pcie*)* @advk_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pcie_init_irq_domain(%struct.advk_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.advk_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.advk_pcie* %0, %struct.advk_pcie** %3, align 8
  %9 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call %struct.device_node* @of_get_next_child(%struct.device_node* %16, i32* null)
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %26, i32 0, i32 1
  store %struct.irq_chip* %27, %struct.irq_chip** %7, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = call i32 @devm_kasprintf(%struct.device* %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %34 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %36 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %68

42:                                               ; preds = %25
  %43 = load i8*, i8** @advk_pcie_irq_mask, align 8
  %44 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %45 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @advk_pcie_irq_mask, align 8
  %47 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %48 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @advk_pcie_irq_unmask, align 4
  %50 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %51 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = load i32, i32* @PCI_NUM_INTX, align 4
  %54 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %55 = call i32 @irq_domain_add_linear(%struct.device_node* %52, i32 %53, i32* @advk_pcie_irq_domain_ops, %struct.advk_pcie* %54)
  %56 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.advk_pcie*, %struct.advk_pcie** %3, align 8
  %59 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %42
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %62, %39
  %69 = load %struct.device_node*, %struct.device_node** %6, align 8
  %70 = call i32 @of_node_put(%struct.device_node* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.advk_pcie*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
