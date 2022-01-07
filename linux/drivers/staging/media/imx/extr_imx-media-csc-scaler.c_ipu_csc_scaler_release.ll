; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ipu_csc_scaler_priv = type { i32 }
%struct.ipu_csc_scaler_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Releasing instance %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ipu_csc_scaler_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csc_scaler_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.ipu_csc_scaler_priv*, align 8
  %4 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.ipu_csc_scaler_priv* @video_drvdata(%struct.file* %5)
  store %struct.ipu_csc_scaler_priv* %6, %struct.ipu_csc_scaler_priv** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i32 %9)
  store %struct.ipu_csc_scaler_ctx* %10, %struct.ipu_csc_scaler_ctx** %4, align 8
  %11 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %4, align 8
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.ipu_csc_scaler_ctx* %14)
  %16 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l2_m2m_ctx_release(i32 %19)
  %21 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %21, i32 0, i32 0
  %23 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %22)
  %24 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, %struct.ipu_csc_scaler_ctx* %24, i32 0, i32 0
  %26 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %25)
  %27 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %4, align 8
  %28 = call i32 @kfree(%struct.ipu_csc_scaler_ctx* %27)
  ret i32 0
}

declare dso_local %struct.ipu_csc_scaler_priv* @video_drvdata(%struct.file*) #1

declare dso_local %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.ipu_csc_scaler_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.ipu_csc_scaler_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
