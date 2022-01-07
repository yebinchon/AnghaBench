; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_sh_data = type { i64, i32 }

@SPI_SH_CR1 = common dso_local global i32 0, align 4
@SPI_SH_TBE = common dso_local global i64 0, align 8
@SPI_SH_TBF = common dso_local global i64 0, align 8
@SPI_SH_RBE = common dso_local global i64 0, align 8
@SPI_SH_RBF = common dso_local global i64 0, align 8
@SPI_SH_CR4 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_sh_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sh_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_sh_data*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.spi_sh_data*
  store %struct.spi_sh_data* %8, %struct.spi_sh_data** %5, align 8
  %9 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %10 = load i32, i32* @SPI_SH_CR1, align 4
  %11 = call i64 @spi_sh_read(%struct.spi_sh_data* %9, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SPI_SH_TBE, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i64, i64* @SPI_SH_TBE, align 8
  %18 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %19 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @SPI_SH_TBF, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i64, i64* @SPI_SH_TBF, align 8
  %29 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %30 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @SPI_SH_RBE, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* @SPI_SH_RBE, align 8
  %40 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %41 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @SPI_SH_RBF, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, i64* @SPI_SH_RBF, align 8
  %51 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %52 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %57 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %62 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %63 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @SPI_SH_CR4, align 4
  %67 = call i32 @spi_sh_clear_bit(%struct.spi_sh_data* %61, i32 %65, i32 %66)
  %68 = load %struct.spi_sh_data*, %struct.spi_sh_data** %5, align 8
  %69 = getelementptr inbounds %struct.spi_sh_data, %struct.spi_sh_data* %68, i32 0, i32 1
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %60, %55
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i64 @spi_sh_read(%struct.spi_sh_data*, i32) #1

declare dso_local i32 @spi_sh_clear_bit(%struct.spi_sh_data*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
