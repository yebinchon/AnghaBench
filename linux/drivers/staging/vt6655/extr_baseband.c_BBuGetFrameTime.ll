; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBuGetFrameTime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBuGetFrameTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_54M = common dso_local global i32 0, align 4
@awcFrameTime = common dso_local global i64* null, align 8
@PK_TYPE_11A = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BBuGetFrameTime(i8 zeroext %0, i8 zeroext %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %15 = load i16, i16* %9, align 2
  %16 = zext i16 %15 to i32
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @RATE_54M, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = load i64*, i64** @awcFrameTime, align 8
  %23 = load i32, i32* %13, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ule i32 %28, 3
  br i1 %29, label %30, label %55

30:                                               ; preds = %21
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 96, i32* %11, align 4
  br label %36

35:                                               ; preds = %30
  store i32 192, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %37, 80
  %39 = load i32, i32* %14, align 4
  %40 = udiv i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul i32 %41, %42
  %44 = udiv i32 %43, 80
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %86

55:                                               ; preds = %21
  %56 = load i32, i32* %8, align 4
  %57 = mul i32 %56, 8
  %58 = add i32 %57, 22
  %59 = load i32, i32* %14, align 4
  %60 = udiv i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul i32 %61, %62
  %64 = sub i32 %63, 22
  %65 = udiv i32 %64, 8
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i32, i32* %10, align 4
  %74 = mul i32 %73, 4
  store i32 %74, i32* %10, align 4
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @PK_TYPE_11A, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 6
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %10, align 4
  %85 = add i32 20, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %51, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
