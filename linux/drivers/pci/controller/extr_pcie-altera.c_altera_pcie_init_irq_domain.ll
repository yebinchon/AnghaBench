; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*)* @altera_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_pcie_init_irq_domain(%struct.altera_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %3, align 8
  %6 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load i32, i32* @PCI_NUM_INTX, align 4
  %15 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %16 = call i32 @irq_domain_add_linear(%struct.device_node* %13, i32 %14, i32* @intx_domain_ops, %struct.altera_pcie* %15)
  %17 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.altera_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
