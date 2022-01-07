; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_spi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxic_spi*, i64)* @mxic_spi_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_clk_setup(%struct.mxic_spi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxic_spi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mxic_spi* %0, %struct.mxic_spi** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.mxic_spi*, %struct.mxic_spi** %4, align 8
  %8 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @clk_set_rate(i32 %9, i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.mxic_spi*, %struct.mxic_spi** %4, align 8
  %18 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @clk_set_rate(i32 %19, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %16
  %27 = load %struct.mxic_spi*, %struct.mxic_spi** %4, align 8
  %28 = call i32 @mxic_spi_set_input_delay_dqs(%struct.mxic_spi* %27, i32 15)
  %29 = load %struct.mxic_spi*, %struct.mxic_spi** %4, align 8
  %30 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = mul i64 9, %32
  %34 = udiv i64 %33, 25000000
  %35 = trunc i64 %34 to i32
  %36 = call i32 @clk_set_phase(i32 %31, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %24, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @mxic_spi_set_input_delay_dqs(%struct.mxic_spi*, i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
