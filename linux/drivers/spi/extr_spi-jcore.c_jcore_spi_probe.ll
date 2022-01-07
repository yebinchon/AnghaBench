; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-jcore.c_jcore_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-jcore.c_jcore_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.jcore_spi = type { i32, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.resource = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@jcore_spi_txrx = common dso_local global i32 0, align 4
@jcore_spi_chipsel = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"could not enable ref_clk\0A\00", align 1
@JCORE_SPI_CTRL_CS_BITS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jcore_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jcore_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.jcore_spi*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__* %18, i32 24)
  store %struct.spi_master* %19, %struct.spi_master** %6, align 8
  %20 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %21 = icmp ne %struct.spi_master* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %2, align 4
  br label %138

24:                                               ; preds = %1
  %25 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 0
  store i32 3, i32* %26, align 8
  %27 = load i32, i32* @SPI_CPOL, align 4
  %28 = load i32, i32* @SPI_CPHA, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SPI_CS_HIGH, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @jcore_spi_txrx, align 4
  %35 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @jcore_spi_chipsel, align 4
  %38 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %39 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %42 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store %struct.device_node* %40, %struct.device_node** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %50 = call %struct.jcore_spi* @spi_master_get_devdata(%struct.spi_master* %49)
  store %struct.jcore_spi* %50, %struct.jcore_spi** %5, align 8
  %51 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %52 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %53 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %52, i32 0, i32 3
  store %struct.spi_master* %51, %struct.spi_master** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.jcore_spi* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 0)
  store %struct.resource* %59, %struct.resource** %7, align 8
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %24
  br label %131

63:                                               ; preds = %24
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.resource*, %struct.resource** %7, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.resource*, %struct.resource** %7, align 8
  %70 = call i32 @resource_size(%struct.resource* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @devm_request_mem_region(%struct.TYPE_9__* %65, i32 %68, i32 %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  br label %131

77:                                               ; preds = %63
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = call i32 @resource_size(%struct.resource* %83)
  %85 = call i32 @devm_ioremap_nocache(%struct.TYPE_9__* %79, i32 %82, i32 %84)
  %86 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %87 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %89 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %77
  br label %131

93:                                               ; preds = %77
  store i32 50000000, i32* %8, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call %struct.clk* @devm_clk_get(%struct.TYPE_9__* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %96, %struct.clk** %9, align 8
  %97 = load %struct.clk*, %struct.clk** %9, align 8
  %98 = call i32 @IS_ERR(%struct.clk* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %93
  %101 = load %struct.clk*, %struct.clk** %9, align 8
  %102 = call i64 @clk_prepare_enable(%struct.clk* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.clk*, %struct.clk** %9, align 8
  %106 = call i32 @clk_get_rate(%struct.clk* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.clk*, %struct.clk** %9, align 8
  %108 = call i32 @clk_disable_unprepare(%struct.clk* %107)
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_warn(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %117 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @JCORE_SPI_CTRL_CS_BITS, align 4
  %119 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %120 = getelementptr inbounds %struct.jcore_spi, %struct.jcore_spi* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.jcore_spi*, %struct.jcore_spi** %5, align 8
  %122 = call i32 @jcore_spi_baudrate(%struct.jcore_spi* %121, i32 400000)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %126 = call i32 @devm_spi_register_master(%struct.TYPE_9__* %124, %struct.spi_master* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %134

130:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %138

131:                                              ; preds = %92, %76, %62
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %129
  %135 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %136 = call i32 @spi_master_put(%struct.spi_master* %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %130, %22
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.jcore_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jcore_spi*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_nocache(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @jcore_spi_baudrate(%struct.jcore_spi*, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_9__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
