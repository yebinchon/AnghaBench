; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.cedrus_ctx = type { %struct.v4l2_pix_format, %struct.v4l2_pix_format, %struct.cedrus_dev* }
%struct.v4l2_pix_format = type { i32, i32 }
%struct.cedrus_dev = type { i32 }

@CEDRUS_DECODE_SRC = common dso_local global i32 0, align 4
@CEDRUS_DECODE_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @cedrus_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.cedrus_ctx*, align 8
  %13 = alloca %struct.cedrus_dev*, align 8
  %14 = alloca %struct.v4l2_pix_format*, align 8
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.cedrus_ctx* %17, %struct.cedrus_ctx** %12, align 8
  %18 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %18, i32 0, i32 2
  %20 = load %struct.cedrus_dev*, %struct.cedrus_dev** %19, align 8
  store %struct.cedrus_dev* %20, %struct.cedrus_dev** %13, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @CEDRUS_DECODE_SRC, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %12, align 8
  %29 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %28, i32 0, i32 1
  store %struct.v4l2_pix_format* %29, %struct.v4l2_pix_format** %14, align 8
  br label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @CEDRUS_DECODE_DST, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %12, align 8
  %33 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %32, i32 0, i32 0
  store %struct.v4l2_pix_format* %33, %struct.v4l2_pix_format** %14, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %14, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.cedrus_dev*, %struct.cedrus_dev** %13, align 8
  %40 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cedrus_check_format(i32 %37, i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %71

47:                                               ; preds = %34
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %14, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %51
  br label %70

63:                                               ; preds = %47
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %14, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %62
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %59, %44
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @cedrus_check_format(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
