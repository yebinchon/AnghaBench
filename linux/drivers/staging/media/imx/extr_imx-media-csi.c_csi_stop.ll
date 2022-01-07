; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i64, i64, i32, i32 }

@IPU_CSI_DEST_IDMAC = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*)* @csi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_stop(%struct.csi_priv* %0) #0 {
  %2 = alloca %struct.csi_priv*, align 8
  store %struct.csi_priv* %0, %struct.csi_priv** %2, align 8
  %3 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %4 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %10 = call i32 @csi_idmac_wait_last_eof(%struct.csi_priv* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %13 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ipu_csi_disable(i32 %14)
  %16 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %17 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @video, align 4
  %20 = load i32, i32* @s_stream, align 4
  %21 = call i32 @v4l2_subdev_call(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %23 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %11
  %28 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %29 = call i32 @csi_idmac_stop(%struct.csi_priv* %28)
  %30 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %31 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %36 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @imx_media_fim_set_stream(i64 %37, i32* null, i32 0)
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @csi_idmac_wait_last_eof(%struct.csi_priv*) #1

declare dso_local i32 @ipu_csi_disable(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @csi_idmac_stop(%struct.csi_priv*) #1

declare dso_local i32 @imx_media_fim_set_stream(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
