; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_encode_l12_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_encode_l12_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @encode_l12_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_l12_threshold(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %8, 1000
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 5
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 32768
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  store i32 2, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 10
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %55

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 1048576
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  store i32 3, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 15
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %54

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 33554432
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 20
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %5, align 8
  store i32 5, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 25
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %19
  br label %57

57:                                               ; preds = %56, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
