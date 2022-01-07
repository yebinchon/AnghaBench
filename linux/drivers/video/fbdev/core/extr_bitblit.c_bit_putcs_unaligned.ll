; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_putcs_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_putcs_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.fb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*)* @bit_putcs_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_putcs_unaligned(%struct.vc_data* %0, %struct.fb_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.vc_data*, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fb_image*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %12, align 8
  store %struct.fb_info* %1, %struct.fb_info** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.fb_image* %8, %struct.fb_image** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 511, i32 255
  store i32 %34, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %35 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 8
  store i32 %39, i32* %25, align 4
  store i32 8, i32* %26, align 4
  %40 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %27, align 4
  br label %45

45:                                               ; preds = %95, %11
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %16, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %14, align 8
  %56 = ptrtoint i32* %54 to i32
  %57 = call i32 @scr_readw(i32 %56)
  %58 = load i32, i32* %23, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %19, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %53, i64 %62
  store i32* %63, i32** %28, align 8
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %49
  %67 = load i32*, i32** %21, align 8
  %68 = load i32*, i32** %28, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %71 = call i32 @update_attr(i32* %67, i32* %68, i32 %69, %struct.vc_data* %70)
  %72 = load i32*, i32** %21, align 8
  store i32* %72, i32** %28, align 8
  br label %73

73:                                               ; preds = %66, %49
  %74 = load i32*, i32** %22, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32*, i32** %28, align 8
  %77 = load i32, i32* %27, align 4
  %78 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %79 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %26, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %25, align 4
  %84 = call i32 @fb_pad_unaligned_buffer(i32* %74, i32 %75, i32* %76, i32 %77, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %24, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp sge i32 %88, 8
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* %18, align 4
  br label %95

92:                                               ; preds = %73
  %93 = load i32, i32* %18, align 4
  %94 = sub nsw i32 %93, 1
  br label %95

95:                                               ; preds = %92, %90
  %96 = phi i32 [ %91, %90 ], [ %94, %92 ]
  %97 = load i32*, i32** %22, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %22, align 8
  %100 = load i32, i32* %24, align 4
  %101 = and i32 %100, 7
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = sub nsw i32 8, %102
  store i32 %103, i32* %26, align 4
  br label %45

104:                                              ; preds = %45
  %105 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %108, align 8
  %110 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %111 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %112 = call i32 %109(%struct.fb_info* %110, %struct.fb_image* %111)
  ret void
}

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @update_attr(i32*, i32*, i32, %struct.vc_data*) #1

declare dso_local i32 @fb_pad_unaligned_buffer(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
