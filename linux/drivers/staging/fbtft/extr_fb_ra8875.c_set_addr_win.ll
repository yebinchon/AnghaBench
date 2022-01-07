; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ra8875.c_set_addr_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ra8875.c_set_addr_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32 }

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
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 255
  %14 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %11, i32 48, i32 %13)
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 65280
  %18 = ashr i32 %17, 8
  %19 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %15, i32 49, i32 %18)
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 255
  %23 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %20, i32 50, i32 %22)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 65280
  %27 = ashr i32 %26, 8
  %28 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 51, i32 %27)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = and i32 %32, 255
  %34 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %29, i32 52, i32 %33)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = and i32 %38, 65280
  %40 = ashr i32 %39, 8
  %41 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %35, i32 53, i32 %40)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = and i32 %45, 255
  %47 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %42, i32 54, i32 %46)
  %48 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = and i32 %51, 65280
  %53 = ashr i32 %52, 8
  %54 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %48, i32 55, i32 %53)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 255
  %58 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %55, i32 70, i32 %57)
  %59 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 3
  %63 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %59, i32 71, i32 %62)
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 255
  %67 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %64, i32 72, i32 %66)
  %68 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 1
  %72 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %68, i32 73, i32 %71)
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %6, align 8
  %74 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %73, i32 2)
  ret void
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
