; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_insert_unipair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_insert_unipair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32***, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_pagedir*, i32, i32)* @con_insert_unipair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_insert_unipair(%struct.uni_pagedir* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_pagedir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  store %struct.uni_pagedir* %0, %struct.uni_pagedir** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %13 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %12, i32 0, i32 0
  %14 = load i32***, i32**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 11
  store i32 %16, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32**, i32*** %14, i64 %17
  %19 = load i32**, i32*** %18, align 8
  store i32** %19, i32*** %10, align 8
  %20 = load i32**, i32*** %10, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc_array(i32 32, i32 8, i32 %23)
  %25 = bitcast i8* %24 to i32**
  %26 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %27 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %26, i32 0, i32 0
  %28 = load i32***, i32**** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32**, i32*** %28, i64 %30
  store i32** %25, i32*** %31, align 8
  store i32** %25, i32*** %10, align 8
  %32 = load i32**, i32*** %10, align 8
  %33 = icmp ne i32** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %91

37:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32**, i32*** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %38

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32**, i32*** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 6
  %54 = and i32 %53, 31
  store i32 %54, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %51, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kmalloc_array(i32 64, i32 4, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load i32**, i32*** %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %63, i32** %67, align 8
  store i32* %63, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %91

73:                                               ; preds = %60
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @memset(i32* %74, i32 255, i32 256)
  br label %76

76:                                               ; preds = %73, %50
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 63
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 20
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %88 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %76, %70, %34
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
