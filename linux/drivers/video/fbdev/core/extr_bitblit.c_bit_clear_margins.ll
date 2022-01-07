; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_clear_margins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32)* @bit_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fb_fillrect, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.fb_info* %1, %struct.fb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %30, %31
  %33 = sub i32 %27, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul i32 %40, %41
  %43 = sub i32 %37, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @ROP_COPY, align 4
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %62
  %66 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 4
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %85, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %88 = call i32 %86(%struct.fb_info* %87, %struct.fb_fillrect* %15)
  br label %89

89:                                               ; preds = %65, %62, %4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 4
  store i64 %96, i64* %97, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 3
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %113, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %116 = call i32 %114(%struct.fb_info* %115, %struct.fb_fillrect* %15)
  br label %117

117:                                              ; preds = %92, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
