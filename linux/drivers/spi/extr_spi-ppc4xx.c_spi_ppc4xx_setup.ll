; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.spi_ppc4xx_cs*, i32, i32 }
%struct.spi_ppc4xx_cs = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"invalid max_speed_hz (must be non-zero)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_PPC4XX_MODE_SPE = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CLK_MODE0 = common dso_local global i32 0, align 4
@SPI_CLK_MODE1 = common dso_local global i32 0, align 4
@SPI_CLK_MODE2 = common dso_local global i32 0, align 4
@SPI_CLK_MODE3 = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_PPC4XX_MODE_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_ppc4xx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_ppc4xx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 1
  %7 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %6, align 8
  store %struct.spi_ppc4xx_cs* %7, %struct.spi_ppc4xx_cs** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 2
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %20 = icmp eq %struct.spi_ppc4xx_cs* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spi_ppc4xx_cs* @kzalloc(i32 4, i32 %22)
  store %struct.spi_ppc4xx_cs* %23, %struct.spi_ppc4xx_cs** %4, align 8
  %24 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %25 = icmp ne %struct.spi_ppc4xx_cs* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %21
  %30 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 1
  store %struct.spi_ppc4xx_cs* %30, %struct.spi_ppc4xx_cs** %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load i32, i32* @SPI_PPC4XX_MODE_SPE, align 4
  %35 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %36 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SPI_CPHA, align 4
  %41 = load i32, i32* @SPI_CPOL, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  switch i32 %43, label %68 [
    i32 131, label %44
    i32 130, label %50
    i32 129, label %56
    i32 128, label %62
  ]

44:                                               ; preds = %33
  %45 = load i32, i32* @SPI_CLK_MODE0, align 4
  %46 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %47 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %68

50:                                               ; preds = %33
  %51 = load i32, i32* @SPI_CLK_MODE1, align 4
  %52 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %53 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %68

56:                                               ; preds = %33
  %57 = load i32, i32* @SPI_CLK_MODE2, align 4
  %58 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %59 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %68

62:                                               ; preds = %33
  %63 = load i32, i32* @SPI_CLK_MODE3, align 4
  %64 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %65 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %33, %62, %56, %50, %44
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SPI_LSB_FIRST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @SPI_PPC4XX_MODE_RD, align 4
  %77 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %78 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %68
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %26, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.spi_ppc4xx_cs* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
