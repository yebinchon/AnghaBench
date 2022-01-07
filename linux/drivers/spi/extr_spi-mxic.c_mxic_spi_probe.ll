; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.resource = type { i32 }
%struct.mxic_spi = type { i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ps_clk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"send_clk\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"send_dly_clk\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@mxic_spi_mem_ops = common dso_local global i32 0, align 4
@mxic_spi_set_cs = common dso_local global i32 0, align 4
@mxic_spi_transfer_one = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxic_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.mxic_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__* %9, i32 32)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.spi_master* %18)
  %20 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %21 = call %struct.mxic_spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.mxic_spi* %21, %struct.mxic_spi** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i8* @devm_clk_get(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %33 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %35 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %16
  %40 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %41 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %146

44:                                               ; preds = %16
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i8* @devm_clk_get(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %49 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %51 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %57 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %2, align 4
  br label %146

60:                                               ; preds = %44
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i8* @devm_clk_get(%struct.TYPE_9__* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %65 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %67 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %73 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %146

76:                                               ; preds = %60
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %77, i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %79, %struct.resource** %5, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %81, %struct.resource* %82)
  %84 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %85 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %87 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %93 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  store i32 %95, i32* %2, align 4
  br label %146

96:                                               ; preds = %76
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %98)
  %100 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %101 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %103 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %105 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %104, i32 0, i32 6
  store i32* @mxic_spi_mem_ops, i32** %105, align 8
  %106 = load i32, i32* @mxic_spi_set_cs, align 4
  %107 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %108 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @mxic_spi_transfer_one, align 4
  %110 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %111 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = call i32 @SPI_BPW_MASK(i32 8)
  %113 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %114 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SPI_CPOL, align 4
  %116 = load i32, i32* @SPI_CPHA, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SPI_RX_DUAL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SPI_TX_DUAL, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @SPI_RX_QUAD, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @SPI_TX_QUAD, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %127 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %129 = call i32 @mxic_spi_hw_init(%struct.mxic_spi* %128)
  %130 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %131 = call i32 @spi_register_master(%struct.spi_master* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %96
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_9__* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %139

138:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %146

139:                                              ; preds = %134
  %140 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %141 = call i32 @spi_master_put(%struct.spi_master* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %138, %91, %71, %55, %39, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.mxic_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @mxic_spi_hw_init(%struct.mxic_spi*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
