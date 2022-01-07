; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_upstream_bridge_distance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_upstream_bridge_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seq_buf = type { i32 }

@PCI_P2PDMA_MAP_THRU_HOST_BRIDGE = common dso_local global i32 0, align 4
@PCI_P2PDMA_MAP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_dev*, i32*, i32*, %struct.seq_buf*)* @upstream_bridge_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upstream_bridge_distance(%struct.pci_dev* %0, %struct.pci_dev* %1, i32* %2, i32* %3, %struct.seq_buf* %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.seq_buf*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.seq_buf* %4, %struct.seq_buf** %10, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.seq_buf*, %struct.seq_buf** %10, align 8
  %17 = call i32 @__upstream_bridge_distance(%struct.pci_dev* %12, %struct.pci_dev* %13, i32* %14, i32* %15, %struct.seq_buf* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @PCI_P2PDMA_MAP_THRU_HOST_BRIDGE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = call i32 @host_bridge_whitelist(%struct.pci_dev* %22, %struct.pci_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @PCI_P2PDMA_MAP_NOT_SUPPORTED, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %21
  br label %29

29:                                               ; preds = %28, %5
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = call i32 @map_types_idx(%struct.pci_dev* %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @xa_mk_value(i32 %41)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @xa_store(i32* %38, i32 %40, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32 @__upstream_bridge_distance(%struct.pci_dev*, %struct.pci_dev*, i32*, i32*, %struct.seq_buf*) #1

declare dso_local i32 @host_bridge_whitelist(%struct.pci_dev*, %struct.pci_dev*) #1

declare dso_local i32 @xa_store(i32*, i32, i32, i32) #1

declare dso_local i32 @map_types_idx(%struct.pci_dev*) #1

declare dso_local i32 @xa_mk_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
