; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.ipu_csc_scaler_priv = type { i32, i32 }
%struct.ipu_csc_scaler_ctx = type { %struct.TYPE_5__, i8**, i32, %struct.ipu_csc_scaler_priv*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPU_ROTATE_NONE = common dso_local global i32 0, align 4
@ipu_csc_scaler_queue_init = common dso_local global i32 0, align 4
@ipu_csc_scaler_q_data_default = common dso_local global i8* null, align 8
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Created instance %p, m2m_ctx: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ipu_csc_scaler_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csc_scaler_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.ipu_csc_scaler_priv*, align 8
  %5 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.ipu_csc_scaler_priv* @video_drvdata(%struct.file* %7)
  store %struct.ipu_csc_scaler_priv* %8, %struct.ipu_csc_scaler_priv** %4, align 8
  store %struct.ipu_csc_scaler_ctx* null, %struct.ipu_csc_scaler_ctx** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ipu_csc_scaler_ctx* @kzalloc(i32 48, i32 %9)
  store %struct.ipu_csc_scaler_ctx* %10, %struct.ipu_csc_scaler_ctx** %5, align 8
  %11 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %12 = icmp ne %struct.ipu_csc_scaler_ctx* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %104

16:                                               ; preds = %1
  %17 = load i32, i32* @IPU_ROTATE_NONE, align 4
  %18 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %20, i32 0, i32 0
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = call i32 @video_devdata(%struct.file* %22)
  %24 = call i32 @v4l2_fh_init(%struct.TYPE_5__* %21, i32 %23)
  %25 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %25, i32 0, i32 0
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %29, i32 0, i32 0
  %31 = call i32 @v4l2_fh_add(%struct.TYPE_5__* %30)
  %32 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %33 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %33, i32 0, i32 3
  store %struct.ipu_csc_scaler_priv* %32, %struct.ipu_csc_scaler_priv** %34, align 8
  %35 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %39 = call i32 @v4l2_m2m_ctx_init(i32 %37, %struct.ipu_csc_scaler_ctx* %38, i32* @ipu_csc_scaler_queue_init)
  %40 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %16
  %50 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %94

55:                                               ; preds = %16
  %56 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %57 = call i32 @ipu_csc_scaler_init_controls(%struct.ipu_csc_scaler_ctx* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %88

61:                                               ; preds = %55
  %62 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %62, i32 0, i32 2
  %64 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* %63, i32** %66, align 8
  %67 = load i8*, i8** @ipu_csc_scaler_q_data_default, align 8
  %68 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @V4L2_M2M_SRC, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = load i8*, i8** @ipu_csc_scaler_q_data_default, align 8
  %74 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @V4L2_M2M_DST, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %83 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.ipu_csc_scaler_ctx* %82, i32 %86)
  store i32 0, i32* %2, align 4
  br label %104

88:                                               ; preds = %60
  %89 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @v4l2_m2m_ctx_release(i32 %92)
  br label %94

94:                                               ; preds = %88, %49
  %95 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %95, i32 0, i32 0
  %97 = call i32 @v4l2_fh_del(%struct.TYPE_5__* %96)
  %98 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %98, i32 0, i32 0
  %100 = call i32 @v4l2_fh_exit(%struct.TYPE_5__* %99)
  %101 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %5, align 8
  %102 = call i32 @kfree(%struct.ipu_csc_scaler_ctx* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %94, %61, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ipu_csc_scaler_priv* @video_drvdata(%struct.file*) #1

declare dso_local %struct.ipu_csc_scaler_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.ipu_csc_scaler_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ipu_csc_scaler_init_controls(%struct.ipu_csc_scaler_ctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.ipu_csc_scaler_ctx*, i32) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ipu_csc_scaler_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
