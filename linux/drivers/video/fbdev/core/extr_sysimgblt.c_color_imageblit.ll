; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysimgblt.c_color_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_sysimgblt.c_color_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_image = type { i64*, i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_image*, %struct.fb_info*, i8*, i32, i32)* @color_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_imageblit(%struct.fb_image* %0, %struct.fb_info* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fb_image*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.fb_image* %0, %struct.fb_image** %6, align 8
  store %struct.fb_info* %1, %struct.fb_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = sub nsw i32 32, %28
  store i32 %29, i32* %19, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %20, align 8
  %34 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %35 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %21, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %12, align 8
  %39 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %40 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %175, %5
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %176

46:                                               ; preds = %42
  %47 = load %struct.fb_image*, %struct.fb_image** %6, align 8
  %48 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @FB_SHIFT_HIGH(%struct.fb_info* %55, i32 -1, i32 %56)
  %58 = xor i32 %57, -1
  store i32 %58, i32* %22, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %22, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %54, %46
  br label %65

65:                                               ; preds = %124, %64
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %17, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %65
  %70 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %76, %69
  %84 = load i32*, i32** %20, align 8
  %85 = load i64*, i64** %21, align 8
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  br label %93

89:                                               ; preds = %76
  %90 = load i64*, i64** %21, align 8
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @FB_LEFT_POS(%struct.fb_info* %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = shl i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @FB_SHIFT_HIGH(%struct.fb_info* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %93
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %122

116:                                              ; preds = %108
  %117 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 32, %119
  %121 = call i32 @FB_SHIFT_LOW(%struct.fb_info* %117, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %116, %115
  %123 = phi i32 [ 0, %115 ], [ %121, %116 ]
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %122, %93
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = and i32 %128, 31
  store i32 %129, i32* %15, align 4
  %130 = load i64*, i64** %21, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %21, align 8
  br label %65

132:                                              ; preds = %65
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @FB_SHIFT_HIGH(%struct.fb_info* %136, i32 -1, i32 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %139
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %135, %132
  %148 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr i8, i8* %152, i64 %153
  store i8* %154, i8** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %147
  %158 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %12, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = ptrtoint i32* %165 to i64
  %167 = and i64 %166, -4
  %168 = inttoptr i64 %167 to i64*
  %169 = bitcast i64* %168 to i8*
  store i8* %169, i8** %8, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = and i32 %173, 31
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %157, %147
  br label %42

176:                                              ; preds = %42
  ret void
}

declare dso_local i32 @FB_SHIFT_HIGH(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @FB_LEFT_POS(%struct.fb_info*, i32) #1

declare dso_local i32 @FB_SHIFT_LOW(%struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
