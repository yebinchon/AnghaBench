; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vmlfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %129

20:                                               ; preds = %6
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 77
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 151
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %32, 28
  %34 = add nsw i32 %31, %33
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %11, align 4
  store i32 %35, i32* %10, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %26, %20
  %37 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %129

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @VML_TOHW(i32 %47, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @VML_TOHW(i32 %54, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @VML_TOHW(i32 %61, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VML_TOHW(i32 %68, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %75, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %82, %87
  %89 = or i32 %81, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %90, %95
  %97 = or i32 %89, %96
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %98, %103
  %105 = or i32 %97, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %128 [
    i32 16, label %110
    i32 24, label %119
    i32 32, label %119
  ]

110:                                              ; preds = %46
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %111, i32* %118, align 4
  br label %128

119:                                              ; preds = %46, %46
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %120, i32* %127, align 4
  br label %128

128:                                              ; preds = %46, %119, %110
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %43, %17
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @VML_TOHW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
