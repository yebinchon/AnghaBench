; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_slave_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_slave_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.driver_data = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SSTO = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"transfer aborted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @pxa2xx_spi_slave_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_spi_slave_abort(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_controller*, align 8
  %3 = alloca %struct.driver_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %2, align 8
  %4 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %5 = call %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller* %4)
  store %struct.driver_data* %5, %struct.driver_data** %3, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @write_SSSR_CS(%struct.driver_data* %6, i32 %9)
  %11 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %12 = call i32 @reset_sccr1(%struct.driver_data* %11)
  %13 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %14 = call i32 @pxa25x_ssp_comp(%struct.driver_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %18 = load i32, i32* @SSTO, align 4
  %19 = call i32 @pxa2xx_spi_write(%struct.driver_data* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %22 = call i32 @pxa2xx_spi_flush(%struct.driver_data* %21)
  %23 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %24 = load i32, i32* @SSCR0, align 4
  %25 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %26 = load i32, i32* @SSCR0, align 4
  %27 = call i32 @pxa2xx_spi_read(%struct.driver_data* %25, i32 %26)
  %28 = load i32, i32* @SSCR0_SSE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @pxa2xx_spi_write(%struct.driver_data* %23, i32 %24, i32 %30)
  %32 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %40 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  %45 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @spi_finalize_current_transfer(%struct.TYPE_6__* %47)
  ret i32 0
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

declare dso_local i32 @reset_sccr1(%struct.driver_data*) #1

declare dso_local i32 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @pxa2xx_spi_flush(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
