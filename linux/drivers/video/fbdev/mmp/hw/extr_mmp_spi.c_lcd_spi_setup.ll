; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_spi.c_lcd_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_spi.c_lcd_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }

@LCD_SPU_SPI_CTRL = common dso_local global i32 0, align 4
@SPU_IOPAD_CONTROL = common dso_local global i32 0, align 4
@CFG_IOPADMODE_MASK = common dso_local global i32 0, align 4
@IOPAD_DUMB18SPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lcd_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @spi_master_get_devdata(i32 %7)
  %9 = inttoptr i64 %8 to i8**
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = call i32 @CFG_SCLKCNT(i32 16)
  %12 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CFG_TXBITS(i32 %14)
  %16 = or i32 %11, %15
  %17 = call i32 @CFG_SPI_SEL(i32 1)
  %18 = or i32 %16, %17
  %19 = call i32 @CFG_SPI_ENA(i32 1)
  %20 = or i32 %18, %19
  %21 = call i32 @CFG_SPI_3W4WB(i32 1)
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @LCD_SPU_SPI_CTRL, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = call i32 @writel(i32 %23, i8* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @SPU_IOPAD_CONTROL, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = call i32 @readl_relaxed(i8* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CFG_IOPADMODE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @IOPAD_DUMB18SPI, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load i32, i32* @IOPAD_DUMB18SPI, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @CFG_IOPADMODE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = or i32 %40, %44
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* @SPU_IOPAD_CONTROL, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = call i32 @writel_relaxed(i32 %45, i8* %49)
  br label %51

51:                                               ; preds = %39, %1
  %52 = call i32 @udelay(i32 20)
  ret i32 0
}

declare dso_local i64 @spi_master_get_devdata(i32) #1

declare dso_local i32 @CFG_SCLKCNT(i32) #1

declare dso_local i32 @CFG_TXBITS(i32) #1

declare dso_local i32 @CFG_SPI_SEL(i32) #1

declare dso_local i32 @CFG_SPI_ENA(i32) #1

declare dso_local i32 @CFG_SPI_3W4WB(i32) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
