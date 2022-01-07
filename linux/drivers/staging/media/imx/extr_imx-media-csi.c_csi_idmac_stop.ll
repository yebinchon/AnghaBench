; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32, i32, i32, i32, i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*)* @csi_idmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_idmac_stop(%struct.csi_priv* %0) #0 {
  %2 = alloca %struct.csi_priv*, align 8
  store %struct.csi_priv* %0, %struct.csi_priv** %2, align 8
  %3 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %4 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %7 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %10 = call i32 @devm_free_irq(i32 %5, i32 %8, %struct.csi_priv* %9)
  %11 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %12 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %15 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %18 = call i32 @devm_free_irq(i32 %13, i32 %16, %struct.csi_priv* %17)
  %19 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %20 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %21 = call i32 @csi_idmac_unsetup(%struct.csi_priv* %19, i32 %20)
  %22 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %23 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %26 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %25, i32 0, i32 1
  %27 = call i32 @imx_media_free_dma_buf(i32 %24, i32* %26)
  %28 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %29 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %28, i32 0, i32 0
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %32 = call i32 @csi_idmac_put_ipu_resources(%struct.csi_priv* %31)
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i32, %struct.csi_priv*) #1

declare dso_local i32 @csi_idmac_unsetup(%struct.csi_priv*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @csi_idmac_put_ipu_resources(%struct.csi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
