; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_prepare_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_prepare_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@CEDRUS_MIN_WIDTH = common dso_local global i32 0, align 4
@CEDRUS_MAX_WIDTH = common dso_local global i32 0, align 4
@CEDRUS_MIN_HEIGHT = common dso_local global i32 0, align 4
@CEDRUS_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format*)* @cedrus_prepare_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_prepare_format(%struct.v4l2_pix_format* %0) #0 {
  %2 = alloca %struct.v4l2_pix_format*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %2, align 8
  %7 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CEDRUS_MIN_WIDTH, align 4
  %24 = load i32, i32* @CEDRUS_MAX_WIDTH, align 4
  %25 = call i32 @clamp(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CEDRUS_MIN_HEIGHT, align 4
  %28 = load i32, i32* @CEDRUS_MAX_HEIGHT, align 4
  %29 = call i32 @clamp(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %62 [
    i32 130, label %33
    i32 131, label %33
    i32 128, label %34
    i32 129, label %48
  ]

33:                                               ; preds = %1, %1
  store i32 0, i32* %6, align 4
  br label %62

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ALIGN(i32 %35, i32 32)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 32)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = mul i32 %42, %43
  %45 = udiv i32 %44, 2
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @ALIGN(i32 %49, i32 16)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ALIGN(i32 %51, i32 16)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = mul i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul i32 %56, %57
  %59 = udiv i32 %58, 2
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %1, %48, %34, %33
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
