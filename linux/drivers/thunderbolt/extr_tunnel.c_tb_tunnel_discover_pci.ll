; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_discover_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_discover_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_port*, %struct.tb_port*, %struct.tb_path**, i32 }
%struct.tb_path = type { i32 }
%struct.tb = type { i32 }
%struct.tb_port = type { i32 }

@TB_TUNNEL_PCI = common dso_local global i32 0, align 4
@tb_pci_activate = common dso_local global i32 0, align 4
@TB_PCI_HOPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PCIe Up\00", align 1
@TB_PCI_PATH_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"PCIe Down\00", align 1
@TB_PCI_PATH_DOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"path does not end on a PCIe adapter, cleaning up\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"path is not complete, cleaning up\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"tunnel is not fully activated, cleaning up\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"discovered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_tunnel* @tb_tunnel_discover_pci(%struct.tb* %0, %struct.tb_port* %1) #0 {
  %3 = alloca %struct.tb_tunnel*, align 8
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_tunnel*, align 8
  %7 = alloca %struct.tb_path*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_port* %1, %struct.tb_port** %5, align 8
  %8 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %9 = call i32 @tb_pci_port_is_enabled(%struct.tb_port* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %111

12:                                               ; preds = %2
  %13 = load %struct.tb*, %struct.tb** %4, align 8
  %14 = load i32, i32* @TB_TUNNEL_PCI, align 4
  %15 = call %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb* %13, i32 2, i32 %14)
  store %struct.tb_tunnel* %15, %struct.tb_tunnel** %6, align 8
  %16 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %17 = icmp ne %struct.tb_tunnel* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %111

19:                                               ; preds = %12
  %20 = load i32, i32* @tb_pci_activate, align 4
  %21 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %22 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %24 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %25 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %24, i32 0, i32 1
  store %struct.tb_port* %23, %struct.tb_port** %25, align 8
  %26 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %27 = load i32, i32* @TB_PCI_HOPID, align 4
  %28 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %29 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %28, i32 0, i32 0
  %30 = call %struct.tb_path* @tb_path_discover(%struct.tb_port* %26, i32 %27, %struct.tb_port* null, i32 -1, %struct.tb_port** %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.tb_path* %30, %struct.tb_path** %7, align 8
  %31 = load %struct.tb_path*, %struct.tb_path** %7, align 8
  %32 = icmp ne %struct.tb_path* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %35 = call i32 @tb_pci_port_enable(%struct.tb_port* %34, i32 0)
  br label %108

36:                                               ; preds = %19
  %37 = load %struct.tb_path*, %struct.tb_path** %7, align 8
  %38 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %39 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %38, i32 0, i32 2
  %40 = load %struct.tb_path**, %struct.tb_path*** %39, align 8
  %41 = load i64, i64* @TB_PCI_PATH_UP, align 8
  %42 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %40, i64 %41
  store %struct.tb_path* %37, %struct.tb_path** %42, align 8
  %43 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %44 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %43, i32 0, i32 2
  %45 = load %struct.tb_path**, %struct.tb_path*** %44, align 8
  %46 = load i64, i64* @TB_PCI_PATH_UP, align 8
  %47 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %45, i64 %46
  %48 = load %struct.tb_path*, %struct.tb_path** %47, align 8
  %49 = call i32 @tb_pci_init_path(%struct.tb_path* %48)
  %50 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %51 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %50, i32 0, i32 0
  %52 = load %struct.tb_port*, %struct.tb_port** %51, align 8
  %53 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %54 = load i32, i32* @TB_PCI_HOPID, align 4
  %55 = call %struct.tb_path* @tb_path_discover(%struct.tb_port* %52, i32 -1, %struct.tb_port* %53, i32 %54, %struct.tb_port** null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tb_path* %55, %struct.tb_path** %7, align 8
  %56 = load %struct.tb_path*, %struct.tb_path** %7, align 8
  %57 = icmp ne %struct.tb_path* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %36
  br label %105

59:                                               ; preds = %36
  %60 = load %struct.tb_path*, %struct.tb_path** %7, align 8
  %61 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %62 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %61, i32 0, i32 2
  %63 = load %struct.tb_path**, %struct.tb_path*** %62, align 8
  %64 = load i64, i64* @TB_PCI_PATH_DOWN, align 8
  %65 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %63, i64 %64
  store %struct.tb_path* %60, %struct.tb_path** %65, align 8
  %66 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %67 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %66, i32 0, i32 2
  %68 = load %struct.tb_path**, %struct.tb_path*** %67, align 8
  %69 = load i64, i64* @TB_PCI_PATH_DOWN, align 8
  %70 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %68, i64 %69
  %71 = load %struct.tb_path*, %struct.tb_path** %70, align 8
  %72 = call i32 @tb_pci_init_path(%struct.tb_path* %71)
  %73 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %74 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %73, i32 0, i32 0
  %75 = load %struct.tb_port*, %struct.tb_port** %74, align 8
  %76 = call i32 @tb_port_is_pcie_up(%struct.tb_port* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %59
  %79 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %80 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %79, i32 0, i32 0
  %81 = load %struct.tb_port*, %struct.tb_port** %80, align 8
  %82 = call i32 @tb_port_warn(%struct.tb_port* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %105

83:                                               ; preds = %59
  %84 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %85 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %86 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %85, i32 0, i32 1
  %87 = load %struct.tb_port*, %struct.tb_port** %86, align 8
  %88 = icmp ne %struct.tb_port* %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %91 = call i32 @tb_tunnel_warn(%struct.tb_tunnel* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %105

92:                                               ; preds = %83
  %93 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %94 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %93, i32 0, i32 0
  %95 = load %struct.tb_port*, %struct.tb_port** %94, align 8
  %96 = call i32 @tb_pci_port_is_enabled(%struct.tb_port* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %100 = call i32 @tb_tunnel_warn(%struct.tb_tunnel* %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %103 = call i32 @tb_tunnel_dbg(%struct.tb_tunnel* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %104 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  store %struct.tb_tunnel* %104, %struct.tb_tunnel** %3, align 8
  br label %111

105:                                              ; preds = %98, %89, %78, %58
  %106 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %107 = call i32 @tb_tunnel_deactivate(%struct.tb_tunnel* %106)
  br label %108

108:                                              ; preds = %105, %33
  %109 = load %struct.tb_tunnel*, %struct.tb_tunnel** %6, align 8
  %110 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %109)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %3, align 8
  br label %111

111:                                              ; preds = %108, %101, %18, %11
  %112 = load %struct.tb_tunnel*, %struct.tb_tunnel** %3, align 8
  ret %struct.tb_tunnel* %112
}

declare dso_local i32 @tb_pci_port_is_enabled(%struct.tb_port*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb*, i32, i32) #1

declare dso_local %struct.tb_path* @tb_path_discover(%struct.tb_port*, i32, %struct.tb_port*, i32, %struct.tb_port**, i8*) #1

declare dso_local i32 @tb_pci_port_enable(%struct.tb_port*, i32) #1

declare dso_local i32 @tb_pci_init_path(%struct.tb_path*) #1

declare dso_local i32 @tb_port_is_pcie_up(%struct.tb_port*) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_tunnel_warn(%struct.tb_tunnel*, i8*) #1

declare dso_local i32 @tb_tunnel_dbg(%struct.tb_tunnel*, i8*) #1

declare dso_local i32 @tb_tunnel_deactivate(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
