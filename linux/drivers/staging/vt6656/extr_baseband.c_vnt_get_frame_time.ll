; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_get_frame_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_get_frame_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_54M = common dso_local global i64 0, align 8
@vnt_frame_time = common dso_local global i64* null, align 8
@PK_TYPE_11A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_get_frame_time(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @RATE_54M, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

18:                                               ; preds = %4
  %19 = load i64*, i64** @vnt_frame_time, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ule i64 %24, 3
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 96, i32* %11, align 4
  br label %31

30:                                               ; preds = %26
  store i32 192, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %8, align 4
  %33 = mul i32 %32, 80
  %34 = load i32, i32* %13, align 4
  %35 = udiv i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 %36, %37
  %39 = udiv i32 %38, 80
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %5, align 4
  br label %79

50:                                               ; preds = %18
  %51 = load i32, i32* %8, align 4
  %52 = mul i32 %51, 8
  %53 = add i32 %52, 22
  %54 = load i32, i32* %13, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %56, %57
  %59 = sub i32 %58, 22
  %60 = udiv i32 %59, 8
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 %68, 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PK_TYPE_11A, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, 6
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %10, align 4
  %78 = add i32 20, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %46, %17
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
