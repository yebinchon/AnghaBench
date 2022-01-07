; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_init_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_init_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa2xx_spi_controller = type { i32, i32, i32, i32, i32, i32, i32, %struct.ssp_device }
%struct.ssp_device = type { i32, i32, %struct.platform_device*, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.acpi_device = type { i32 }
%struct.resource = type { i32 }
%struct.acpi_device_id = type { i64 }
%struct.pci_device_id = type { i64 }
%struct.of_device_id = type { i64 }

@pxa2xx_spi_pci_compound_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@pxa2xx_spi_idma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa2xx_spi_controller* (%struct.platform_device*)* @pxa2xx_spi_init_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa2xx_spi_controller* @pxa2xx_spi_init_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.pxa2xx_spi_controller*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa2xx_spi_controller*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.ssp_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.acpi_device_id*, align 8
  %9 = alloca %struct.pci_device_id*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %8, align 8
  store %struct.pci_device_id* null, %struct.pci_device_id** %9, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %10, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_9__* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.of_device_id* @of_match_device(i32 %26, %struct.TYPE_9__* %28)
  store %struct.of_device_id* %29, %struct.of_device_id** %10, align 8
  br label %61

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @dev_is_pci(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @pxa2xx_spi_pci_compound_match, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @to_pci_dev(i32 %42)
  %44 = call %struct.pci_device_id* @pci_match_id(i32 %38, i32 %43)
  store %struct.pci_device_id* %44, %struct.pci_device_id** %9, align 8
  br label %60

45:                                               ; preds = %30
  %46 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %47 = icmp ne %struct.acpi_device* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.acpi_device_id* @acpi_match_device(i32 %54, %struct.TYPE_9__* %56)
  store %struct.acpi_device_id* %57, %struct.acpi_device_id** %8, align 8
  br label %59

58:                                               ; preds = %45
  store %struct.pxa2xx_spi_controller* null, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %20
  %62 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %63 = icmp ne %struct.acpi_device_id* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %66 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  br label %88

69:                                               ; preds = %61
  %70 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %71 = icmp ne %struct.pci_device_id* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %74 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  br label %87

77:                                               ; preds = %69
  %78 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %79 = icmp ne %struct.of_device_id* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %82 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  br label %86

85:                                               ; preds = %77
  store %struct.pxa2xx_spi_controller* null, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.pxa2xx_spi_controller* @devm_kzalloc(%struct.TYPE_9__* %90, i32 64, i32 %91)
  store %struct.pxa2xx_spi_controller* %92, %struct.pxa2xx_spi_controller** %4, align 8
  %93 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %94 = icmp ne %struct.pxa2xx_spi_controller* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  store %struct.pxa2xx_spi_controller* null, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

96:                                               ; preds = %88
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = call %struct.resource* @platform_get_resource(%struct.platform_device* %97, i32 %98, i32 0)
  store %struct.resource* %99, %struct.resource** %7, align 8
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = icmp ne %struct.resource* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store %struct.pxa2xx_spi_controller* null, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

103:                                              ; preds = %96
  %104 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %105 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %104, i32 0, i32 7
  store %struct.ssp_device* %105, %struct.ssp_device** %6, align 8
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %110 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %7, align 8
  %114 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %112, %struct.resource* %113)
  %115 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %116 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %118 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  store %struct.pxa2xx_spi_controller* null, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

123:                                              ; preds = %103
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @devm_clk_get(%struct.TYPE_9__* %125, i32* null)
  %127 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %128 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = call i32 @platform_get_irq(%struct.platform_device* %129, i32 0)
  %131 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %132 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %135 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %138 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %137, i32 0, i32 2
  store %struct.platform_device* %136, %struct.platform_device** %138, align 8
  %139 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %140 = call i32 @pxa2xx_spi_get_port_id(%struct.acpi_device* %139)
  %141 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %142 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @of_property_read_bool(i64 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %149 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %151 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %153 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %155 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  store %struct.pxa2xx_spi_controller* %156, %struct.pxa2xx_spi_controller** %2, align 8
  br label %157

157:                                              ; preds = %123, %122, %102, %95, %85, %58
  %158 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %2, align 8
  ret %struct.pxa2xx_spi_controller* %158
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.TYPE_9__*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @dev_is_pci(i32) #1

declare dso_local %struct.pci_device_id* @pci_match_id(i32, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.pxa2xx_spi_controller* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pxa2xx_spi_get_port_id(%struct.acpi_device*) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
