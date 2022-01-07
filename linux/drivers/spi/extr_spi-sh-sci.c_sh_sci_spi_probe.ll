; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-sci.c_sh_sci_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-sci.c_sh_sci_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.spi_master = type { i32, i32 }
%struct.sh_sci_spi = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.spi_master*, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate spi master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"platform data is missing\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@sh_sci_spi_chipselect = common dso_local global i32 0, align 4
@sh_sci_spi_txrx_mode0 = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode1 = common dso_local global i32 0, align 4
@SPI_MODE_1 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode2 = common dso_local global i32 0, align 4
@SPI_MODE_2 = common dso_local global i64 0, align 8
@sh_sci_spi_txrx_mode3 = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PIN_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_sci_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_sci_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.sh_sci_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(i32* %9, i32 40)
  store %struct.spi_master* %10, %struct.spi_master** %5, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = icmp eq %struct.spi_master* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = call %struct.sh_sci_spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.sh_sci_spi* %21, %struct.sh_sci_spi** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.sh_sci_spi* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_4__* @dev_get_platdata(i32* %26)
  %28 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %29 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %28, i32 0, i32 3
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %31 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %19
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %144

40:                                               ; preds = %19
  %41 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %42 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %43 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.spi_master* %41, %struct.spi_master** %44, align 8
  %45 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %46 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %51 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.spi_master*, %struct.spi_master** %52, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  %55 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %56 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %61 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.spi_master*, %struct.spi_master** %62, align 8
  %64 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* @sh_sci_spi_chipselect, align 4
  %66 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %67 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @sh_sci_spi_txrx_mode0, align 4
  %70 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %71 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @SPI_MODE_0, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @sh_sci_spi_txrx_mode1, align 4
  %77 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %78 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @SPI_MODE_1, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* @sh_sci_spi_txrx_mode2, align 4
  %84 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %85 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @SPI_MODE_2, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* @sh_sci_spi_txrx_mode3, align 4
  %91 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %92 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SPI_MODE_3, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = call %struct.resource* @platform_get_resource(%struct.platform_device* %97, i32 %98, i32 0)
  store %struct.resource* %99, %struct.resource** %4, align 8
  %100 = load %struct.resource*, %struct.resource** %4, align 8
  %101 = icmp eq %struct.resource* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %40
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %144

105:                                              ; preds = %40
  %106 = load %struct.resource*, %struct.resource** %4, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.resource*, %struct.resource** %4, align 8
  %110 = call i32 @resource_size(%struct.resource* %109)
  %111 = call i32 @ioremap(i32 %108, i32 %110)
  %112 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %113 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %115 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @ENXIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %144

121:                                              ; preds = %105
  %122 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %123 = call i32 @SCSPTR(%struct.sh_sci_spi* %122)
  %124 = call i32 @ioread8(i32 %123)
  %125 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %126 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %128 = load i32, i32* @PIN_INIT, align 4
  %129 = call i32 @setbits(%struct.sh_sci_spi* %127, i32 %128, i32 1)
  %130 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %131 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %130, i32 0, i32 0
  %132 = call i32 @spi_bitbang_start(%struct.TYPE_3__* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %152

136:                                              ; preds = %121
  %137 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %138 = load i32, i32* @PIN_INIT, align 4
  %139 = call i32 @setbits(%struct.sh_sci_spi* %137, i32 %138, i32 0)
  %140 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %141 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @iounmap(i32 %142)
  br label %144

144:                                              ; preds = %136, %118, %102, %34
  %145 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %6, align 8
  %146 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load %struct.spi_master*, %struct.spi_master** %147, align 8
  %149 = call i32 @spi_master_put(%struct.spi_master* %148)
  br label %150

150:                                              ; preds = %144, %13
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %135
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.sh_sci_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_sci_spi*) #1

declare dso_local %struct.TYPE_4__* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @SCSPTR(%struct.sh_sci_spi*) #1

declare dso_local i32 @setbits(%struct.sh_sci_spi*, i32, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_3__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
