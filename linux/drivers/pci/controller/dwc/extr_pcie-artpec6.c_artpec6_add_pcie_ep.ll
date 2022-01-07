; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_add_pcie_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_add_pcie_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32, %struct.dw_pcie_ep }
%struct.dw_pcie_ep = type { i32, i32, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@pcie_ep_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dbi2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"addr_space\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to initialize endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_pcie*, %struct.platform_device*)* @artpec6_add_pcie_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_add_pcie_ep(%struct.artpec6_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.artpec6_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_pcie_ep*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.dw_pcie*, align 8
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %13, i32 0, i32 0
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %14, align 8
  store %struct.dw_pcie* %15, %struct.dw_pcie** %10, align 8
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %17 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %16, i32 0, i32 1
  store %struct.dw_pcie_ep* %17, %struct.dw_pcie_ep** %7, align 8
  %18 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %7, align 8
  %19 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %18, i32 0, i32 2
  store i32* @pcie_ep_ops, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %20, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %27 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %29 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %35 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %66

38:                                               ; preds = %2
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %39, i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %41, %struct.resource** %8, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %38
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %7, align 8
  %52 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %7, align 8
  %56 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %7, align 8
  %58 = call i32 @dw_pcie_ep_init(%struct.dw_pcie_ep* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61, %44, %33
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dw_pcie_ep_init(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
