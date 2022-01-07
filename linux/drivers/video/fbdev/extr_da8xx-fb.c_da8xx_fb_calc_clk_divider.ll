; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_calc_clk_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_calc_clk_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32 }

@CLK_MAX_DIV = common dso_local global i32 0, align 4
@CLK_MIN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da8xx_fb_par*, i32, i32*)* @da8xx_fb_calc_clk_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_fb_calc_clk_divider(%struct.da8xx_fb_par* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.da8xx_fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.da8xx_fb_par* %0, %struct.da8xx_fb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @PICOS2KHZ(i32 %8)
  %10 = mul nsw i32 %9, 1000
  store i32 %10, i32* %5, align 4
  %11 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %12 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CLK_MAX_DIV, align 4
  %19 = udiv i32 %17, %18
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %23 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CLK_MAX_DIV, align 4
  %27 = mul i32 %25, %26
  %28 = call i32 @clk_round_rate(i32 %24, i32 %27)
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @CLK_MAX_DIV, align 4
  store i32 %30, i32* %7, align 4
  br label %54

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CLK_MIN_DIV, align 4
  %36 = udiv i32 %34, %35
  %37 = icmp ugt i32 %32, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %40 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CLK_MIN_DIV, align 4
  %44 = mul i32 %42, %43
  %45 = call i32 @clk_round_rate(i32 %41, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @CLK_MIN_DIV, align 4
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %31
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
