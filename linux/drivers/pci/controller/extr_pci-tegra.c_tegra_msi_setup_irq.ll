; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_msi_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_msi_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_controller = type { i32 }
%struct.pci_dev = type { i32 }
%struct.msi_desc = type { i32 }
%struct.tegra_msi = type { i32, i32 }
%struct.msi_msg = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi_controller*, %struct.pci_dev*, %struct.msi_desc*)* @tegra_msi_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_msi_setup_irq(%struct.msi_controller* %0, %struct.pci_dev* %1, %struct.msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msi_controller*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.msi_desc*, align 8
  %8 = alloca %struct.tegra_msi*, align 8
  %9 = alloca %struct.msi_msg, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msi_controller* %0, %struct.msi_controller** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.msi_desc* %2, %struct.msi_desc** %7, align 8
  %12 = load %struct.msi_controller*, %struct.msi_controller** %5, align 8
  %13 = call %struct.tegra_msi* @to_tegra_msi(%struct.msi_controller* %12)
  store %struct.tegra_msi* %13, %struct.tegra_msi** %8, align 8
  %14 = load %struct.tegra_msi*, %struct.tegra_msi** %8, align 8
  %15 = call i32 @tegra_msi_alloc(%struct.tegra_msi* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.tegra_msi*, %struct.tegra_msi** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @irq_create_mapping(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.tegra_msi*, %struct.tegra_msi** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @tegra_msi_free(%struct.tegra_msi* %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %37 = call i32 @irq_set_msi_desc(i32 %35, %struct.msi_desc* %36)
  %38 = load %struct.tegra_msi*, %struct.tegra_msi** %8, align 8
  %39 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %9, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.tegra_msi*, %struct.tegra_msi** %8, align 8
  %44 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %9, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %9, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pci_write_msi_msg(i32 %50, %struct.msi_msg* %9)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %34, %28, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.tegra_msi* @to_tegra_msi(%struct.msi_controller*) #1

declare dso_local i32 @tegra_msi_alloc(%struct.tegra_msi*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @tegra_msi_free(%struct.tegra_msi*, i32) #1

declare dso_local i32 @irq_set_msi_desc(i32, %struct.msi_desc*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pci_write_msi_msg(i32, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
