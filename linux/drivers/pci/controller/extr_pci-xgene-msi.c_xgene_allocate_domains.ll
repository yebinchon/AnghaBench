; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_allocate_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_allocate_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_msi = type { i32, i32, i32 }

@NR_MSI_VEC = common dso_local global i32 0, align 4
@msi_domain_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xgene_msi_domain_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_msi*)* @xgene_allocate_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_allocate_domains(%struct.xgene_msi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_msi*, align 8
  store %struct.xgene_msi* %0, %struct.xgene_msi** %3, align 8
  %4 = load i32, i32* @NR_MSI_VEC, align 4
  %5 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %6 = call i32 @irq_domain_add_linear(i32* null, i32 %4, i32* @msi_domain_ops, %struct.xgene_msi* %5)
  %7 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @of_node_to_fwnode(i32 %19)
  %21 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_msi_create_irq_domain(i32 %20, i32* @xgene_msi_domain_info, i32 %23)
  %25 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %26 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %16
  %32 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %33 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @irq_domain_remove(i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.xgene_msi*) #1

declare dso_local i32 @pci_msi_create_irq_domain(i32, i32*, i32) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
