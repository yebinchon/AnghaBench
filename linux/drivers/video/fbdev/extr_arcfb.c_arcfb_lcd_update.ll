; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arcfb.c_arcfb_lcd_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arcfb.c_arcfb_lcd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arcfb_par*, i32, i32, i32, i32)* @arcfb_lcd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfb_lcd_update(%struct.arcfb_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.arcfb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.arcfb_par* %0, %struct.arcfb_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @floor8(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %14, align 4
  %19 = sub i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @iceil8(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @ceil64(i32 %30)
  %32 = call i32 @min(i32 %29, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %36, %5
  %34 = load i32, i32* %13, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.arcfb_par*, %struct.arcfb_par** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @arcfb_lcd_update_horiz(%struct.arcfb_par* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub i32 %43, %44
  %46 = add i32 %45, 1
  %47 = load i32, i32* %13, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add i32 %51, %52
  %54 = sub i32 %53, 1
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ceil64(i32 %55)
  %57 = call i32 @min(i32 %54, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %33

58:                                               ; preds = %33
  ret void
}

declare dso_local i32 @floor8(i32) #1

declare dso_local i32 @iceil8(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ceil64(i32) #1

declare dso_local i32 @arcfb_lcd_update_horiz(%struct.arcfb_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
