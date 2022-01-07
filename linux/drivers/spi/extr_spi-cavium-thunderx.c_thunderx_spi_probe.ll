; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cavium-thunderx.c_thunderx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cavium-thunderx.c_thunderx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.spi_master = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_spi = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYS_FREQ_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Set system clock to %u\0A\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@octeon_spi_transfer_one_message = common dso_local global i32 0, align 4
@OCTEON_SPI_MAX_CLOCK_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @thunderx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_spi_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca %struct.octeon_spi*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.spi_master* @spi_alloc_master(%struct.device* %12, i32 40)
  store %struct.spi_master* %13, %struct.spi_master** %7, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %15 = icmp ne %struct.spi_master* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %21 = call %struct.octeon_spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.octeon_spi* %21, %struct.octeon_spi** %8, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pcim_enable_device(%struct.pci_dev* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %143

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @DRV_NAME, align 4
  %30 = call i32 @pci_request_regions(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %143

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_resource_len(%struct.pci_dev* %36, i32 0)
  %38 = call i32 @pcim_iomap(%struct.pci_dev* %35, i32 0, i32 %37)
  %39 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %40 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %42 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %143

48:                                               ; preds = %34
  %49 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %50 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 4096, i32* %51, align 8
  %52 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %53 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 4104, i32* %54, align 4
  %55 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %56 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 4112, i32* %57, align 8
  %58 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %59 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 4224, i32* %60, align 4
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @devm_clk_get(%struct.device* %61, i32* null)
  %63 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %64 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %66 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %48
  %71 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %72 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %9, align 4
  br label %143

75:                                               ; preds = %48
  %76 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %77 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @clk_prepare_enable(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %143

83:                                               ; preds = %75
  %84 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %85 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @clk_get_rate(i32 %86)
  %88 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %89 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %91 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = load i64, i64* @SYS_FREQ_DEFAULT, align 8
  %96 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %97 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %83
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %101 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dev_info(%struct.device* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %102)
  %104 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %105 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %104, i32 0, i32 0
  store i32 4, i32* %105, align 4
  %106 = load i32, i32* @SPI_CPHA, align 4
  %107 = load i32, i32* @SPI_CPOL, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @SPI_CS_HIGH, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SPI_LSB_FIRST, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SPI_3WIRE, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %116 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @octeon_spi_transfer_one_message, align 4
  %118 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %119 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = call i32 @SPI_BPW_MASK(i32 8)
  %121 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %122 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @OCTEON_SPI_MAX_CLOCK_HZ, align 4
  %124 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %125 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %131 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %135 = call i32 @pci_set_drvdata(%struct.pci_dev* %133, %struct.spi_master* %134)
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %138 = call i32 @devm_spi_register_master(%struct.device* %136, %struct.spi_master* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %98
  br label %143

142:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %151

143:                                              ; preds = %141, %82, %70, %45, %33, %26
  %144 = load %struct.octeon_spi*, %struct.octeon_spi** %8, align 8
  %145 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_disable_unprepare(i32 %146)
  %148 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %149 = call i32 @spi_master_put(%struct.spi_master* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %142, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.octeon_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.spi_master*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
