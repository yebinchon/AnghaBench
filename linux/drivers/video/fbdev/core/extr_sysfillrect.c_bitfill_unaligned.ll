; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64, i32, i32, i32, i32)* @bitfill_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfill_unaligned(%struct.fb_info* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  br label %166

22:                                               ; preds = %8
  %23 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %23, i64 -1, i32 %24)
  store i64 %25, i64* %17, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %15, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %16, align 4
  %31 = urem i32 %29, %30
  %32 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %26, i64 -1, i32 %31)
  %33 = xor i64 %32, -1
  store i64 %33, i64* %18, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %16, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %22
  %40 = load i64, i64* %18, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %17, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %17, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i64, i64* %12, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %17, align 8
  %51 = call i64 @comp(i64 %47, i64 %49, i64 %50)
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  br label %166

53:                                               ; preds = %22
  %54 = load i64, i64* %17, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i64 @comp(i64 %57, i64 %59, i64 %60)
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %10, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 %65, %67
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %69, %71
  %73 = or i64 %68, %72
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %56, %53
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = udiv i32 %81, %80
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %86, %79
  %84 = load i32, i32* %15, align 4
  %85 = icmp uge i32 %84, 4
  br i1 %85, label %86, label %137

86:                                               ; preds = %83
  %87 = load i64, i64* %12, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 %90, %92
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = lshr i64 %94, %96
  %98 = or i64 %93, %97
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %10, align 8
  store i64 %99, i64* %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = shl i64 %102, %104
  %106 = load i64, i64* %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %106, %108
  %110 = or i64 %105, %109
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64*, i64** %10, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %10, align 8
  store i64 %111, i64* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = shl i64 %114, %116
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = zext i32 %119 to i64
  %121 = lshr i64 %118, %120
  %122 = or i64 %117, %121
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %10, align 8
  store i64 %123, i64* %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = shl i64 %126, %128
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = lshr i64 %130, %132
  %134 = or i64 %129, %133
  store i64 %134, i64* %12, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sub i32 %135, 4
  store i32 %136, i32* %15, align 4
  br label %83

137:                                              ; preds = %83
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i32, i32* %15, align 4
  %140 = add i32 %139, -1
  store i32 %140, i32* %15, align 4
  %141 = icmp ne i32 %139, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = load i64, i64* %12, align 8
  %144 = load i64*, i64** %10, align 8
  %145 = getelementptr inbounds i64, i64* %144, i32 1
  store i64* %145, i64** %10, align 8
  store i64 %143, i64* %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = shl i64 %146, %148
  %150 = load i64, i64* %12, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = lshr i64 %150, %152
  %154 = or i64 %149, %153
  store i64 %154, i64* %12, align 8
  br label %138

155:                                              ; preds = %138
  %156 = load i64, i64* %18, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i64, i64* %12, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %18, align 8
  %163 = call i64 @comp(i64 %159, i64 %161, i64 %162)
  %164 = load i64*, i64** %10, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %158, %155
  br label %166

166:                                              ; preds = %21, %165, %46
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
