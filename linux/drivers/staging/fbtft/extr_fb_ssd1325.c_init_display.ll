; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1325.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1325.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @gpiod_set_value(i32 %13, i32 0)
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = call i32 @write_reg(%struct.fbtft_par* %15, i32 179)
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = call i32 @write_reg(%struct.fbtft_par* %17, i32 240)
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = call i32 @write_reg(%struct.fbtft_par* %19, i32 174)
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = call i32 @write_reg(%struct.fbtft_par* %21, i32 161)
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = call i32 @write_reg(%struct.fbtft_par* %23, i32 0)
  %25 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %26 = call i32 @write_reg(%struct.fbtft_par* %25, i32 168)
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = call i32 @write_reg(%struct.fbtft_par* %27, i32 63)
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %30 = call i32 @write_reg(%struct.fbtft_par* %29, i32 160)
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %32 = call i32 @write_reg(%struct.fbtft_par* %31, i32 69)
  %33 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %34 = call i32 @write_reg(%struct.fbtft_par* %33, i32 162)
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = call i32 @write_reg(%struct.fbtft_par* %35, i32 64)
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = call i32 @write_reg(%struct.fbtft_par* %37, i32 117)
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = call i32 @write_reg(%struct.fbtft_par* %39, i32 0)
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %42 = call i32 @write_reg(%struct.fbtft_par* %41, i32 63)
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %44 = call i32 @write_reg(%struct.fbtft_par* %43, i32 21)
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = call i32 @write_reg(%struct.fbtft_par* %45, i32 0)
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 127)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 @write_reg(%struct.fbtft_par* %49, i32 164)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 @write_reg(%struct.fbtft_par* %51, i32 175)
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
