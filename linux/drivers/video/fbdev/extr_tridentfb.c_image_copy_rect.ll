; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_image_copy_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_image_copy_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@ROP_S = common dso_local global i32 0, align 4
@SRC1 = common dso_local global i32 0, align 4
@SRC2 = common dso_local global i32 0, align 4
@DST1 = common dso_local global i32 0, align 4
@DST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i64, i64, i64, i64, i64, i64)* @image_copy_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_copy_rect(%struct.tridentfb_par* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.tridentfb_par*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 4, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @point(i64 %20, i64 %21)
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %13, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %14, align 8
  %29 = add nsw i64 %27, %28
  %30 = sub nsw i64 %29, 1
  %31 = call i64 @point(i64 %26, i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @point(i64 %32, i64 %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add nsw i64 %35, %36
  %38 = sub nsw i64 %37, 1
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @point(i64 %38, i64 %42)
  store i64 %43, i64* %19, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %7
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %7
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %58 = call i32 @writemmr(%struct.tridentfb_par* %57, i32 8480, i32 -2147483648)
  %59 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %60 = load i32, i32* @ROP_S, align 4
  %61 = or i32 -1879048192, %60
  %62 = call i32 @writemmr(%struct.tridentfb_par* %59, i32 8480, i32 %61)
  %63 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %64 = load i32, i32* @SRC1, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %17, align 8
  br label %71

69:                                               ; preds = %56
  %70 = load i64, i64* %16, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  %73 = trunc i64 %72 to i32
  %74 = call i32 @writemmr(%struct.tridentfb_par* %63, i32 %64, i32 %73)
  %75 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %76 = load i32, i32* @SRC2, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i64, i64* %16, align 8
  br label %83

81:                                               ; preds = %71
  %82 = load i64, i64* %17, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  %86 = call i32 @writemmr(%struct.tridentfb_par* %75, i32 %76, i32 %85)
  %87 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %88 = load i32, i32* @DST1, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i64, i64* %19, align 8
  br label %95

93:                                               ; preds = %83
  %94 = load i64, i64* %18, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i64 [ %92, %91 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i32
  %98 = call i32 @writemmr(%struct.tridentfb_par* %87, i32 %88, i32 %97)
  %99 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %100 = load i32, i32* @DST2, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i64, i64* %18, align 8
  br label %107

105:                                              ; preds = %95
  %106 = load i64, i64* %19, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  %109 = trunc i64 %108 to i32
  %110 = call i32 @writemmr(%struct.tridentfb_par* %99, i32 %100, i32 %109)
  %111 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = or i32 -2143288192, %112
  %114 = call i32 @writemmr(%struct.tridentfb_par* %111, i32 8484, i32 %113)
  ret void
}

declare dso_local i64 @point(i64, i64) #1

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
