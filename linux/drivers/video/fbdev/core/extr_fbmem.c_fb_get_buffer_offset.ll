; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_get_buffer_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_get_buffer_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*)* }
%struct.fb_pixmap = type { i64, i8*, i32, i64, i64 }

@FB_PIXMAP_IO = common dso_local global i32 0, align 4
@FB_PIXMAP_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fb_get_buffer_offset(%struct.fb_info* %0, %struct.fb_pixmap* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_pixmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %struct.fb_pixmap* %1, %struct.fb_pixmap** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %12 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* %8, align 8
  %15 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %16 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %19 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FB_PIXMAP_IO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %28, align 8
  %30 = icmp ne i32 (%struct.fb_info*)* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %33 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FB_PIXMAP_SYNC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %42, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = call i32 %43(%struct.fb_info* %44)
  br label %46

46:                                               ; preds = %38, %31, %24
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %4, align 8
  br label %98

48:                                               ; preds = %3
  %49 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %50 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %62 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %48
  %66 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %69, align 8
  %71 = icmp ne i32 (%struct.fb_info*)* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %74 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FB_PIXMAP_SYNC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %83, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %86 = call i32 %84(%struct.fb_info* %85)
  br label %87

87:                                               ; preds = %79, %72, %65
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.fb_pixmap*, %struct.fb_pixmap** %6, align 8
  %93 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %88, %46
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
