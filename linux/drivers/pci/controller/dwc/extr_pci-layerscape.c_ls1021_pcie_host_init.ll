; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-layerscape.c_ls1021_pcie_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-layerscape.c_ls1021_pcie_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.ls_pcie = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"fsl,pcie-scfg\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @ls1021_pcie_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1021_pcie_host_init(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.ls_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %9 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %10 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %9)
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = call %struct.ls_pcie* @to_ls_pcie(%struct.dw_pcie* %11)
  store %struct.ls_pcie* %12, %struct.ls_pcie** %5, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @syscon_regmap_lookup_by_phandle(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %21 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %23 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %29 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %35 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %42 = call i64 @of_property_read_u32_array(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %41, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %46 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %37
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ls_pcie*, %struct.ls_pcie** %5, align 8
  %53 = getelementptr inbounds %struct.ls_pcie, %struct.ls_pcie* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %55 = call i32 @ls_pcie_host_init(%struct.pcie_port* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %44, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.ls_pcie* @to_ls_pcie(%struct.dw_pcie*) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32_array(i32, i8*, i32*, i32) #1

declare dso_local i32 @ls_pcie_host_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
