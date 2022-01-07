; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { i32, i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"No legacy intc node found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@legacy_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*)* @nwl_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_pcie_init_irq_domain(%struct.nwl_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwl_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %3, align 8
  %7 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call %struct.device_node* @of_get_next_child(%struct.device_node* %13, i32* null)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = load i32, i32* @PCI_NUM_INTX, align 4
  %25 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %26 = call i32 @irq_domain_add_linear(%struct.device_node* %23, i32 %24, i32* @legacy_domain_ops, %struct.nwl_pcie* %25)
  %27 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %22
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %22
  %41 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %41, i32 0, i32 0
  %43 = call i32 @raw_spin_lock_init(i32* %42)
  %44 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %45 = call i32 @nwl_pcie_init_msi_irq_domain(%struct.nwl_pcie* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %35, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.nwl_pcie*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @nwl_pcie_init_msi_irq_domain(%struct.nwl_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
