; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_calc_checksum_2byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_calc_checksum_2byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_checksum_2byte(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %43 [
    i32 128, label %14
  ]

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  br label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 15
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 65534
  %32 = ashr i32 %31, 1
  %33 = or i32 %29, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %10, align 8
  br label %15

42:                                               ; preds = %15
  br label %65

43:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = shl i32 %50, 15
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 65534
  %54 = ashr i32 %53, 1
  %55 = or i32 %51, %54
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  br label %44

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
