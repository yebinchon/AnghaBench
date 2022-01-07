; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64, i32, i32)* @bitfill_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfill_aligned(%struct.fb_info* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %120

18:                                               ; preds = %6
  %19 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %19, i64 -1, i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add i32 %23, %24
  %26 = load i32, i32* %12, align 4
  %27 = urem i32 %25, %26
  %28 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %22, i64 -1, i32 %27)
  %29 = xor i64 %28, -1
  store i64 %29, i64* %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %18
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %13, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @comp(i64 %43, i64 %45, i64 %46)
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  br label %120

49:                                               ; preds = %18
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i64 @comp(i64 %53, i64 %55, i64 %56)
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %52, %49
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = udiv i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %73, %66
  %71 = load i32, i32* %11, align 4
  %72 = icmp uge i32 %71, 8
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %8, align 8
  store i64 %74, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %8, align 8
  store i64 %80, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %8, align 8
  store i64 %89, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %8, align 8
  store i64 %92, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %98, 8
  store i32 %99, i32* %11, align 4
  br label %70

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %105, %100
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %11, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64, i64* %10, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %8, align 8
  store i64 %106, i64* %107, align 8
  br label %101

109:                                              ; preds = %101
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i64, i64* %10, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i64 @comp(i64 %113, i64 %115, i64 %116)
  %118 = load i64*, i64** %8, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %17, %119, %42
  ret void
}

declare dso_local i64 @FB_SHIFT_HIGH(%struct.fb_info*, i64, i32) #1

declare dso_local i64 @comp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
