; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ep93xx_spi = type { i64 }

@SSPIIR = common dso_local global i64 0, align 8
@SSPIIR_RORIS = common dso_local global i32 0, align 4
@SSPICR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"receive overrun, aborting the message\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SSPCR1 = common dso_local global i64 0, align 8
@SSPCR1_RORIE = common dso_local global i32 0, align 4
@SSPCR1_TIE = common dso_local global i32 0, align 4
@SSPCR1_RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.ep93xx_spi*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.spi_master*
  store %struct.spi_master* %10, %struct.spi_master** %6, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %12 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.ep93xx_spi* %12, %struct.ep93xx_spi** %7, align 8
  %13 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %7, align 8
  %14 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSPIIR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @SSPIIR_RORIS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %7, align 8
  %24 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SSPICR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %30 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %29, i32 0, i32 1
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %40 = call i64 @ep93xx_spi_read_write(%struct.spi_master* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %70

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %7, align 8
  %47 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SSPCR1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @SSPCR1_RORIE, align 4
  %53 = load i32, i32* @SSPCR1_TIE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SSPCR1_RIE, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %7, align 8
  %62 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SSPCR1, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %68 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %45, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @ep93xx_spi_read_write(%struct.spi_master*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
