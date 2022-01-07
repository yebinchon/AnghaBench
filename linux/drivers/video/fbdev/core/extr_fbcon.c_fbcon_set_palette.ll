; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.vc_data = type { i64, i32* }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@palette_red = common dso_local global i32* null, align 8
@palette_green = common dso_local global i32* null, align 8
@palette_blue = common dso_local global i32* null, align 8
@palette_cmap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8*)* @fbcon_set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_set_palette(%struct.vc_data* %0, i8* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %12 = load i64*, i64** @con2fb_map, align 8
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %11, i64 %17
  %19 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  store %struct.fb_info* %19, %struct.fb_info** %5, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = call i64 @fbcon_is_inactive(%struct.vc_data* %20, %struct.fb_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %109

25:                                               ; preds = %2
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = call i32 @con_is_visible(%struct.vc_data* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %109

30:                                               ; preds = %25
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = call i32 @fb_get_color_depth(i32* %32, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 3
  br i1 %37, label %38, label %101

38:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %97, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %100

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** @palette_red, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** @palette_green, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 %89, 8
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %90, %91
  %93 = load i32*, i32** @palette_blue, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %42
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %39

100:                                              ; preds = %39
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @palette_cmap, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @palette_cmap, i32 0, i32 1), align 8
  br label %106

101:                                              ; preds = %30
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 1, %102
  %104 = call i32 @fb_default_cmap(i32 %103)
  %105 = call i32 @fb_copy_cmap(i32 %104, %struct.TYPE_4__* @palette_cmap)
  br label %106

106:                                              ; preds = %101, %100
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = call i32 @fb_set_cmap(%struct.TYPE_4__* @palette_cmap, %struct.fb_info* %107)
  br label %109

109:                                              ; preds = %106, %29, %24
  ret void
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @fb_get_color_depth(i32*, i32*) #1

declare dso_local i32 @fb_copy_cmap(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fb_default_cmap(i32) #1

declare dso_local i32 @fb_set_cmap(%struct.TYPE_4__*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
