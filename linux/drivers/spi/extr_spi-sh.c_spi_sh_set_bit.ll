; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_sh_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_sh_data*, i64, i64)* @spi_sh_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sh_set_bit(%struct.spi_sh_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.spi_sh_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.spi_sh_data* %0, %struct.spi_sh_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @spi_sh_read(%struct.spi_sh_data* %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %7, align 8
  %14 = load %struct.spi_sh_data*, %struct.spi_sh_data** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spi_sh_write(%struct.spi_sh_data* %14, i64 %15, i64 %16)
  ret void
}

declare dso_local i64 @spi_sh_read(%struct.spi_sh_data*, i64) #1

declare dso_local i32 @spi_sh_write(%struct.spi_sh_data*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
