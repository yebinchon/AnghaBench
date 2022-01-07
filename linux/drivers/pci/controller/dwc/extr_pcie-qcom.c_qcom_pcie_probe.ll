; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-qcom.c_qcom_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.pcie_port = type { i32, i32* }
%struct.dw_pcie = type { i8*, %struct.pcie_port, i32*, %struct.device* }
%struct.qcom_pcie = type { i8*, %struct.TYPE_2__*, i8*, i8*, i8*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 (%struct.qcom_pcie*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"perst\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"parf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"elbi\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pciephy\00", align 1
@qcom_pcie_dw_ops = common dso_local global i32 0, align 4
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pcie_port*, align 8
  %7 = alloca %struct.dw_pcie*, align 8
  %8 = alloca %struct.qcom_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  %15 = bitcast i8* %14 to %struct.qcom_pcie*
  store %struct.qcom_pcie* %15, %struct.qcom_pcie** %8, align 8
  %16 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %17 = icmp ne %struct.qcom_pcie* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %207

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(%struct.device* %22, i32 40, i32 %23)
  %25 = bitcast i8* %24 to %struct.dw_pcie*
  store %struct.dw_pcie* %25, %struct.dw_pcie** %7, align 8
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %27 = icmp ne %struct.dw_pcie* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %207

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @pm_runtime_enable(%struct.device* %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @pm_runtime_get_sync(%struct.device* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @pm_runtime_disable(%struct.device* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %207

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %45 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %44, i32 0, i32 3
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %47 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %46, i32 0, i32 2
  store i32* @dw_pcie_ops, i32** %47, align 8
  %48 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %49 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %48, i32 0, i32 1
  store %struct.pcie_port* %49, %struct.pcie_port** %6, align 8
  %50 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %51 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %52 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %51, i32 0, i32 5
  store %struct.dw_pcie* %50, %struct.dw_pcie** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %53)
  %55 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %56 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %55, i32 0, i32 1
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %59 = call i8* @devm_gpiod_get_optional(%struct.device* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %61 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %63 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %42
  %68 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %69 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %9, align 4
  br label %201

72:                                               ; preds = %42
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %75, %struct.resource** %5, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.resource*, %struct.resource** %5, align 8
  %78 = call i8* @devm_ioremap_resource(%struct.device* %76, %struct.resource* %77)
  %79 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %80 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %82 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %88 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %9, align 4
  br label %201

91:                                               ; preds = %72
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load i32, i32* @IORESOURCE_MEM, align 4
  %94 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %92, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %94, %struct.resource** %5, align 8
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.resource*, %struct.resource** %5, align 8
  %97 = call i8* @devm_pci_remap_cfg_resource(%struct.device* %95, %struct.resource* %96)
  %98 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %99 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %101 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %91
  %106 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %107 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @PTR_ERR(i8* %108)
  store i32 %109, i32* %9, align 4
  br label %201

110:                                              ; preds = %91
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = load i32, i32* @IORESOURCE_MEM, align 4
  %113 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %111, i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %113, %struct.resource** %5, align 8
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load %struct.resource*, %struct.resource** %5, align 8
  %116 = call i8* @devm_ioremap_resource(%struct.device* %114, %struct.resource* %115)
  %117 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %118 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %120 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %126 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @PTR_ERR(i8* %127)
  store i32 %128, i32* %9, align 4
  br label %201

129:                                              ; preds = %110
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i8* @devm_phy_optional_get(%struct.device* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %133 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %135 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %141 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %9, align 4
  br label %201

144:                                              ; preds = %129
  %145 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %146 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32 (%struct.qcom_pcie*)*, i32 (%struct.qcom_pcie*)** %148, align 8
  %150 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %151 = call i32 %149(%struct.qcom_pcie* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %201

155:                                              ; preds = %144
  %156 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %157 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %156, i32 0, i32 1
  store i32* @qcom_pcie_dw_ops, i32** %157, align 8
  %158 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %159 = call i64 @IS_ENABLED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %155
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = call i32 @platform_get_irq_byname(%struct.platform_device* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %164 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %165 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %167 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %172 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %9, align 4
  br label %201

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %155
  %176 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %177 = getelementptr inbounds %struct.qcom_pcie, %struct.qcom_pcie* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @phy_init(i8* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @pm_runtime_disable(%struct.device* %184)
  br label %201

186:                                              ; preds = %175
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = load %struct.qcom_pcie*, %struct.qcom_pcie** %8, align 8
  %189 = call i32 @platform_set_drvdata(%struct.platform_device* %187, %struct.qcom_pcie* %188)
  %190 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %191 = call i32 @dw_pcie_host_init(%struct.pcie_port* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 @pm_runtime_disable(%struct.device* %198)
  br label %201

200:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %207

201:                                              ; preds = %194, %182, %170, %154, %139, %124, %105, %86, %67
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = call i32 @pm_runtime_put(%struct.device* %202)
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = call i32 @pm_runtime_disable(%struct.device* %204)
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %201, %200, %38, %28, %18
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @phy_init(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_pcie*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
