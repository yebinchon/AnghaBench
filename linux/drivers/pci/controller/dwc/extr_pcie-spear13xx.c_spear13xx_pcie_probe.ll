; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dw_pcie = type { i32, i32*, %struct.device* }
%struct.spear13xx_pcie = type { i32, i32, i32, i32, %struct.dw_pcie* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcie-phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"probe deferred\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"couldn't get pcie-phy\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"couldn't get clk for pcie\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"couldn't enable clk for pcie\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"couldn't remap dbi base %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"st,pcie-is-gen1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear13xx_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.spear13xx_pcie*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 24, i32 %16)
  %18 = bitcast i8* %17 to %struct.spear13xx_pcie*
  store %struct.spear13xx_pcie* %18, %struct.spear13xx_pcie** %6, align 8
  %19 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %20 = icmp ne %struct.spear13xx_pcie* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %153

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %25, i32 24, i32 %26)
  %28 = bitcast i8* %27 to %struct.dw_pcie*
  store %struct.dw_pcie* %28, %struct.dw_pcie** %5, align 8
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %30 = icmp ne %struct.dw_pcie* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %153

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %37 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %36, i32 0, i32 2
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %39 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %38, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %39, align 8
  %40 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %41 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %42 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %41, i32 0, i32 4
  store %struct.dw_pcie* %40, %struct.dw_pcie** %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @devm_phy_get(%struct.device* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %46 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %48 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %34
  %53 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %54 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %67

64:                                               ; preds = %52
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %153

69:                                               ; preds = %34
  %70 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %71 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @phy_init(i32 %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @devm_clk_get(%struct.device* %74, i32* null)
  %76 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %77 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %79 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %69
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %87 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %153

90:                                               ; preds = %69
  %91 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %92 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_prepare_enable(i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %153

101:                                              ; preds = %90
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %102, i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %104, %struct.resource** %8, align 8
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.resource*, %struct.resource** %8, align 8
  %107 = call i32 @devm_pci_remap_cfg_resource(%struct.device* %105, %struct.resource* %106)
  %108 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %109 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %111 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %101
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.resource*, %struct.resource** %8, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), %struct.resource* %117)
  %119 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %120 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %9, align 4
  br label %147

123:                                              ; preds = %101
  %124 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %125 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 8192
  %128 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %129 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.device_node*, %struct.device_node** %7, align 8
  %131 = call i64 @of_property_read_bool(%struct.device_node* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %135 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %123
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %139 = call i32 @platform_set_drvdata(%struct.platform_device* %137, %struct.spear13xx_pcie* %138)
  %140 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = call i32 @spear13xx_add_pcie_port(%struct.spear13xx_pcie* %140, %struct.platform_device* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %147

146:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %153

147:                                              ; preds = %145, %115
  %148 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %6, align 8
  %149 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @clk_disable_unprepare(i32 %150)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %146, %97, %83, %67, %31, %21
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear13xx_pcie*) #1

declare dso_local i32 @spear13xx_add_pcie_port(%struct.spear13xx_pcie*, %struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
