; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_handle_bad_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_handle_bad_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad message state in interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @handle_bad_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_bad_msg(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %4 = load i32, i32* @SSCR0, align 4
  %5 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %6 = load i32, i32* @SSCR0, align 4
  %7 = call i32 @pxa2xx_spi_read(%struct.driver_data* %5, i32 %6)
  %8 = load i32, i32* @SSCR0_SSE, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = call i32 @pxa2xx_spi_write(%struct.driver_data* %3, i32 %4, i32 %10)
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = load i32, i32* @SSCR1, align 4
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = load i32, i32* @SSCR1, align 4
  %16 = call i32 @pxa2xx_spi_read(%struct.driver_data* %14, i32 %15)
  %17 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = call i32 @pxa2xx_spi_write(%struct.driver_data* %12, i32 %13, i32 %21)
  %23 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %24 = call i32 @pxa25x_ssp_comp(%struct.driver_data* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %28 = load i32, i32* @SSTO, align 4
  %29 = call i32 @pxa2xx_spi_write(%struct.driver_data* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %32 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @write_SSSR_CS(%struct.driver_data* %31, i32 %34)
  %36 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
