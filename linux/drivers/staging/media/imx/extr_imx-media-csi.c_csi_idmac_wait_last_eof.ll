; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_wait_last_eof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_wait_last_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32, i32, i32, i32 }

@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait last EOF timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*)* @csi_idmac_wait_last_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_idmac_wait_last_eof(%struct.csi_priv* %0) #0 {
  %2 = alloca %struct.csi_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %2, align 8
  %5 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %6 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %12 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i64 %13)
  %15 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %16 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %15, i32 0, i32 2
  %17 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @wait_for_completion_timeout(i32* %16, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %24 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %23, i32 0, i32 1
  %25 = call i32 @v4l2_warn(i32* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
