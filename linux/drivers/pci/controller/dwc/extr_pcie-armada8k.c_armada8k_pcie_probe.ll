; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dw_pcie = type { i64, i32*, %struct.device* }
%struct.armada8k_pcie = type { i64, i64, %struct.dw_pcie* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't remap regs base %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada8k_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada8k_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.armada8k_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  %14 = bitcast i8* %13 to %struct.armada8k_pcie*
  store %struct.armada8k_pcie* %14, %struct.armada8k_pcie** %5, align 8
  %15 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %16 = icmp ne %struct.armada8k_pcie* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %147

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  %24 = bitcast i8* %23 to %struct.dw_pcie*
  store %struct.dw_pcie* %24, %struct.dw_pcie** %4, align 8
  %25 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %26 = icmp ne %struct.dw_pcie* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %147

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %33 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %32, i32 0, i32 2
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %35 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %34, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %35, align 8
  %36 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %37 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %38 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %37, i32 0, i32 2
  store %struct.dw_pcie* %36, %struct.dw_pcie** %38, align 8
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i8* @devm_clk_get(%struct.device* %39, i8* null)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %43 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %45 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @IS_ERR(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %51 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @PTR_ERR(i64 %52)
  store i32 %53, i32* %2, align 4
  br label %147

54:                                               ; preds = %30
  %55 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %56 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @clk_prepare_enable(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %147

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i8* @devm_clk_get(%struct.device* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %68 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %70 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @EPROBE_DEFER, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i64 @ERR_PTR(i32 %73)
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %141

79:                                               ; preds = %63
  %80 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %81 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @IS_ERR(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %87 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @clk_prepare_enable(i64 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %136

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %79
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load i32, i32* @IORESOURCE_MEM, align 4
  %97 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %95, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %97, %struct.resource** %7, align 8
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load %struct.resource*, %struct.resource** %7, align 8
  %100 = call i64 @devm_pci_remap_cfg_resource(%struct.device* %98, %struct.resource* %99)
  %101 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %102 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %104 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @IS_ERR(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load %struct.resource*, %struct.resource** %7, align 8
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %110)
  %112 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %113 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @PTR_ERR(i64 %114)
  store i32 %115, i32* %8, align 4
  br label %136

116:                                              ; preds = %94
  %117 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %118 = call i32 @armada8k_pcie_setup_phys(%struct.armada8k_pcie* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %136

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.armada8k_pcie* %124)
  %126 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = call i32 @armada8k_add_pcie_port(%struct.armada8k_pcie* %126, %struct.platform_device* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %133

132:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %147

133:                                              ; preds = %131
  %134 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %135 = call i32 @armada8k_pcie_disable_phys(%struct.armada8k_pcie* %134)
  br label %136

136:                                              ; preds = %133, %121, %108, %92
  %137 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %138 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @clk_disable_unprepare(i64 %139)
  br label %141

141:                                              ; preds = %136, %76
  %142 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %5, align 8
  %143 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @clk_disable_unprepare(i64 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %141, %132, %61, %49, %27, %17
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.resource*) #1

declare dso_local i32 @armada8k_pcie_setup_phys(%struct.armada8k_pcie*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.armada8k_pcie*) #1

declare dso_local i32 @armada8k_add_pcie_port(%struct.armada8k_pcie*, %struct.platform_device*) #1

declare dso_local i32 @armada8k_pcie_disable_phys(%struct.armada8k_pcie*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
