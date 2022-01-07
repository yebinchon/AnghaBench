; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_reset_sccr1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_reset_sccr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.chip_data = type { i32 }

@SSCR1 = common dso_local global i32 0, align 4
@QUARK_X1000_SSCR1_RFT = common dso_local global i32 0, align 4
@CE4100_SSCR1_RFT = common dso_local global i32 0, align 4
@SSCR1_RFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @reset_sccr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_sccr1(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.chip_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %5 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %6 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.chip_data* @spi_get_ctldata(i32 %11)
  store %struct.chip_data* %12, %struct.chip_data** %3, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %14 = load i32, i32* @SSCR1, align 4
  %15 = call i32 @pxa2xx_spi_read(%struct.driver_data* %13, i32 %14)
  %16 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @QUARK_X1000_SSCR1_RFT, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @CE4100_SSCR1_RFT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @SSCR1_RFT, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %41 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %46 = load i32, i32* @SSCR1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pxa2xx_spi_write(%struct.driver_data* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local %struct.chip_data* @spi_get_ctldata(i32) #1

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @pxa2xx_spi_write(%struct.driver_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
