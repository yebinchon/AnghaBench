; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dw_pcie = type { i8*, i32*, %struct.device* }
%struct.artpec6_pcie = type { i32, i32, i8*, i8*, %struct.dw_pcie* }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }
%struct.artpec_pcie_of_data = type { i64, i64 }

@artpec6_pcie_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"axis,syscon-pcie\00", align 1
@CONFIG_PCIE_ARTPEC6_HOST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_PCIE_ARTPEC6_EP = common dso_local global i32 0, align 4
@PCIECFG = common dso_local global i32 0, align 4
@PCIECFG_DEVICE_TYPE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"INVALID device type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @artpec6_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.artpec6_pcie*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca %struct.artpec_pcie_of_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load i32, i32* @artpec6_pcie_of_match, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.of_device_id* @of_match_device(i32 %17, %struct.device* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %10, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.artpec_pcie_of_data*
  store %struct.artpec_pcie_of_data* %29, %struct.artpec_pcie_of_data** %11, align 8
  %30 = load %struct.artpec_pcie_of_data*, %struct.artpec_pcie_of_data** %11, align 8
  %31 = getelementptr inbounds %struct.artpec_pcie_of_data, %struct.artpec_pcie_of_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load %struct.artpec_pcie_of_data*, %struct.artpec_pcie_of_data** %11, align 8
  %35 = getelementptr inbounds %struct.artpec_pcie_of_data, %struct.artpec_pcie_of_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(%struct.device* %38, i32 32, i32 %39)
  %41 = bitcast i8* %40 to %struct.artpec6_pcie*
  store %struct.artpec6_pcie* %41, %struct.artpec6_pcie** %6, align 8
  %42 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %43 = icmp ne %struct.artpec6_pcie* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %183

47:                                               ; preds = %25
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @devm_kzalloc(%struct.device* %48, i32 24, i32 %49)
  %51 = bitcast i8* %50 to %struct.dw_pcie*
  store %struct.dw_pcie* %51, %struct.dw_pcie** %5, align 8
  %52 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %53 = icmp ne %struct.dw_pcie* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %183

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %60 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %59, i32 0, i32 2
  store %struct.device* %58, %struct.device** %60, align 8
  %61 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %62 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %61, i32 0, i32 1
  store i32* @dw_pcie_ops, i32** %62, align 8
  %63 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %64 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %65 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %64, i32 0, i32 4
  store %struct.dw_pcie* %63, %struct.dw_pcie** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %68 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %71 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %72, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %74, %struct.resource** %7, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.resource*, %struct.resource** %7, align 8
  %77 = call i8* @devm_ioremap_resource(%struct.device* %75, %struct.resource* %76)
  %78 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %79 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %81 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %57
  %86 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %87 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %183

90:                                               ; preds = %57
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load i32, i32* @IORESOURCE_MEM, align 4
  %93 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %91, i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %93, %struct.resource** %8, align 8
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.resource*, %struct.resource** %8, align 8
  %96 = call i8* @devm_ioremap_resource(%struct.device* %94, %struct.resource* %95)
  %97 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %98 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %100 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %90
  %105 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %106 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %2, align 4
  br label %183

109:                                              ; preds = %90
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @syscon_regmap_lookup_by_phandle(i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %115 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %117 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @IS_ERR(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %123 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @PTR_ERR(i8* %124)
  store i32 %125, i32* %2, align 4
  br label %183

126:                                              ; preds = %109
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.artpec6_pcie* %128)
  %130 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %131 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %176 [
    i32 128, label %133
    i32 129, label %149
  ]

133:                                              ; preds = %126
  %134 = load i32, i32* @CONFIG_PCIE_ARTPEC6_HOST, align 4
  %135 = call i32 @IS_ENABLED(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %183

140:                                              ; preds = %133
  %141 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @artpec6_add_pcie_port(%struct.artpec6_pcie* %141, %struct.platform_device* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %2, align 4
  br label %183

148:                                              ; preds = %140
  br label %182

149:                                              ; preds = %126
  %150 = load i32, i32* @CONFIG_PCIE_ARTPEC6_EP, align 4
  %151 = call i32 @IS_ENABLED(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %183

156:                                              ; preds = %149
  %157 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %158 = load i32, i32* @PCIECFG, align 4
  %159 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* @PCIECFG_DEVICE_TYPE_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %14, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %14, align 4
  %164 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %165 = load i32, i32* @PCIECFG, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %164, i32 %165, i32 %166)
  %168 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = call i32 @artpec6_add_pcie_ep(%struct.artpec6_pcie* %168, %struct.platform_device* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %183

175:                                              ; preds = %156
  br label %182

176:                                              ; preds = %126
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %6, align 8
  %179 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_err(%struct.device* %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %176, %175, %148
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %173, %153, %146, %137, %121, %104, %85, %54, %44, %22
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.artpec6_pcie*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @artpec6_add_pcie_port(%struct.artpec6_pcie*, %struct.platform_device*) #1

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @artpec6_pcie_writel(%struct.artpec6_pcie*, i32, i32) #1

declare dso_local i32 @artpec6_add_pcie_ep(%struct.artpec6_pcie*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
