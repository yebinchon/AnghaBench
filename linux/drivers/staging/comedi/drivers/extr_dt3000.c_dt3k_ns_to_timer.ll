; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ns_to_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ns_to_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @dt3k_ns_to_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ns_to_timer(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add i32 %16, 1
  %18 = mul i32 %15, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 130, label %28
    i32 128, label %33
  ]

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %14, %22
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @DIV_ROUND_CLOSEST(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %14
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %8, align 4
  br label %38

33:                                               ; preds = %14
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DIV_ROUND_UP(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %39, 65536
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul i32 %42, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %11

54:                                               ; preds = %11
  store i32 15, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  %58 = mul i32 %55, %57
  store i32 %58, i32* %9, align 4
  store i32 65535, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul i32 %59, %60
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %54, %41
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
