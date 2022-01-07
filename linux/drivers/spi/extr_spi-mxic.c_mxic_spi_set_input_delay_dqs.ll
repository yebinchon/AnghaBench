; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_set_input_delay_dqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_set_input_delay_dqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_spi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxic_spi*, i32)* @mxic_spi_set_input_delay_dqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxic_spi_set_input_delay_dqs(%struct.mxic_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.mxic_spi*, align 8
  %4 = alloca i32, align 4
  store %struct.mxic_spi* %0, %struct.mxic_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IDLY_CODE_VAL(i32 0, i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @IDLY_CODE_VAL(i32 1, i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IDLY_CODE_VAL(i32 2, i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IDLY_CODE_VAL(i32 3, i32 %13)
  %15 = or i32 %12, %14
  %16 = load %struct.mxic_spi*, %struct.mxic_spi** %3, align 8
  %17 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @IDLY_CODE(i32 0)
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @IDLY_CODE_VAL(i32 4, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @IDLY_CODE_VAL(i32 5, i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @IDLY_CODE_VAL(i32 6, i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IDLY_CODE_VAL(i32 7, i32 %30)
  %32 = or i32 %29, %31
  %33 = load %struct.mxic_spi*, %struct.mxic_spi** %3, align 8
  %34 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @IDLY_CODE(i32 1)
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IDLY_CODE_VAL(i32, i32) #1

declare dso_local i64 @IDLY_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
