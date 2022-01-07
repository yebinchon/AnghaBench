; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_msi = type { i32*, i32* }

@pci_xgene_online = common dso_local global i64 0, align 8
@CPUHP_PCI_XGENE_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_msi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_msi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_msi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.xgene_msi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.xgene_msi* %5, %struct.xgene_msi** %3, align 8
  %6 = load i64, i64* @pci_xgene_online, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @pci_xgene_online, align 8
  %10 = call i32 @cpuhp_remove_state(i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i64, i64* @CPUHP_PCI_XGENE_DEAD, align 8
  %13 = call i32 @cpuhp_remove_state(i64 %12)
  %14 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %25 = call i32 @xgene_free_domains(%struct.xgene_msi* %24)
  ret i32 0
}

declare dso_local %struct.xgene_msi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cpuhp_remove_state(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @xgene_free_domains(%struct.xgene_msi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
