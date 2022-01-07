; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_alloc_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_alloc_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.iproc_msi = type { i32, i32, i32 }

@msi_domain_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iproc_msi_domain_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.iproc_msi*)* @iproc_msi_alloc_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_msi_alloc_domains(%struct.device_node* %0, %struct.iproc_msi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.iproc_msi*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.iproc_msi* %1, %struct.iproc_msi** %5, align 8
  %6 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %7 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %10 = call i32 @irq_domain_add_linear(i32* null, i32 %8, i32* @msi_domain_ops, %struct.iproc_msi* %9)
  %11 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %12 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %14 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_node_to_fwnode(%struct.device_node* %21)
  %23 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %24 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_msi_create_irq_domain(i32 %22, i32* @iproc_msi_domain_info, i32 %25)
  %27 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %28 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %30 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %20
  %34 = load %struct.iproc_msi*, %struct.iproc_msi** %5, align 8
  %35 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @irq_domain_remove(i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %33, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.iproc_msi*) #1

declare dso_local i32 @pci_msi_create_irq_domain(i32, i32*, i32) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
