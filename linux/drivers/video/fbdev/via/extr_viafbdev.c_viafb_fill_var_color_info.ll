; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_fill_var_color_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_fill_var_color_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, i32)* @viafb_fill_var_color_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viafb_fill_var_color_info(%struct.fb_var_screeninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %133 [
    i32 8, label %28
    i32 15, label %49
    i32 16, label %70
    i32 24, label %91
    i32 30, label %112
  ]

28:                                               ; preds = %2
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 0
  store i32 8, i32* %30, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 8, i32* %42, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 8, i32* %45, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  br label %133

49:                                               ; preds = %2
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 10, i32* %54, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 5, i32* %57, align 8
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 5, i32* %63, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 5, i32* %66, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 5, i32* %69, align 8
  br label %133

70:                                               ; preds = %2
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 0
  store i32 16, i32* %72, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 11, i32* %75, align 8
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 5, i32* %78, align 8
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 5, i32* %84, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 6, i32* %87, align 4
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 5, i32* %90, align 8
  br label %133

91:                                               ; preds = %2
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 0
  store i32 32, i32* %93, align 8
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 16, i32* %96, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 8, i32* %99, align 8
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 8, i32* %105, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 8, i32* %108, align 4
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 8, i32* %111, align 8
  br label %133

112:                                              ; preds = %2
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 0
  store i32 32, i32* %114, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 20, i32* %117, align 8
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 10, i32* %120, align 8
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 10, i32* %126, align 4
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 10, i32* %129, align 4
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 10, i32* %132, align 8
  br label %133

133:                                              ; preds = %2, %112, %91, %70, %49, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
