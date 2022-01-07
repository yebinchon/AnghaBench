; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_spi = type { i32, i32, i32 }

@SUN6I_INT_STA_REG = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_TC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_RF_RDY = common dso_local global i32 0, align 4
@SUN6I_FIFO_DEPTH = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_TF_ERQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun6i_spi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_spi_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sun6i_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sun6i_spi*
  store %struct.sun6i_spi* %9, %struct.sun6i_spi** %6, align 8
  %10 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %11 = load i32, i32* @SUN6I_INT_STA_REG, align 4
  %12 = call i32 @sun6i_spi_read(%struct.sun6i_spi* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SUN6I_INT_CTL_TC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %19 = load i32, i32* @SUN6I_INT_STA_REG, align 4
  %20 = load i32, i32* @SUN6I_INT_CTL_TC, align 4
  %21 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %18, i32 %19, i32 %20)
  %22 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %23 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %24 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sun6i_spi_drain_fifo(%struct.sun6i_spi* %22, i32 %25)
  %27 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %28 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %27, i32 0, i32 1
  %29 = call i32 @complete(i32* %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SUN6I_INT_CTL_RF_RDY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %38 = load i32, i32* @SUN6I_FIFO_DEPTH, align 4
  %39 = call i32 @sun6i_spi_drain_fifo(%struct.sun6i_spi* %37, i32 %38)
  %40 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %41 = load i32, i32* @SUN6I_INT_STA_REG, align 4
  %42 = load i32, i32* @SUN6I_INT_CTL_RF_RDY, align 4
  %43 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SUN6I_INT_CTL_TF_ERQ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %52 = load i32, i32* @SUN6I_FIFO_DEPTH, align 4
  %53 = call i32 @sun6i_spi_fill_fifo(%struct.sun6i_spi* %51, i32 %52)
  %54 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %55 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %60 = load i32, i32* @SUN6I_INT_CTL_TF_ERQ, align 4
  %61 = call i32 @sun6i_spi_disable_interrupt(%struct.sun6i_spi* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %50
  %63 = load %struct.sun6i_spi*, %struct.sun6i_spi** %6, align 8
  %64 = load i32, i32* @SUN6I_INT_STA_REG, align 4
  %65 = load i32, i32* @SUN6I_INT_CTL_TF_ERQ, align 4
  %66 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* @IRQ_NONE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %62, %36, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sun6i_spi_read(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @sun6i_spi_write(%struct.sun6i_spi*, i32, i32) #1

declare dso_local i32 @sun6i_spi_drain_fifo(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sun6i_spi_fill_fifo(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @sun6i_spi_disable_interrupt(%struct.sun6i_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
