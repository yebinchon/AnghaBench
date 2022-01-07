; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_path**, %struct.tb_port*, %struct.tb_port*, i32 }
%struct.tb_path = type { i32 }
%struct.tb = type { i32 }
%struct.tb_port = type { i32 }

@TB_TUNNEL_PCI = common dso_local global i32 0, align 4
@tb_pci_activate = common dso_local global i32 0, align 4
@TB_PCI_HOPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"PCIe Down\00", align 1
@TB_PCI_PATH_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"PCIe Up\00", align 1
@TB_PCI_PATH_UP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_tunnel* @tb_tunnel_alloc_pci(%struct.tb* %0, %struct.tb_port* %1, %struct.tb_port* %2) #0 {
  %4 = alloca %struct.tb_tunnel*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_tunnel*, align 8
  %9 = alloca %struct.tb_path*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store %struct.tb_port* %1, %struct.tb_port** %6, align 8
  store %struct.tb_port* %2, %struct.tb_port** %7, align 8
  %10 = load %struct.tb*, %struct.tb** %5, align 8
  %11 = load i32, i32* @TB_TUNNEL_PCI, align 4
  %12 = call %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb* %10, i32 2, i32 %11)
  store %struct.tb_tunnel* %12, %struct.tb_tunnel** %8, align 8
  %13 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %14 = icmp ne %struct.tb_tunnel* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %67

16:                                               ; preds = %3
  %17 = load i32, i32* @tb_pci_activate, align 4
  %18 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %19 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %21 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %22 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %21, i32 0, i32 2
  store %struct.tb_port* %20, %struct.tb_port** %22, align 8
  %23 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %24 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %25 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %24, i32 0, i32 1
  store %struct.tb_port* %23, %struct.tb_port** %25, align 8
  %26 = load %struct.tb*, %struct.tb** %5, align 8
  %27 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %28 = load i32, i32* @TB_PCI_HOPID, align 4
  %29 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %30 = load i32, i32* @TB_PCI_HOPID, align 4
  %31 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %26, %struct.tb_port* %27, i32 %28, %struct.tb_port* %29, i32 %30, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.tb_path* %31, %struct.tb_path** %9, align 8
  %32 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %33 = icmp ne %struct.tb_path* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %36 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %35)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %67

37:                                               ; preds = %16
  %38 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %39 = call i32 @tb_pci_init_path(%struct.tb_path* %38)
  %40 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %41 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %42 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %41, i32 0, i32 0
  %43 = load %struct.tb_path**, %struct.tb_path*** %42, align 8
  %44 = load i64, i64* @TB_PCI_PATH_DOWN, align 8
  %45 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %43, i64 %44
  store %struct.tb_path* %40, %struct.tb_path** %45, align 8
  %46 = load %struct.tb*, %struct.tb** %5, align 8
  %47 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %48 = load i32, i32* @TB_PCI_HOPID, align 4
  %49 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %50 = load i32, i32* @TB_PCI_HOPID, align 4
  %51 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %46, %struct.tb_port* %47, i32 %48, %struct.tb_port* %49, i32 %50, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tb_path* %51, %struct.tb_path** %9, align 8
  %52 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %53 = icmp ne %struct.tb_path* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %56 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %55)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %4, align 8
  br label %67

57:                                               ; preds = %37
  %58 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %59 = call i32 @tb_pci_init_path(%struct.tb_path* %58)
  %60 = load %struct.tb_path*, %struct.tb_path** %9, align 8
  %61 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  %62 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %61, i32 0, i32 0
  %63 = load %struct.tb_path**, %struct.tb_path*** %62, align 8
  %64 = load i64, i64* @TB_PCI_PATH_UP, align 8
  %65 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %63, i64 %64
  store %struct.tb_path* %60, %struct.tb_path** %65, align 8
  %66 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  store %struct.tb_tunnel* %66, %struct.tb_tunnel** %4, align 8
  br label %67

67:                                               ; preds = %57, %54, %34, %15
  %68 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  ret %struct.tb_tunnel* %68
}

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb*, i32, i32) #1

declare dso_local %struct.tb_path* @tb_path_alloc(%struct.tb*, %struct.tb_port*, i32, %struct.tb_port*, i32, i32, i8*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_pci_init_path(%struct.tb_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
