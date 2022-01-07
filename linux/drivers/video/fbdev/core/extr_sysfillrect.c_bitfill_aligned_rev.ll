; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_aligned_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_aligned_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64, i32, i32)* @bitfill_aligned_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfill_aligned_rev(%struct.fb_info* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %149

20:                                               ; preds = %6
  %21 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %21, i64 -1, i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = urem i32 %27, %28
  %30 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %24, i64 -1, i32 %29)
  %31 = xor i64 %30, -1
  store i64 %31, i64* %15, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* %12, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %20
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %14, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = xor i64 %46, %47
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @comp(i64 %48, i64 %50, i64 %51)
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  br label %149

54:                                               ; preds = %20
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = xor i64 %59, %60
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @comp(i64 %61, i64 %63, i64 %64)
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %57, %54
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = udiv i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %81, %74
  %79 = load i32, i32* %11, align 4
  %80 = icmp uge i32 %79, 8
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = load i64, i64* %13, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %8, align 8
  %85 = load i64, i64* %83, align 8
  %86 = xor i64 %85, %82
  store i64 %86, i64* %83, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %8, align 8
  %90 = load i64, i64* %88, align 8
  %91 = xor i64 %90, %87
  store i64 %91, i64* %88, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %8, align 8
  %95 = load i64, i64* %93, align 8
  %96 = xor i64 %95, %92
  store i64 %96, i64* %93, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %8, align 8
  %100 = load i64, i64* %98, align 8
  %101 = xor i64 %100, %97
  store i64 %101, i64* %98, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %8, align 8
  %105 = load i64, i64* %103, align 8
  %106 = xor i64 %105, %102
  store i64 %106, i64* %103, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %8, align 8
  %110 = load i64, i64* %108, align 8
  %111 = xor i64 %110, %107
  store i64 %111, i64* %108, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64*, i64** %8, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %8, align 8
  %115 = load i64, i64* %113, align 8
  %116 = xor i64 %115, %112
  store i64 %116, i64* %113, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %8, align 8
  %120 = load i64, i64* %118, align 8
  %121 = xor i64 %120, %117
  store i64 %121, i64* %118, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sub i32 %122, 8
  store i32 %123, i32* %11, align 4
  br label %78

124:                                              ; preds = %78
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, -1
  store i32 %127, i32* %11, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i64, i64* %13, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = getelementptr inbounds i64, i64* %131, i32 1
  store i64* %132, i64** %8, align 8
  %133 = load i64, i64* %131, align 8
  %134 = xor i64 %133, %130
  store i64 %134, i64* %131, align 8
  br label %125

135:                                              ; preds = %125
  %136 = load i64, i64* %15, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i64*, i64** %8, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = xor i64 %140, %141
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = call i64 @comp(i64 %142, i64 %144, i64 %145)
  %147 = load i64*, i64** %8, align 8
  store i64 %146, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %135
  br label %149

149:                                              ; preds = %19, %148, %44
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
