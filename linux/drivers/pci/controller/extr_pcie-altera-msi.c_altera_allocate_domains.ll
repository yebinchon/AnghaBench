; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_allocate_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_allocate_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_msi = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@msi_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@altera_msi_domain_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_msi*)* @altera_allocate_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_allocate_domains(%struct.altera_msi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_msi*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  store %struct.altera_msi* %0, %struct.altera_msi** %3, align 8
  %5 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %6 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fwnode_handle* @of_node_to_fwnode(i32 %10)
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %4, align 8
  %12 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %13 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %16 = call i32 @irq_domain_add_linear(i32* null, i32 %14, i32* @msi_domain_ops, %struct.altera_msi* %15)
  %17 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %18 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %20 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %25 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %33 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %34 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pci_msi_create_irq_domain(%struct.fwnode_handle* %32, i32* @altera_msi_domain_info, i32 %35)
  %37 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %38 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %40 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %31
  %44 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %45 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.altera_msi*, %struct.altera_msi** %3, align 8
  %50 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @irq_domain_remove(i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %43, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.fwnode_handle* @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.altera_msi*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pci_msi_create_irq_domain(%struct.fwnode_handle*, i32*, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
