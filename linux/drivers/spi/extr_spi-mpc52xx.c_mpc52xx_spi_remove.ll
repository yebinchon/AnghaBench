; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.mpc52xx_spi = type { i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.mpc52xx_spi*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call i32 @platform_get_drvdata(%struct.platform_device* %6)
  %8 = call %struct.spi_master* @spi_master_get(i32 %7)
  store %struct.spi_master* %8, %struct.spi_master** %3, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %10 = call %struct.mpc52xx_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.mpc52xx_spi* %10, %struct.mpc52xx_spi** %4, align 8
  %11 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %12 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.mpc52xx_spi* %14)
  %16 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %17 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.mpc52xx_spi* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %24 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %29 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpio_free(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %41 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %45 = call i32 @spi_unregister_master(%struct.spi_master* %44)
  %46 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %47 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @iounmap(i32 %48)
  %50 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %51 = call i32 @spi_master_put(%struct.spi_master* %50)
  ret i32 0
}

declare dso_local %struct.spi_master* @spi_master_get(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mpc52xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.mpc52xx_spi*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spi_unregister_master(%struct.spi_master*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
