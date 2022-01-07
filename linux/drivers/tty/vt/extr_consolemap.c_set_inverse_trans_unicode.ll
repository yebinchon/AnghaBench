; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_set_inverse_trans_unicode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_set_inverse_trans_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.uni_pagedir = type { i32*, i32*** }

@MAX_GLYPH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.uni_pagedir*)* @set_inverse_trans_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_inverse_trans_unicode(%struct.vc_data* %0, %struct.uni_pagedir* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.uni_pagedir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.uni_pagedir* %1, %struct.uni_pagedir** %4, align 8
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %13 = icmp ne %struct.uni_pagedir* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %112

15:                                               ; preds = %2
  %16 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %17 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @MAX_GLYPH, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc_array(i32 %22, i32 4, i32 %23)
  %25 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %26 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  store i32* %24, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %112

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @MAX_GLYPH, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32* %32, i32 0, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %109, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %112

41:                                               ; preds = %38
  %42 = load %struct.uni_pagedir*, %struct.uni_pagedir** %4, align 8
  %43 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %42, i32 0, i32 1
  %44 = load i32***, i32**** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  store i32** %48, i32*** %9, align 8
  %49 = load i32**, i32*** %9, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %109

52:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %105, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 32
  br i1 %55, label %56, label %108

56:                                               ; preds = %53
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %105

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MAX_GLYPH, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %89, 11
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 6
  %93 = add nsw i32 %90, %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %88, %81, %77, %69
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %66

104:                                              ; preds = %66
  br label %105

105:                                              ; preds = %104, %64
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %53

108:                                              ; preds = %53
  br label %109

109:                                              ; preds = %108, %51
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %38

112:                                              ; preds = %14, %29, %38
  ret void
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
