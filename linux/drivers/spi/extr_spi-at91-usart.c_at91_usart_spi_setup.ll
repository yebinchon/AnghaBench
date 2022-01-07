; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32*, i32, i32, i32, i32, i32 }
%struct.at91_usart_spi = type { i32 }

@MR = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@US_MR_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@US_MR_CPHA = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@US_MR_LOOP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"setup: bpw %u mode 0x%x -> mr %d %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @at91_usart_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.at91_usart_spi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.at91_usart_spi* @spi_master_get_devdata(i32 %9)
  store %struct.at91_usart_spi* %10, %struct.at91_usart_spi** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %4, align 8
  %15 = load i32, i32* @MR, align 4
  %16 = call i32 @at91_usart_spi_readl(%struct.at91_usart_spi* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SPI_CPOL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @US_MR_CPOL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @US_MR_CPOL, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SPI_CPHA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @US_MR_CPHA, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @US_MR_CPHA, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SPI_LOOP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @US_MR_LOOP, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @US_MR_LOOP, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32* @kzalloc(i32 4, i32 %68)
  store i32* %69, i32** %5, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %75, %64
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 4
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dev_dbg(i32* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89, i32 %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %79, %72
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @at91_usart_spi_readl(%struct.at91_usart_spi*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
