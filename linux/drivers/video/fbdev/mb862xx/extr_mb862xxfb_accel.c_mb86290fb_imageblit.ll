; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i64, i64 }

@GDC_ROP_COPY = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @mb86290fb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  store i64* null, i64** %6, align 8
  store void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)* null, void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %21 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %24 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %27 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %30 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @GDC_ROP_COPY, align 4
  %33 = shl i32 %32, 9
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %35 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %42 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %45 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %69 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %138 [
    i32 1, label %71
    i32 8, label %120
    i32 16, label %129
  ]

71:                                               ; preds = %2
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 31
  %74 = ashr i32 %73, 5
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 9, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %8, align 8
  store void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit1, void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)** %7, align 8
  %80 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %71
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %86, %71
  %94 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i64*
  %98 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %99 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %9, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i64*
  %107 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %108 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  br label %119

112:                                              ; preds = %86
  %113 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %114 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %9, align 8
  %116 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %117 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %112, %93
  br label %141

120:                                              ; preds = %2
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %11, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 3, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %8, align 8
  store void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit8, void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)** %7, align 8
  br label %141

129:                                              ; preds = %2
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %11, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 3, %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %8, align 8
  store void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)* @mb86290fb_imageblit16, void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)** %7, align 8
  br label %141

138:                                              ; preds = %2
  %139 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %140 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  call void @cfb_imageblit(%struct.fb_info* %139, %struct.fb_image* %140)
  br label %168

141:                                              ; preds = %129, %120, %119
  %142 = load i64, i64* %8, align 8
  %143 = load i32, i32* @GFP_DMA, align 4
  %144 = call i64* @kmalloc_array(i64 %142, i32 4, i32 %143)
  store i64* %144, i64** %6, align 8
  %145 = load i64*, i64** %6, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %149 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  call void @cfb_imageblit(%struct.fb_info* %148, %struct.fb_image* %149)
  br label %168

150:                                              ; preds = %141
  %151 = load void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)*, void (i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*)** %7, align 8
  %152 = load i64*, i64** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %161 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  call void %151(i64* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i64 %158, i64 %159, %struct.fb_image* %160, %struct.fb_info* %161)
  %162 = load i64, i64* %8, align 8
  %163 = load i64*, i64** %6, align 8
  %164 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %165 = call i32 @mb862xxfb_write_fifo(i64 %162, i64* %163, %struct.fb_info* %164)
  %166 = load i64*, i64** %6, align 8
  %167 = call i32 @kfree(i64* %166)
  br label %168

168:                                              ; preds = %150, %147, %138
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local void @mb86290fb_imageblit1(i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*) #1

declare dso_local void @mb86290fb_imageblit8(i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*) #1

declare dso_local void @mb86290fb_imageblit16(i64*, i32, i32, i32, i32, i32, i64, i64, %struct.fb_image*, %struct.fb_info*) #1

declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i64* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @mb862xxfb_write_fifo(i64, i64*, %struct.fb_info*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
