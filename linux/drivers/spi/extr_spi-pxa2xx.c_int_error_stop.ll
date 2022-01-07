; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_int_error_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_int_error_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SSTO = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i8*)* @int_error_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_error_stop(%struct.driver_data* %0, i8* %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @write_SSSR_CS(%struct.driver_data* %5, i32 %8)
  %10 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %11 = call i32 @reset_sccr1(%struct.driver_data* %10)
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = call i32 @pxa25x_ssp_comp(%struct.driver_data* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %17 = load i32, i32* @SSTO, align 4
  %18 = call i32 @pxa2xx_spi_write(%struct.driver_data* %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %21 = call i32 @pxa2xx_spi_flush(%struct.driver_data* %20)
  %22 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %23 = load i32, i32* @SSCR0, align 4
  %24 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %25 = load i32, i32* @SSCR0, align 4
  %26 = call i32 @pxa2xx_spi_read(%struct.driver_data* %24, i32 %25)
  %27 = load i32, i32* @SSCR0_SSE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @pxa2xx_spi_write(%struct.driver_data* %22, i32 %23, i32 %29)
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EIO, align 4
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
  ret void
}

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

declare dso_local i32 @reset_sccr1(%struct.driver_data*) #1

declare dso_local i32 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @pxa2xx_spi_flush(%struct.driver_data*) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
