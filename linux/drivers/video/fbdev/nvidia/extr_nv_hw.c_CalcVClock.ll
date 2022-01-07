; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_CalcVClock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_CalcVClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, %struct.nvidia_par*)* @CalcVClock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalcVClock(i32 %0, i32* %1, i32* %2, %struct.nvidia_par* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvidia_par*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.nvidia_par* %3, %struct.nvidia_par** %8, align 8
  store i32 -1, i32* %12, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %8, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 13500
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 7, i32* %9, align 4
  store i32 13, i32* %10, align 4
  br label %25

24:                                               ; preds = %4
  store i32 8, i32* %9, align 4
  store i32 14, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %23
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %100, %25
  %27 = load i32, i32* %17, align 4
  %28 = icmp ule i32 %27, 4
  br i1 %28, label %29, label %103

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %17, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp uge i32 %33, 128000
  br i1 %34, label %35, label %99

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = icmp ule i32 %36, 350000
  br i1 %37, label %38, label %99

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %95, %38
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %17, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %15, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %8, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = udiv i32 %49, %52
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ule i32 %54, 255
  br i1 %55, label %56, label %94

56:                                               ; preds = %44
  %57 = load %struct.nvidia_par*, %struct.nvidia_par** %8, align 8
  %58 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = mul i32 %59, %60
  %62 = load i32, i32* %15, align 4
  %63 = udiv i32 %61, %62
  %64 = load i32, i32* %17, align 4
  %65 = lshr i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %11, align 4
  br label %77

73:                                               ; preds = %56
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub i32 %74, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %16, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %83, %85
  %87 = load i32, i32* %15, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %81, %77
  br label %94

94:                                               ; preds = %93, %44
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %40

98:                                               ; preds = %40
  br label %99

99:                                               ; preds = %98, %35, %29
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %17, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %26

103:                                              ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
