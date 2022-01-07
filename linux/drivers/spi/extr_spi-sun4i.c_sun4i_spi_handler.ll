; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_spi = type { i32, i32 }

@SUN4I_INT_STA_REG = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_TC = common dso_local global i32 0, align 4
@SUN4I_FIFO_DEPTH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_RF_F34 = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_TF_E34 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_spi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_spi_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sun4i_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sun4i_spi*
  store %struct.sun4i_spi* %9, %struct.sun4i_spi** %6, align 8
  %10 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %11 = load i32, i32* @SUN4I_INT_STA_REG, align 4
  %12 = call i32 @sun4i_spi_read(%struct.sun4i_spi* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SUN4I_INT_CTL_TC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %19 = load i32, i32* @SUN4I_INT_STA_REG, align 4
  %20 = load i32, i32* @SUN4I_INT_CTL_TC, align 4
  %21 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %18, i32 %19, i32 %20)
  %22 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %23 = load i32, i32* @SUN4I_FIFO_DEPTH, align 4
  %24 = call i32 @sun4i_spi_drain_fifo(%struct.sun4i_spi* %22, i32 %23)
  %25 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %26 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %25, i32 0, i32 1
  %27 = call i32 @complete(i32* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SUN4I_INT_CTL_RF_F34, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %36 = load i32, i32* @SUN4I_FIFO_DEPTH, align 4
  %37 = call i32 @sun4i_spi_drain_fifo(%struct.sun4i_spi* %35, i32 %36)
  %38 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %39 = load i32, i32* @SUN4I_INT_STA_REG, align 4
  %40 = load i32, i32* @SUN4I_INT_CTL_RF_F34, align 4
  %41 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %68

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SUN4I_INT_CTL_TF_E34, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %50 = load i32, i32* @SUN4I_FIFO_DEPTH, align 4
  %51 = call i32 @sun4i_spi_fill_fifo(%struct.sun4i_spi* %49, i32 %50)
  %52 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %53 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %58 = load i32, i32* @SUN4I_INT_CTL_TF_E34, align 4
  %59 = call i32 @sun4i_spi_disable_interrupt(%struct.sun4i_spi* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.sun4i_spi*, %struct.sun4i_spi** %6, align 8
  %62 = load i32, i32* @SUN4I_INT_STA_REG, align 4
  %63 = load i32, i32* @SUN4I_INT_CTL_TF_E34, align 4
  %64 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %43
  %67 = load i32, i32* @IRQ_NONE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %60, %34, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @sun4i_spi_read(%struct.sun4i_spi*, i32) #1

declare dso_local i32 @sun4i_spi_write(%struct.sun4i_spi*, i32, i32) #1

declare dso_local i32 @sun4i_spi_drain_fifo(%struct.sun4i_spi*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sun4i_spi_fill_fifo(%struct.sun4i_spi*, i32) #1

declare dso_local i32 @sun4i_spi_disable_interrupt(%struct.sun4i_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
