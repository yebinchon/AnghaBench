; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_handle_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_message = type { i32 }
%struct.driver_data = type { i32, i32, i32, i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_controller*, %struct.spi_message*)* @pxa2xx_spi_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_spi_handle_err(%struct.spi_controller* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.driver_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %7 = call %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller* %6)
  store %struct.driver_data* %7, %struct.driver_data** %5, align 8
  %8 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %9 = load i32, i32* @SSCR0, align 4
  %10 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %11 = load i32, i32* @SSCR0, align 4
  %12 = call i32 @pxa2xx_spi_read(%struct.driver_data* %10, i32 %11)
  %13 = load i32, i32* @SSCR0_SSE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @pxa2xx_spi_write(%struct.driver_data* %8, i32 %9, i32 %15)
  %17 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %18 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %19 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_SSSR_CS(%struct.driver_data* %17, i32 %20)
  %22 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %23 = load i32, i32* @SSCR1, align 4
  %24 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %25 = load i32, i32* @SSCR1, align 4
  %26 = call i32 @pxa2xx_spi_read(%struct.driver_data* %24, i32 %25)
  %27 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %26, %34
  %36 = call i32 @pxa2xx_spi_write(%struct.driver_data* %22, i32 %23, i32 %35)
  %37 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %38 = call i32 @pxa25x_ssp_comp(%struct.driver_data* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %42 = load i32, i32* @SSTO, align 4
  %43 = call i32 @pxa2xx_spi_write(%struct.driver_data* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %40, %2
  %45 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 2
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %51 = call i32 @pxa2xx_spi_dma_stop(%struct.driver_data* %50)
  br label %52

52:                                               ; preds = %49, %44
  ret void
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pxa2xx_spi_dma_stop(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
