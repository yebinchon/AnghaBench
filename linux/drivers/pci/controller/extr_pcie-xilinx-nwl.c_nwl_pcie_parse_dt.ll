; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { i32, i32, i8*, i32, i8*, i32, i8*, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"breg\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pcireg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"intx\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get intx IRQ %d\0A\00", align 1
@nwl_pcie_leg_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*, %struct.platform_device*)* @nwl_pcie_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_pcie_parse_dt(%struct.nwl_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nwl_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %9 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %8, i32 0, i32 7
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %11, i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %13, %struct.resource** %7, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load %struct.resource*, %struct.resource** %7, align 8
  %16 = call i8* @devm_ioremap_resource(%struct.device* %14, %struct.resource* %15)
  %17 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %18 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %20 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %19, i32 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %26 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %25, i32 0, i32 6
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %34 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = call i8* @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %42 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %44 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %50 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %3, align 4
  br label %107

53:                                               ; preds = %29
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %58 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %59, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %61, %struct.resource** %7, align 8
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %66 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %68 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %74 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %53
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %82 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %84 = call i32 @platform_get_irq_byname(%struct.platform_device* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %86 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %88 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %77
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %94 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %98 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %3, align 4
  br label %107

100:                                              ; preds = %77
  %101 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %102 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @nwl_pcie_leg_handler, align 4
  %105 = load %struct.nwl_pcie*, %struct.nwl_pcie** %4, align 8
  %106 = call i32 @irq_set_chained_handler_and_data(i32 %103, i32 %104, %struct.nwl_pcie* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %91, %72, %48, %24
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.nwl_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
