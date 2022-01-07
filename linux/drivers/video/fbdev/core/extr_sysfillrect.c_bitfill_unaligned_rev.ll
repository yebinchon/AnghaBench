; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_unaligned_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysfillrect.c_bitfill_unaligned_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64, i32, i32, i32, i32)* @bitfill_unaligned_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfill_unaligned_rev(%struct.fb_info* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  br label %184

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
  br i1 %38, label %39, label %56

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
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = xor i64 %48, %49
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i64 @comp(i64 %50, i64 %52, i64 %53)
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %184

56:                                               ; preds = %22
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = xor i64 %61, %62
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i64 @comp(i64 %63, i64 %65, i64 %66)
  %68 = load i64*, i64** %10, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = shl i64 %71, %73
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = lshr i64 %75, %77
  %79 = or i64 %74, %78
  store i64 %79, i64* %12, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %15, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %59, %56
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = udiv i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %92, %85
  %90 = load i32, i32* %15, align 4
  %91 = icmp uge i32 %90, 4
  br i1 %91, label %92, label %151

92:                                               ; preds = %89
  %93 = load i64, i64* %12, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %10, align 8
  %96 = load i64, i64* %94, align 8
  %97 = xor i64 %96, %93
  store i64 %97, i64* %94, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 %98, %100
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = lshr i64 %102, %104
  %106 = or i64 %101, %105
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %10, align 8
  %110 = load i64, i64* %108, align 8
  %111 = xor i64 %110, %107
  store i64 %111, i64* %108, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 %112, %114
  %116 = load i64, i64* %12, align 8
  %117 = load i32, i32* %14, align 4
  %118 = zext i32 %117 to i64
  %119 = lshr i64 %116, %118
  %120 = or i64 %115, %119
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64*, i64** %10, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %10, align 8
  %124 = load i64, i64* %122, align 8
  %125 = xor i64 %124, %121
  store i64 %125, i64* %122, align 8
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
  %135 = load i64, i64* %12, align 8
  %136 = load i64*, i64** %10, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %10, align 8
  %138 = load i64, i64* %136, align 8
  %139 = xor i64 %138, %135
  store i64 %139, i64* %136, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = shl i64 %140, %142
  %144 = load i64, i64* %12, align 8
  %145 = load i32, i32* %14, align 4
  %146 = zext i32 %145 to i64
  %147 = lshr i64 %144, %146
  %148 = or i64 %143, %147
  store i64 %148, i64* %12, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sub i32 %149, 4
  store i32 %150, i32* %15, align 4
  br label %89

151:                                              ; preds = %89
  br label %152

152:                                              ; preds = %156, %151
  %153 = load i32, i32* %15, align 4
  %154 = add i32 %153, -1
  store i32 %154, i32* %15, align 4
  %155 = icmp ne i32 %153, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load i64, i64* %12, align 8
  %158 = load i64*, i64** %10, align 8
  %159 = load i64, i64* %158, align 8
  %160 = xor i64 %159, %157
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = zext i32 %162 to i64
  %164 = shl i64 %161, %163
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = lshr i64 %165, %167
  %169 = or i64 %164, %168
  store i64 %169, i64* %12, align 8
  br label %152

170:                                              ; preds = %152
  %171 = load i64, i64* %18, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i64*, i64** %10, align 8
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = xor i64 %175, %176
  %178 = load i64*, i64** %10, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %18, align 8
  %181 = call i64 @comp(i64 %177, i64 %179, i64 %180)
  %182 = load i64*, i64** %10, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %173, %170
  br label %184

184:                                              ; preds = %21, %183, %46
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
