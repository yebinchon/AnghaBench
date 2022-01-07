; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_alloc_cmap_gfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcmap.c_fb_alloc_cmap_gfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32, i64, i32*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_alloc_cmap_gfp(%struct.fb_cmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_cmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @__GFP_NOWARN, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %22 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %4
  %27 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %28 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %103

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  %36 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %37 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %39 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %99

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  %47 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %48 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %50 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %99

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @kmalloc(i32 %55, i32 %56)
  %58 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %59 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %61 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %99

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i8* @kmalloc(i32 %69, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %74 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %76 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %99

80:                                               ; preds = %68
  br label %84

81:                                               ; preds = %65
  %82 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %83 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %81, %80
  br label %85

85:                                               ; preds = %84, %4
  %86 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %87 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %90 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @fb_default_cmap(i32 %91)
  %93 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %94 = call i32 @fb_copy_cmap(i32 %92, %struct.fb_cmap* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %99

98:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %103

99:                                               ; preds = %97, %79, %64, %53, %42
  %100 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %101 = call i32 @fb_dealloc_cmap(%struct.fb_cmap* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %98, %31
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @fb_dealloc_cmap(%struct.fb_cmap*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @fb_copy_cmap(i32, %struct.fb_cmap*) #1

declare dso_local i32 @fb_default_cmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
