; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.spi_message* }
%struct.spi_message = type { i32 }

@SSSR = common dso_local global i32 0, align 4
@SSSR_ROR = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSTO = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i32)* @pxa2xx_spi_dma_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_spi_dma_transfer_complete(%struct.driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.spi_message*, %struct.spi_message** %10, align 8
  store %struct.spi_message* %11, %struct.spi_message** %5, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 4
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %21 = load i32, i32* @SSSR, align 4
  %22 = call i32 @pxa2xx_spi_read(%struct.driver_data* %20, i32 %21)
  %23 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %24 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SSSR_ROR, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = load i32, i32* @SSCR1, align 4
  %33 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %34 = load i32, i32* @SSCR1, align 4
  %35 = call i32 @pxa2xx_spi_read(%struct.driver_data* %33, i32 %34)
  %36 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %37 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = call i32 @pxa2xx_spi_write(%struct.driver_data* %31, i32 %32, i32 %40)
  %42 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %43 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %44 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @write_SSSR_CS(%struct.driver_data* %42, i32 %45)
  %47 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %48 = call i32 @pxa25x_ssp_comp(%struct.driver_data* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %30
  %51 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %52 = load i32, i32* @SSTO, align 4
  %53 = call i32 @pxa2xx_spi_write(%struct.driver_data* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %30
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %59 = load i32, i32* @SSCR0, align 4
  %60 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %61 = load i32, i32* @SSCR0, align 4
  %62 = call i32 @pxa2xx_spi_read(%struct.driver_data* %60, i32 %61)
  %63 = load i32, i32* @SSCR0_SSE, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @pxa2xx_spi_write(%struct.driver_data* %58, i32 %59, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %70 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %57, %54
  %72 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %73 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @spi_finalize_current_transfer(%struct.TYPE_2__* %74)
  br label %76

76:                                               ; preds = %71, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa25x_ssp_comp(%struct.driver_data*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
