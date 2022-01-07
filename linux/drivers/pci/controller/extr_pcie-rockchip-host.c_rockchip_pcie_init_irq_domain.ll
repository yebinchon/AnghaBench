; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_init_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_init_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"missing child interrupt-controller node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@intx_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get a INTx IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_init_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_init_irq_domain(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %6 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_get_next_child(i32 %11, i32* null)
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = load i32, i32* @PCI_NUM_INTX, align 4
  %23 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %24 = call i32 @irq_domain_add_linear(%struct.device_node* %21, i32 %22, i32* @intx_domain_ops, %struct.rockchip_pcie* %23)
  %25 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.device_node* @of_get_next_child(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.rockchip_pcie*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
