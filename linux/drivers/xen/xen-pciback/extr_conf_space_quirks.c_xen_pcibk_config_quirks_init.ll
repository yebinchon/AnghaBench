; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirks_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirks_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.xen_pcibk_config_quirk = type { %struct.pci_dev*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_pcibk_config_quirks_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.xen_pcibk_config_quirk*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.xen_pcibk_config_quirk* @kzalloc(i32 48, i32 %5)
  store %struct.xen_pcibk_config_quirk* %6, %struct.xen_pcibk_config_quirk** %3, align 8
  %7 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %8 = icmp ne %struct.xen_pcibk_config_quirk* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %17 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %23 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %29 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %35 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %38 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %41 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %44 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %48 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %47, i32 0, i32 0
  store %struct.pci_dev* %46, %struct.pci_dev** %48, align 8
  %49 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %50 = call i32 @register_quirk(%struct.xen_pcibk_config_quirk* %49)
  br label %51

51:                                               ; preds = %12, %9
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.xen_pcibk_config_quirk* @kzalloc(i32, i32) #1

declare dso_local i32 @register_quirk(%struct.xen_pcibk_config_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
