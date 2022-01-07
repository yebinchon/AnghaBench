; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_calc_checksum_4byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_calc_checksum_4byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_checksum_4byte(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %13, label %46 [
    i32 128, label %14
  ]

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 106
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 107
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 112
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19
  br label %40

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 31
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, -2
  %35 = lshr i32 %34, 1
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %36, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  br label %15

45:                                               ; preds = %15
  br label %68

46:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 1
  %54 = shl i32 %53, 31
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -2
  %57 = lshr i32 %56, 1
  %58 = or i32 %54, %57
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %58, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %10, align 8
  br label %47

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
