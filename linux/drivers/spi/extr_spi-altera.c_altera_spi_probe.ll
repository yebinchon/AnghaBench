; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.altera_spi = type { i64, i64, i64 }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@altera_spi_txrx = common dso_local global i32 0, align 4
@altera_spi_set_cs = common dso_local global i32 0, align 4
@ALTERA_SPI_CONTROL = common dso_local global i64 0, align 8
@ALTERA_SPI_STATUS = common dso_local global i64 0, align 8
@ALTERA_SPI_STATUS_RRDY_MSK = common dso_local global i32 0, align 4
@ALTERA_SPI_RXDATA = common dso_local global i64 0, align 8
@altera_spi_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"base %p, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altera_spi*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_7__* %10, i32 24)
  store %struct.spi_master* %11, %struct.spi_master** %5, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %140

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %23 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %22, i32 0, i32 0
  store i32 16, i32* %23, align 4
  %24 = load i32, i32* @SPI_CS_HIGH, align 4
  %25 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 16)
  %28 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @altera_spi_txrx, align 4
  %38 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %39 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @altera_spi_set_cs, align 4
  %41 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %42 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %44 = call %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master* %43)
  store %struct.altera_spi* %44, %struct.altera_spi** %4, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %45, i32 0)
  %47 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %48 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %50 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @IS_ERR(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %16
  %55 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %56 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @PTR_ERR(i64 %57)
  store i32 %58, i32* %6, align 4
  br label %136

59:                                               ; preds = %16
  %60 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %61 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %63 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %66 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ALTERA_SPI_CONTROL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i64 %64, i64 %69)
  %71 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %72 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ALTERA_SPI_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i64 0, i64 %75)
  %77 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %78 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ALTERA_SPI_STATUS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  %83 = load i32, i32* @ALTERA_SPI_STATUS_RRDY_MSK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %59
  %87 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %88 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ALTERA_SPI_RXDATA, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl(i64 %91)
  br label %93

93:                                               ; preds = %86, %59
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i64 @platform_get_irq(%struct.platform_device* %94, i32 0)
  %96 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %97 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %99 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %93
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %106 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @altera_spi_irq, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %113 = call i32 @devm_request_irq(%struct.TYPE_7__* %104, i64 %107, i32 %108, i32 0, i32 %111, %struct.spi_master* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %136

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %93
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %122 = call i32 @devm_spi_register_master(%struct.TYPE_7__* %120, %struct.spi_master* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %136

126:                                              ; preds = %118
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %130 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.altera_spi*, %struct.altera_spi** %4, align 8
  %133 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @dev_info(%struct.TYPE_7__* %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %131, i64 %134)
  store i32 0, i32* %2, align 4
  br label %140

136:                                              ; preds = %125, %116, %54
  %137 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %138 = call i32 @spi_master_put(%struct.spi_master* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %126, %14
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local %struct.altera_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i64, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_7__*, %struct.spi_master*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i64, i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
