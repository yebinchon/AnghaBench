; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_eof_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_eof_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32, i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csi_idmac_eof_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_idmac_eof_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.csi_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.csi_priv*
  store %struct.csi_priv* %7, %struct.csi_priv** %5, align 8
  %8 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %9 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %12 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %17 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %16, i32 0, i32 6
  %18 = call i32 @complete(i32* %17)
  %19 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %20 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %23 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %28 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (...) @ktime_get()
  %31 = call i32 @imx_media_fim_eof_monitor(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %34 = call i32 @csi_vb2_buf_done(%struct.csi_priv* %33)
  %35 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %36 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %39 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ipu_idmac_select_buffer(i32 %37, i32 %40)
  %42 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %43 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %47 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %46, i32 0, i32 3
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %50 = call i64 @msecs_to_jiffies(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @mod_timer(i32* %47, i64 %51)
  br label %53

53:                                               ; preds = %32, %15
  %54 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %55 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @imx_media_fim_eof_monitor(i64, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @csi_vb2_buf_done(%struct.csi_priv*) #1

declare dso_local i32 @ipu_idmac_select_buffer(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
