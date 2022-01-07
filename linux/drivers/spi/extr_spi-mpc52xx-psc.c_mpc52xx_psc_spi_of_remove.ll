; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx-psc.c_mpc52xx_psc_spi_of_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx-psc.c_mpc52xx_psc_spi_of_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.mpc52xx_psc_spi = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_psc_spi_of_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_psc_spi_of_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.mpc52xx_psc_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call i32 @platform_get_drvdata(%struct.platform_device* %5)
  %7 = call %struct.spi_master* @spi_master_get(i32 %6)
  store %struct.spi_master* %7, %struct.spi_master** %3, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.mpc52xx_psc_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.mpc52xx_psc_spi* %9, %struct.mpc52xx_psc_spi** %4, align 8
  %10 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %11 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %10, i32 0, i32 2
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %14 = call i32 @spi_unregister_master(%struct.spi_master* %13)
  %15 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %16 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.mpc52xx_psc_spi* %18)
  %20 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %21 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %26 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iounmap(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %31 = call i32 @spi_master_put(%struct.spi_master* %30)
  ret i32 0
}

declare dso_local %struct.spi_master* @spi_master_get(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mpc52xx_psc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @spi_unregister_master(%struct.spi_master*) #1

declare dso_local i32 @free_irq(i32, %struct.mpc52xx_psc_spi*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
