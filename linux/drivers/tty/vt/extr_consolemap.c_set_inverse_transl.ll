; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_set_inverse_transl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_set_inverse_transl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.uni_pagedir = type { i8** }

@translations = common dso_local global i16** null, align 8
@MAX_GLYPH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@E_TABSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.uni_pagedir*, i32)* @set_inverse_transl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_inverse_transl(%struct.vc_data* %0, %struct.uni_pagedir* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.uni_pagedir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.uni_pagedir* %1, %struct.uni_pagedir** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i16**, i16*** @translations, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16*, i16** %11, i64 %13
  %15 = load i16*, i16** %14, align 8
  store i16* %15, i16** %9, align 8
  %16 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %17 = icmp ne %struct.uni_pagedir* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %21 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @MAX_GLYPH, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %30, i32 %31)
  %33 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %34 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %32, i8** %38, align 8
  store i8* %32, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %84

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @MAX_GLYPH, align 4
  %46 = call i32 @memset(i8* %44, i32 0, i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %81, %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @E_TABSZ, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %53 = load i16*, i16** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %53, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = call i32 @conv_uni_to_pc(%struct.vc_data* %52, i16 zeroext %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAX_GLYPH, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %71, 32
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 %75, i8* %79, align 1
  br label %80

80:                                               ; preds = %73, %65, %61, %51
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %47

84:                                               ; preds = %18, %41, %47
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @conv_uni_to_pc(%struct.vc_data*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
