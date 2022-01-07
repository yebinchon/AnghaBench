; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9486.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9486.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32 }

@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PAGE_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_par*, i32, i32, i32, i32)* @set_addr_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr_win(%struct.fbtft_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fbtft_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %12 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 8
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 8
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 255
  %21 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %11, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %23 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 8
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  %32 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %22, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %34 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %35 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %33, i32 %34)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
