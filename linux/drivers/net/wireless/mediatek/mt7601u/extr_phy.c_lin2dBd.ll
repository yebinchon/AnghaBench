; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_lin2dBd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_lin2dBd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lin2dBd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lin2dBd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i16 0, i16* %4, align 2
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -10000, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @fls(i32 %17)
  %19 = sub nsw i32 %18, 16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %4, align 2
  %21 = load i16, i16* %4, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i16, i16* %4, align 2
  %26 = sext i16 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %15
  %30 = load i16, i16* %4, align 2
  %31 = call i32 @abs(i16 signext %30)
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = icmp ule i32 %35, 47104
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, 3
  %41 = add i32 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = lshr i32 %42, 4
  %44 = add i32 %41, %43
  %45 = sub i32 %44, 38400
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = lshr i32 %48, 3
  %50 = sub i32 %47, %49
  %51 = load i32, i32* %5, align 4
  %52 = lshr i32 %51, 6
  %53 = sub i32 %50, %52
  %54 = sub i32 %53, 23040
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %37
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i16, i16* %4, align 2
  %61 = sext i16 %60 to i32
  %62 = add nsw i32 15, %61
  %63 = shl i32 %62, 15
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 2
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 1
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 6
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 7
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 10
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %59, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @abs(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
