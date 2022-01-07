; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_spi_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32 }

@loops_per_jiffy = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@SSDR = common dso_local global i32 0, align 4
@SSSR_BSY = common dso_local global i32 0, align 4
@SSSR_ROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_spi_flush(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load i32, i32* @loops_per_jiffy, align 4
  %5 = shl i32 %4, 1
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %31, %1
  br label %8

8:                                                ; preds = %15, %7
  %9 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %10 = load i32, i32* @SSSR, align 4
  %11 = call i32 @pxa2xx_spi_read(%struct.driver_data* %9, i32 %10)
  %12 = load i32, i32* @SSSR_RNE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %17 = load i32, i32* @SSDR, align 4
  %18 = call i32 @pxa2xx_spi_read(%struct.driver_data* %16, i32 %17)
  br label %8

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = load i32, i32* @SSSR, align 4
  %23 = call i32 @pxa2xx_spi_read(%struct.driver_data* %21, i32 %22)
  %24 = load i32, i32* @SSSR_BSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i1 [ false, %20 ], [ %30, %27 ]
  br i1 %32, label %7, label %33

33:                                               ; preds = %31
  %34 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %35 = load i32, i32* @SSSR_ROR, align 4
  %36 = call i32 @write_SSSR_CS(%struct.driver_data* %34, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local i32 @pxa2xx_spi_read(%struct.driver_data*, i32) #1

declare dso_local i32 @write_SSSR_CS(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
