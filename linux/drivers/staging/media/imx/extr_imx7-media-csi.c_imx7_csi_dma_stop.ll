; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32, i32, i32, i32, i32, i32 }

@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait last EOF timeout\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_dma_stop(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %6 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %7 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %6, i32 0, i32 5
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %11 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %13 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %12, i32 0, i32 5
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %19 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %18, i32 0, i32 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @wait_for_completion_timeout(i32* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %26 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %25, i32 0, i32 3
  %27 = call i32 @v4l2_warn(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %30 = call i32 @imx7_csi_hw_disable_irq(%struct.imx7_csi* %29)
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %32 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %33 = call i32 @imx7_csi_dma_unsetup_vb2_buf(%struct.imx7_csi* %31, i32 %32)
  %34 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %35 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %38 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %37, i32 0, i32 1
  %39 = call i32 @imx_media_free_dma_buf(i32 %36, i32* %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

declare dso_local i32 @imx7_csi_hw_disable_irq(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_dma_unsetup_vb2_buf(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
