; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_no_ext_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_no_ext_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_host_bridge = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"disabling Extended Tags (this device can't handle them)\0A\00", align 1
@pci_configure_extended_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_no_ext_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_no_ext_tags(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %6)
  store %struct.pci_host_bridge* %7, %struct.pci_host_bridge** %3, align 8
  %8 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %9 = icmp ne %struct.pci_host_bridge* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_info(%struct.pci_dev* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  %17 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @pci_configure_extended_tags, align 4
  %20 = call i32 @pci_walk_bus(i32 %18, i32 %19, i32* null)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_walk_bus(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
