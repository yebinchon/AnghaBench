; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8347d.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8347d.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = call i32 @write_reg(%struct.fbtft_par* %10, i32 234, i32 0)
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = call i32 @write_reg(%struct.fbtft_par* %12, i32 235, i32 32)
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %15 = call i32 @write_reg(%struct.fbtft_par* %14, i32 236, i32 12)
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %17 = call i32 @write_reg(%struct.fbtft_par* %16, i32 237, i32 196)
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = call i32 @write_reg(%struct.fbtft_par* %18, i32 232, i32 64)
  %20 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %21 = call i32 @write_reg(%struct.fbtft_par* %20, i32 233, i32 56)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = call i32 @write_reg(%struct.fbtft_par* %22, i32 241, i32 1)
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = call i32 @write_reg(%struct.fbtft_par* %24, i32 242, i32 16)
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = call i32 @write_reg(%struct.fbtft_par* %26, i32 39, i32 163)
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = call i32 @write_reg(%struct.fbtft_par* %28, i32 27, i32 27)
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = call i32 @write_reg(%struct.fbtft_par* %30, i32 26, i32 1)
  %32 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %33 = call i32 @write_reg(%struct.fbtft_par* %32, i32 36, i32 47)
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = call i32 @write_reg(%struct.fbtft_par* %34, i32 37, i32 87)
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = call i32 @write_reg(%struct.fbtft_par* %36, i32 35, i32 141)
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %39 = call i32 @write_reg(%struct.fbtft_par* %38, i32 24, i32 54)
  %40 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %41 = call i32 @write_reg(%struct.fbtft_par* %40, i32 25, i32 1)
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = call i32 @write_reg(%struct.fbtft_par* %42, i32 1, i32 0)
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = call i32 @write_reg(%struct.fbtft_par* %44, i32 31, i32 136)
  %46 = call i32 @mdelay(i32 5)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 31, i32 128)
  %49 = call i32 @mdelay(i32 5)
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %51 = call i32 @write_reg(%struct.fbtft_par* %50, i32 31, i32 144)
  %52 = call i32 @mdelay(i32 5)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 @write_reg(%struct.fbtft_par* %53, i32 31, i32 208)
  %55 = call i32 @mdelay(i32 5)
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %57 = call i32 @write_reg(%struct.fbtft_par* %56, i32 23, i32 5)
  %58 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %59 = call i32 @write_reg(%struct.fbtft_par* %58, i32 54, i32 0)
  %60 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %61 = call i32 @write_reg(%struct.fbtft_par* %60, i32 40, i32 56)
  %62 = call i32 @mdelay(i32 40)
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 40, i32 60)
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %66 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %67 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 3
  %70 = or i32 96, %69
  %71 = call i32 @write_reg(%struct.fbtft_par* %65, i32 22, i32 %70)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
