; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_putcs_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_bitblit.c_bit_putcs_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.fb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*)* @bit_putcs_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_putcs_aligned(%struct.vc_data* %0, %struct.fb_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, i32* %9, i32* %10) #0 {
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
  %25 = alloca i32*, align 8
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
  %26 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 511, i32 255
  store i32 %31, i32* %23, align 4
  %32 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %24, align 4
  br label %37

37:                                               ; preds = %89, %11
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %16, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %14, align 8
  %48 = ptrtoint i32* %46 to i32
  %49 = call i32 @scr_readw(i32 %48)
  %50 = load i32, i32* %23, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %19, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %45, i64 %54
  store i32* %55, i32** %25, align 8
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %41
  %59 = load i32*, i32** %21, align 8
  %60 = load i32*, i32** %25, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %63 = call i32 @update_attr(i32* %59, i32* %60, i32 %61, %struct.vc_data* %62)
  %64 = load i32*, i32** %21, align 8
  store i32* %64, i32** %25, align 8
  br label %65

65:                                               ; preds = %58, %41
  %66 = load i32, i32* %24, align 4
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32*, i32** %22, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32*, i32** %25, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %77 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__fb_pad_aligned_buffer(i32* %72, i32 %73, i32* %74, i32 %75, i32 %78)
  br label %89

80:                                               ; preds = %65
  %81 = load i32*, i32** %22, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32*, i32** %25, align 8
  %84 = load i32, i32* %24, align 4
  %85 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %86 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fb_pad_aligned_buffer(i32* %81, i32 %82, i32* %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %71
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %22, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %22, align 8
  br label %37

94:                                               ; preds = %37
  %95 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %98, align 8
  %100 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %101 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %102 = call i32 %99(%struct.fb_info* %100, %struct.fb_image* %101)
  ret void
}

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @update_attr(i32*, i32*, i32, %struct.vc_data*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
