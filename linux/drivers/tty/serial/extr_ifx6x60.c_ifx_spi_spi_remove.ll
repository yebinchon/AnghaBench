; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ifx_spi_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@saved_ifx_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ifx_spi_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_spi_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ifx_spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ifx_spi_device* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ifx_spi_device* %5, %struct.ifx_spi_device** %3, align 8
  %6 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %6, i32 0, i32 1
  %8 = call i32 @tasklet_kill(i32* %7)
  %9 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpio_to_irq(i32 %12)
  %14 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.ifx_spi_device* %14)
  %16 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpio_to_irq(i32 %19)
  %21 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.ifx_spi_device* %21)
  %23 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_free(i32 %26)
  %28 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_free(i32 %31)
  %33 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_free(i32 %36)
  %38 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gpio_free(i32 %41)
  %43 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpio_free(i32 %46)
  %48 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %3, align 8
  %49 = call i32 @ifx_spi_free_device(%struct.ifx_spi_device* %48)
  store i32* null, i32** @saved_ifx_dev, align 8
  ret i32 0
}

declare dso_local %struct.ifx_spi_device* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.ifx_spi_device*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @ifx_spi_free_device(%struct.ifx_spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
