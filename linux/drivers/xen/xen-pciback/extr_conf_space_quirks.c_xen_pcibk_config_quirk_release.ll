; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.xen_pcibk_config_quirk = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_pcibk_config_quirk_release(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.xen_pcibk_config_quirk*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.xen_pcibk_config_quirk* @xen_pcibk_find_quirk(%struct.pci_dev* %5)
  store %struct.xen_pcibk_config_quirk* %6, %struct.xen_pcibk_config_quirk** %3, align 8
  %7 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %8 = icmp ne %struct.xen_pcibk_config_quirk* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %14 = getelementptr inbounds %struct.xen_pcibk_config_quirk, %struct.xen_pcibk_config_quirk* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.xen_pcibk_config_quirk*, %struct.xen_pcibk_config_quirk** %3, align 8
  %17 = call i32 @kfree(%struct.xen_pcibk_config_quirk* %16)
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local %struct.xen_pcibk_config_quirk* @xen_pcibk_find_quirk(%struct.pci_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.xen_pcibk_config_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
