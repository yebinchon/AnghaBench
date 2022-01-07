; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { i64, i64 }
%struct.efm32_spi_ddata = type { i32 }

@REG_CTRL_SYNC = common dso_local global i32 0, align 4
@REG_CTRL_MSBF = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@REG_CTRL_CLKPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@REG_CTRL_CLKPOL = common dso_local global i32 0, align 4
@REG_CTRL = common dso_local global i32 0, align 4
@REG_FRAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_CLKDIV = common dso_local global i32 0, align 4
@REG_CMD_MASTEREN = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CMD_RXEN = common dso_local global i32 0, align 4
@REG_CMD_TXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @efm32_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.efm32_spi_ddata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.efm32_spi_ddata* @spi_master_get_devdata(i32 %13)
  store %struct.efm32_spi_ddata* %14, %struct.efm32_spi_ddata** %6, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i64 [ %17, %19 ], [ %24, %20 ]
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %33, %32
  %39 = phi i64 [ %30, %32 ], [ %37, %33 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %42 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @clk_get_rate(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %46 = load i32, i32* @REG_CTRL_SYNC, align 4
  %47 = load i32, i32* @REG_CTRL_MSBF, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SPI_CPHA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @REG_CTRL_CLKPHA, align 4
  br label %58

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %48, %59
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SPI_CPOL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @REG_CTRL_CLKPOL, align 4
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %60, %71
  %73 = load i32, i32* @REG_CTRL, align 4
  %74 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %45, i32 %72, i32 %73)
  %75 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @REG_FRAME_DATABITS(i32 %76)
  %78 = load i32, i32* @REG_FRAME, align 4
  %79 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %75, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 2, %80
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %9, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %94

86:                                               ; preds = %70
  %87 = load i64, i64* %9, align 8
  %88 = mul i64 2, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @DIV_ROUND_UP(i32 %89, i32 %90)
  %92 = sub nsw i32 %91, 4
  %93 = mul nsw i32 64, %92
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %86, %85
  %95 = load i32, i32* %10, align 4
  %96 = icmp ugt i32 %95, 2097152
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %115

100:                                              ; preds = %94
  %101 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @REG_CLKDIV, align 4
  %104 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %101, i32 %102, i32 %103)
  %105 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %106 = load i32, i32* @REG_CMD_MASTEREN, align 4
  %107 = load i32, i32* @REG_CMD, align 4
  %108 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %105, i32 %106, i32 %107)
  %109 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %110 = load i32, i32* @REG_CMD_RXEN, align 4
  %111 = load i32, i32* @REG_CMD_TXEN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @REG_CMD, align 4
  %114 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %109, i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %100, %97
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.efm32_spi_ddata* @spi_master_get_devdata(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @efm32_spi_write32(%struct.efm32_spi_ddata*, i32, i32) #1

declare dso_local i32 @REG_FRAME_DATABITS(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
