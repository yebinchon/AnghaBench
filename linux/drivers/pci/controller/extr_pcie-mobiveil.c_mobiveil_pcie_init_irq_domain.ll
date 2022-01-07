; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mobiveil_pcie = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mobiveil_pcie*)* @mobiveil_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_pcie_init_irq_domain(%struct.mobiveil_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mobiveil_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.mobiveil_pcie* %0, %struct.mobiveil_pcie** %3, align 8
  %7 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = load i32, i32* @PCI_NUM_INTX, align 4
  %16 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %17 = call i32 @irq_domain_add_linear(%struct.device_node* %14, i32 %15, i32* @intx_domain_ops, %struct.mobiveil_pcie* %16)
  %18 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %31 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %30, i32 0, i32 0
  %32 = call i32 @raw_spin_lock_init(i32* %31)
  %33 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %3, align 8
  %34 = call i32 @mobiveil_allocate_msi_domains(%struct.mobiveil_pcie* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.mobiveil_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @mobiveil_allocate_msi_domains(%struct.mobiveil_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
