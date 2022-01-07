; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_unsetup_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_unsetup_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32*, i32, i32, i32, i32, %struct.imx_ic_priv* }
%struct.imx_ic_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prp_priv*)* @prp_unsetup_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prp_unsetup_rotation(%struct.prp_priv* %0) #0 {
  %2 = alloca %struct.prp_priv*, align 8
  %3 = alloca %struct.imx_ic_priv*, align 8
  store %struct.prp_priv* %0, %struct.prp_priv** %2, align 8
  %4 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %5 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %4, i32 0, i32 5
  %6 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  store %struct.imx_ic_priv* %6, %struct.imx_ic_priv** %3, align 8
  %7 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %8 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ipu_ic_task_disable(i32 %9)
  %11 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %12 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ipu_idmac_disable_channel(i32 %13)
  %15 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %16 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipu_idmac_disable_channel(i32 %17)
  %19 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %20 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ipu_idmac_disable_channel(i32 %21)
  %23 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %24 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %27 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ipu_idmac_unlink(i32 %25, i32 %28)
  %30 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %31 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ipu_ic_disable(i32 %32)
  %34 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %35 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %38 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @imx_media_free_dma_buf(i32 %36, i32* %40)
  %42 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %43 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %46 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @imx_media_free_dma_buf(i32 %44, i32* %48)
  ret void
}

declare dso_local i32 @ipu_ic_task_disable(i32) #1

declare dso_local i32 @ipu_idmac_disable_channel(i32) #1

declare dso_local i32 @ipu_idmac_unlink(i32, i32) #1

declare dso_local i32 @ipu_ic_disable(i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
