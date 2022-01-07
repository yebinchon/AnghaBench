; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_unsetup_vb2_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_unsetup_vb2_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { %struct.imx_media_buffer** }
%struct.imx_media_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*, i32)* @csi_idmac_unsetup_vb2_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_idmac_unsetup_vb2_buf(%struct.csi_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_media_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_buffer*, align 8
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %13 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %12, i32 0, i32 0
  %14 = load %struct.imx_media_buffer**, %struct.imx_media_buffer*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.imx_media_buffer*, %struct.imx_media_buffer** %14, i64 %16
  %18 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %17, align 8
  store %struct.imx_media_buffer* %18, %struct.imx_media_buffer** %5, align 8
  %19 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %20 = icmp ne %struct.imx_media_buffer* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %11
  %22 = load %struct.imx_media_buffer*, %struct.imx_media_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.imx_media_buffer, %struct.imx_media_buffer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.vb2_buffer* %24, %struct.vb2_buffer** %7, align 8
  %25 = call i32 (...) @ktime_get_ns()
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
