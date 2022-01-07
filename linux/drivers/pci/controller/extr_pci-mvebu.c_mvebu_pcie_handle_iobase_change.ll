; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_handle_iobase_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_handle_iobase_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.pci_bridge_emul_conf }
%struct.pci_bridge_emul_conf = type { i32, i32, i32, i32, i32 }
%struct.mvebu_pcie_window = type { i32, i32, i64 }

@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attempt to set IO when IO is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*)* @mvebu_pcie_handle_iobase_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_handle_iobase_change(%struct.mvebu_pcie_port* %0) #0 {
  %2 = alloca %struct.mvebu_pcie_port*, align 8
  %3 = alloca %struct.mvebu_pcie_window, align 8
  %4 = alloca %struct.pci_bridge_emul_conf*, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %2, align 8
  %5 = bitcast %struct.mvebu_pcie_window* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %7 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.pci_bridge_emul_conf* %8, %struct.pci_bridge_emul_conf** %4, align 8
  %9 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %10 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %13 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %18 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %21 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %26 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCI_COMMAND_IO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %24, %16, %1
  %32 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %33 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %34 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %37 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %40 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %39, i32 0, i32 0
  %41 = call i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port* %32, i32 %35, i32 %38, %struct.mvebu_pcie_window* %3, i32* %40)
  br label %103

42:                                               ; preds = %24
  %43 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %44 = call i32 @mvebu_has_ioport(%struct.mvebu_pcie_port* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %48 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @dev_WARN(i32* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %103

54:                                               ; preds = %42
  %55 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %56 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 240
  %59 = shl i32 %58, 8
  %60 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %61 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %59, %63
  %65 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %67 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 2
  store i64 %75, i64* %76, align 8
  %77 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %78 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 240
  %81 = shl i32 %80, 8
  %82 = or i32 4095, %81
  %83 = load %struct.pci_bridge_emul_conf*, %struct.pci_bridge_emul_conf** %4, align 8
  %84 = getelementptr inbounds %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_conf* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %82, %86
  %88 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %87, %89
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %3, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %94 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %95 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %98 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %101 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %100, i32 0, i32 0
  %102 = call i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port* %93, i32 %96, i32 %99, %struct.mvebu_pcie_window* %3, i32* %101)
  br label %103

103:                                              ; preds = %54, %46, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mvebu_pcie_set_window(%struct.mvebu_pcie_port*, i32, i32, %struct.mvebu_pcie_window*, i32*) #2

declare dso_local i32 @mvebu_has_ioport(%struct.mvebu_pcie_port*) #2

declare dso_local i32 @dev_WARN(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
