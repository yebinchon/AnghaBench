; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i32*)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gamma(%struct.fbtft_par* %0, i32* %1) #0 {
  %3 = alloca %struct.fbtft_par*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %9 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %6
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 224, %15
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @CURVE(i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CURVE(i32 %19, i32 1)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CURVE(i32 %21, i32 2)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CURVE(i32 %23, i32 3)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @CURVE(i32 %25, i32 4)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @CURVE(i32 %27, i32 5)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @CURVE(i32 %29, i32 6)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @CURVE(i32 %31, i32 7)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CURVE(i32 %33, i32 8)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CURVE(i32 %35, i32 9)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CURVE(i32 %37, i32 10)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CURVE(i32 %39, i32 11)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CURVE(i32 %41, i32 12)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @CURVE(i32 %43, i32 13)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CURVE(i32 %45, i32 14)
  %47 = call i32 @write_reg(%struct.fbtft_par* %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %13
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

51:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CURVE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
